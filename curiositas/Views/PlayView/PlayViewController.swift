//
//  PlayViewController.swift
//  curiositas
//
//  Created by alexdamascena on 13/09/22.
//

import UIKit

class PlayViewController: UIViewController {
    
    let card = CardGame()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.13, green: 0.08, blue: 0.30, alpha: 1.00)
        card.delegate = self
        addSubviews()
    }
    
    func addSubviews(){
        self.view.addSubview(card)
        setupConstraints()
        card.backgroundColor =  UIColor(red: 0.46, green: 0.45, blue: 0.90, alpha: 1.00)
        card.topCardGameContainer.closeButton.addTarget(self, action: #selector(didUserTapCloseButton), for: .touchUpInside)
    }
    
    private func setupConstraints(){
        
        card.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
//            card.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            card.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            card.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            card.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30),
            card.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 70),
            card.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
//            card.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),

//            card.heightAnchor.constraint(equalToConstant: 450.VAdapted),
//            card.widthAnchor.constraint(equalToConstant: 280.HAdapted)
        ])
    }
        @objc func didUserTapCloseButton() {
            navigationController?.popViewController(animated: false)
        }
}

extension PlayViewController: CheckboxDelegate {
    
    func didUserTapCheckbox() {
        print("oi")
    }
    
   
}


