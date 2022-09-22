//
//  FirstCardViewController.swift
//  curiositas
//
//  Created by michellyes on 21/09/22.
//

import UIKit

class FirstCardViewController: UIViewController {

    let questionView = AnotherCardView()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        view = questionView
        view.backgroundColor = UIColor(red: 0.13, green: 0.08, blue: 0.30, alpha: 1.00)
        addCard(offset: 60, dataForVC: nil)
        questionView.questionButton.addTarget(self, action: #selector(didUserTapQuestionButton), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    func createCard(offset: CGFloat) -> UIView {
        let cardHeight = self.view.safeAreaLayoutGuide.layoutFrame.height - 90
        let cardFrame = CGRect(x: 0, y: 0, width: self.view.frame.width - 60, height: cardHeight).offsetBy(dx: 30, dy: 60)
        
        let card = CardTeamOne(frame: cardFrame, isCardDone: false)
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

        let playView = SecondCardViewController()
        navigationController?.pushViewController(playView, animated: false)
    }
    
    @objc func didUserTapQuestionButton(card: UIView) {

        let playView = InstructionViewController()
        navigationController?.pushViewController(playView, animated: false)
    }
    
    @objc func didUserTapCloseButton(card: UIView) {
        navigationController?.popViewController(animated: false)
    }
    
    
    func addCard(offset: CGFloat, dataForVC: AnyObject?) -> UIView {
        let card = createCard(offset: offset)
        self.view.addSubview(card)
        return card
    }
    
}

extension FirstCardViewController: SFSymbolsButtonDelegate {
    func didUserTapButton(button: SFSymbolsButton) {
        navigationController?.popViewController(animated: false)
    }
    
 

}
