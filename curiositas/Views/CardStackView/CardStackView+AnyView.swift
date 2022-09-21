//
//  CardStackView+AnyView.swift
//  curiositas
//
//  Created by lrsv on 14/09/22.
//

import UIKit

extension CardStackView: AnyView {
    
    func addSubviews() {
//        self.addSubview(card)
        
        self.addSubview(titleLabel)
        self.addSubview(questionButton)
        self.addSubview(backButton)

    }
    
    func setupConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        questionButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: questionButton.bottomAnchor, constant: -6),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            questionButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            questionButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32)
        ])
        
        NSLayoutConstraint.activate([
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            backButton.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor)

        ])
        
        
    }
}

