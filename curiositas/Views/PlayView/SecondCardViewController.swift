//
//  SecondCardViewController.swift
//  curiositas
//
//  Created by michellyes on 21/09/22.
//

import UIKit

class SecondCardViewController: UIViewController {
    
    let questionView = AnotherCardView()

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func viewDidAppear(_ animated: Bool) {
        view = questionView
        view.backgroundColor = UIColor(red: 0.13, green: 0.08, blue: 0.30, alpha: 1.00)
        addCard(offset: 60, dataForVC: nil)
    }
    
    func createCard(offset: CGFloat) -> UIView {
        let cardHeight = self.view.safeAreaLayoutGuide.layoutFrame.height - 90
        let cardFrame = CGRect(x: 0, y: 0, width: self.view.frame.width - 60, height: cardHeight).offsetBy(dx: 30, dy: 60)
        
        let card = CardTeamTwo(frame: cardFrame, isCardDone: false)
        card.layer.cornerRadius = 32
        card.center = view.center
        card.frame = card.frame.offsetBy(dx: 0, dy: 30)
        card.layer.masksToBounds = false
        card.layer.shadowColor = UIColor.black.cgColor
        card.layer.shadowOpacity = 0.35
        card.layer.shadowRadius = 16
        card.layer.shadowOffset = CGSize(width: 0, height: -4)
        card.isUserInteractionEnabled = true
        card.layer.shadowPath = UIBezierPath(rect: card.bounds).cgPath
        card.playButton.addTarget(self, action: #selector(didUserTapPlayButton), for: .touchUpInside)
        card.closeButton.addTarget(self, action: #selector(didUserTapCloseButton), for: .touchUpInside)

        return card
    }
    
    @objc func didUserTapPlayButton(card: UIView) {
        let playView = PlayViewController()
        navigationController?.pushViewController(playView, animated: false)
    }
    
    @objc func didUserTapCloseButton() {
        let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController]
        self.navigationController!.popToViewController(viewControllers[viewControllers.count - 3], animated: false)
    }
    
    func addCard(offset: CGFloat, dataForVC: AnyObject?) -> UIView {
        let card = createCard(offset: offset)
        self.view.addSubview(card)
        return card
    }

}
