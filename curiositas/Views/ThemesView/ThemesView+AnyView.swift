//
//  ThemesView+AnyView.swift
//  curiositas
//
//  Created by sml on 14/09/22.
//

import UIKit

extension ThemesView: AnyView {
    func addSubviews() {
        self.addSubview(stackView)
        
        titleLabelContainer.addSubview(titleLabel)
        questionButtonContainer.addSubview(questionButton)
        
        stackView.addArrangedSubview(questionButtonContainer)
        stackView.addArrangedSubview(titleLabelContainer)
        stackView.addArrangedSubview(themesCollectionView)
    }
    
    func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        questionButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setupAdditionalConfiguration() {
        self.backgroundColor = UIColor(red: 0.13, green: 0.08, blue: 0.30, alpha: 1.00)
        
        
    }
    
}
