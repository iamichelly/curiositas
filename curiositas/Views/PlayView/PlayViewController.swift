//
//  PlayViewController.swift
//  curiositas
//
//  Created by alexdamascena on 13/09/22.
//

import UIKit

class PlayViewController: UIViewController {
    
    let card = CardGame()
    let questionView = AnotherCardView()
    
    let popUp: Popup = {
        let popup = Popup()
        let model = PopupViewModel(type: .questions)
        popup.configure(with: model)
        return popup
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = questionView
        view.backgroundColor = UIColor(red: 0.13, green: 0.08, blue: 0.30, alpha: 1.00)
        card.delegate = self
        questionView.questionButton.addTarget(self, action: #selector(didUserTapQuestionButton), for: .touchUpInside)
        addSubviews()
        popUp.openPopup()
    }
    
    func addSubviews(){
        self.view.addSubview(card)
        setupConstraints()
        card.backgroundColor =  UIColor(red: 0.46, green: 0.45, blue: 0.90, alpha: 1.00)
        card.topCardGameContainer.closeButton.addTarget(self, action: #selector(didUserTapCloseButton), for: .touchUpInside)
        self.view.addSubview(popUp)
        popUp.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            popUp.topAnchor.constraint(equalTo: self.view.topAnchor),
            popUp.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            popUp.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            popUp.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)

    }
    private func setupConstraints(){
        
        card.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            card.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            card.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30),
            card.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 70),
            card.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])

    }
        @objc func didUserTapCloseButton() {
            let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController]
            self.navigationController!.popToViewController(viewControllers[viewControllers.count - 4], animated: false)
        }
    
    @objc func didUserTapQuestionButton(card: UIView) {
        let playView = InstructionViewController()
        navigationController?.pushViewController(playView, animated: false)
    }
    
}

extension PlayViewController: CheckboxDelegate {
    
    func didUserTapCheckbox() {
        print("oi")
    }
    
   
}
