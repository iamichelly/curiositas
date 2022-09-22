//
//  CardStackViewController.swift
//  curiositas
//
//  Created by lrsv on 14/09/22.
//

import UIKit

class CardStackViewController: UIViewController, UICollisionBehaviorDelegate {
    var views = [UIView]()
    var animator:UIDynamicAnimator!
    var gravity:UIGravityBehavior!
    var snap:UISnapBehavior!
    var previousTouchPoint:CGPoint!
    var viewDragging = false
    var viewPinned = false
    let cardStackView = CardStackView()
    private var theme: Theme?
    
    init(with theme: Theme){
        super.init(nibName: nil, bundle: nil)
        self.theme = theme
        cardStackView.titleLabel.text = theme.theme
        cardStackView.questionButton.delegate = self
        cardStackView.backButton.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.tintColor = UIColor.white

        view = cardStackView
        view.backgroundColor = UIColor(red: 0.13, green: 0.08, blue: 0.30, alpha: 1.00)
        
        animator = UIDynamicAnimator(referenceView: self.view)
        gravity = UIGravityBehavior()
         
        animator.addBehavior(gravity)
        gravity.magnitude = 4
    }
    
    func createCard(offset: CGFloat, cardNumber: Int) -> UIView {
        let cardHeight = self.view.safeAreaLayoutGuide.layoutFrame.height - 90
        let cardFrame = CGRect(x: 0, y: 0, width: self.view.frame.width - 60, height: cardHeight).offsetBy(dx: 30, dy: self.view.bounds.size.height - offset)
        
        let card = CardView(frame: cardFrame, cardNumber: cardNumber, isCardDone: true)
        card.layer.cornerRadius = 32
        card.layer.masksToBounds = false
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.35
        card.layer.shadowRadius = 16
        card.layer.shadowOffset = CGSize(width: 0, height: -4)
        card.isUserInteractionEnabled = true
        card.layer.shadowPath = UIBezierPath(rect: card.bounds).cgPath
        
        card.closeButton.addTarget(self, action: #selector(didUserTapCloseButton), for: .touchUpInside)
        
        card.playButton.addTarget(self, action: #selector(didUserTapPlayButton), for: .touchUpInside)
        return card
    }
    

    
    @objc func didUserTapPlayButton(card: UIView) {
        guard let superview = card.superview?.superview?.superview?.superview else { return }
        closeCard(cardview: superview)
        let playView = PlayViewController()
        navigationController?.pushViewController(playView, animated: false)
    }
    
    @objc func didUserTapCloseButton(card: UIView) {
        guard let superview = card.superview?.superview?.superview?.superview else { return }
        closeCard(cardview: superview)
    }
    
    func addCard(offset: CGFloat, cardNumber: Int) -> UIView {
        let card = createCard(offset: offset, cardNumber: cardNumber)
        self.view.addSubview(card)
        
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePan(gestureRecognizer:)))
        card.addGestureRecognizer(panGestureRecognizer)
        
        let collision = UICollisionBehavior(items: [card])
        collision.collisionDelegate = self
        animator.addBehavior(collision)
        
        let boundary = card.frame.origin.y + card.frame.size.height
        
        // lower boundary
        var boundaryStart = CGPoint(x: 30, y: boundary)
        var boundaryEnd = CGPoint(x: self.view.bounds.size.width - 30, y: boundary)
        collision.addBoundary(withIdentifier: 1 as NSCopying, from: boundaryStart, to: boundaryEnd)
        
        // upper boundary
        boundaryStart = CGPoint(x: 30, y: 0)
        boundaryEnd = CGPoint(x: self.view.bounds.size.width - 30, y: self.view.safeAreaInsets.top)
        collision.addBoundary(withIdentifier: 2 as NSCopying, from: boundaryStart, to: boundaryEnd)
        
        gravity.addItem(card)
        
        let itemBehaviour = UIDynamicItemBehavior(items: [card])
        animator.addBehavior(itemBehaviour)
        
        return card
    }
    
    
    @objc func handlePan(gestureRecognizer: UIPanGestureRecognizer) {
        let touchPoint = gestureRecognizer.location(in: self.view)
        let draggedCard = gestureRecognizer.view!
        
        if gestureRecognizer.state == .began {
            let dragStartPoint = gestureRecognizer.location(in: draggedCard)
            let cardHeight = self.view.safeAreaLayoutGuide.layoutFrame.height - 90
            if  dragStartPoint.y <= (cardHeight - 350) {
                viewDragging = true
                previousTouchPoint = touchPoint
            }
            
        } else if gestureRecognizer.state == .changed && viewDragging {
            let yOffset = previousTouchPoint.y - touchPoint.y
            draggedCard.center = CGPoint(x: draggedCard.center.x, y: draggedCard.center.y - yOffset)
            previousTouchPoint = touchPoint
            
        } else if gestureRecognizer.state == .ended && viewDragging {
            pinCard(cardview: draggedCard)
            addVelocity(cardView: draggedCard, panGesture: gestureRecognizer)
            animator.updateItem(usingCurrentState:  draggedCard)
            viewDragging = false
        }
    }
    
