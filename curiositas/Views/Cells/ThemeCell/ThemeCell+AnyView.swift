//
//  ThemeCollectionViewCell+AnyView.swift
//  curiositas
//
//  Created by sml on 15/09/22.
//

import UIKit

extension ThemeCell: AnyView {
    func addSubviews() {
        self.addSubview(imageBackground)
        self.addSubview(themeLabel)
        self.addSubview(cardsAmountLabel)
    }
    
    func setupConstraints() {
        imageBackground.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageBackground.topAnchor.constraint(equalTo: topAnchor),
            imageBackground.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageBackground.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        themeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            themeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            themeLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        cardsAmountLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cardsAmountLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10.VAdapted),
            cardsAmountLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12.HAdapted)
        ])
    }
}
