//
//  ThemeCollectionViewCell+AnyView.swift
//  curiositas
//
//  Created by sml on 15/09/22.
//

import Foundation

extension ThemeCell: AnyView {
    func addSubviews() {
        self.addSubview(imageBackground)
        self.addSubview(themeLabel)
        self.addSubview(cardsAmountLabel)
        self.backgroundColor = .blue
    }
    
    func setupConstraints() {
        imageBackground.translatesAutoresizingMaskIntoConstraints = false
        
        themeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        cardsAmountLabel.translatesAutoresizingMaskIntoConstraints = false
    }
}