    func pinCard(cardview: UIView) {
        let viewHasReachedPinLocation = cardview.frame.origin.y < self.view.safeAreaLayoutGuide.layoutFrame.height * 0.3
        if viewHasReachedPinLocation {
            if !viewPinned {
                cardStackView.backButton.isHidden = true
                cardStackView.titleLabel.isHidden = true
                var snapPosition = self.view.center
                snapPosition.y += 30
                snap = UISnapBehavior(item: cardview, snapTo: snapPosition)
                animator.addBehavior(snap)
                setCardVisibility(cardView: cardview, alpha: 0)
                viewPinned = true
            }
        } else {
            if viewPinned {
                animator.removeBehavior(snap)
                setCardVisibility(cardView: cardview, alpha: 1)
                viewPinned = false
            }
        }
    }
    
    func closeCard(cardview: UIView) {
        animator.removeBehavior(snap)
        setCardVisibility(cardView: cardview, alpha: 1)
        viewPinned = false
        cardStackView.backButton.isHidden = false
        cardStackView.titleLabel.isHidden = false
    }
    
    func setCardVisibility(cardView: UIView, alpha: CGFloat) {
        for currentCardView in views {
            if currentCardView != cardView {
                currentCardView.alpha = alpha
            }
        }
    }
    
    func addVelocity(cardView: UIView, panGesture: UIPanGestureRecognizer) {
        var velocity = panGesture.velocity(in: self.view)
        velocity.x = 0
        if let behavior = getItemBehavior(cardView: cardView) {
            behavior.addLinearVelocity(velocity, for: cardView)
        }
    }
    
    func getItemBehavior(cardView: UIView) -> UIDynamicItemBehavior? {
        for behavior in animator.behaviors {
            if let itemBehavior = behavior as? UIDynamicItemBehavior {
                if let possibleView = itemBehavior.items.first as? UIView, possibleView == cardView {
                    return itemBehavior
                }
            }
        }
        return nil
    }
    
    func collisionBehavior(_ behavior: UICollisionBehavior, endedContactFor item: UIDynamicItem, withBoundaryIdentifier identifier: NSCopying?) {
        if NSNumber(integerLiteral: 2).isEqual(to: identifier as! NSNumber) {
            let cardView = item as! UIView
            pinCard(cardview: cardView)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        var offset: CGFloat = 350
        for i in 0 ... 2 {
            let cardview = addCard(offset: offset, cardNumber: i+1)
            views.append(cardview)
            offset -= 50
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)

    }
    
}

extension CardStackViewController: SFSymbolsButtonDelegate {
    func didUserTapButton(button: SFSymbolsButton) {
        if button == cardStackView.backButton {
            navigationController?.popViewController(animated: true)
            return
        }
        let instructionView = InstructionViewController()
        navigationController?.pushViewController(instructionView, animated: true)
    }

}
