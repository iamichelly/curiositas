//
//  CardGame+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

extension CardGame: AnyView {
    
    func addSubviews() {
        self.addSubview(imageWave)

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
        
        imageWave.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageWave.topAnchor.constraint(equalTo: topAnchor),
            imageWave.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageWave.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageWave.bottomAnchor.constraint(equalTo: bottomCardGameContainer.topAnchor, constant: 30)
        ])

    }
    
    func setupAdditionalConfiguration() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 32
    }
}
