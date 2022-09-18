//
//  BottomCardGameContainer+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

extension BottomCardGameContainer: AnyView {
    
    func addSubviews() {
        self.addSubview(keyWords)
        self.addSubview(firstGroup)
        self.addSubview(secondGroup)
        
        self.addSubview(checkbox)
        self.addSubview(markAsDoneLabel)
    }
    
    func setupConstraints() {
        
        checkbox.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            checkbox.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24.VAdapted),
            checkbox.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 38),
            checkbox.heightAnchor.constraint(equalToConstant: 24),
            checkbox.widthAnchor.constraint(equalToConstant: 24)
        ])
        
        markAsDoneLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            markAsDoneLabel.heightAnchor.constraint(equalTo: checkbox.heightAnchor),
            markAsDoneLabel.leadingAnchor.constraint(equalTo: checkbox.trailingAnchor, constant: 8),
            markAsDoneLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24.VAdapted)
        ])
        
        keyWords.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            keyWords.topAnchor.constraint(equalTo: topAnchor, constant: 24.VAdapted),
            keyWords.leadingAnchor.constraint(equalTo: leadingAnchor),
            keyWords.trailingAnchor.constraint(equalTo: trailingAnchor),
            keyWords.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        firstGroup.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstGroup.topAnchor.constraint(equalTo: keyWords.bottomAnchor, constant: 16.VAdapted),
            firstGroup.leadingAnchor.constraint(equalTo: leadingAnchor),
            firstGroup.trailingAnchor.constraint(equalTo: trailingAnchor),
            firstGroup.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        secondGroup.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondGroup.topAnchor.constraint(equalTo: firstGroup.bottomAnchor, constant: 8.VAdapted),
            secondGroup.leadingAnchor.constraint(equalTo: leadingAnchor),
            secondGroup.trailingAnchor.constraint(equalTo: trailingAnchor),
            secondGroup.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    func setupAdditionalConfiguration() {
        checkbox.addTarget(self, action: #selector(didTapCheckBox), for: .touchUpInside)
    }
}
