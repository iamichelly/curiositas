//
//  CardGame+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

extension CardGame: AnyView {
    
    func addSubviews() {
        self.addSubview(cardStack)
        
        cardStack.addArrangedSubview(topCardGameContainer)
        cardStack.addArrangedSubview(bottomCardGameContainer)
    }
    
    func setupConstraints() {
                
        cardStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardStack.topAnchor.constraint(equalTo: topAnchor),
            cardStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            cardStack.trailingAnchor.constraint(equalTo: trailingAnchor),
            cardStack.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 32
    }
}
