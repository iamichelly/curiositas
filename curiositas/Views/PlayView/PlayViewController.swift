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
        view.backgroundColor = .red
        addSubviews()
    }
    
    @objc func didTapCheckBox(){
        print("oi")
    }

    func addSubviews(){
        self.view.addSubview(card)
        setupConstraints()
        card.backgroundColor = .purple
    }
    

    private func setupConstraints(){
        
        card.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            card.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            card.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            card.heightAnchor.constraint(equalToConstant: 450.VAdapted),
            card.widthAnchor.constraint(equalToConstant: 280.HAdapted)
        ])
    }
}


