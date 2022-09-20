//
//  LearningCuriositasView+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit


extension LearningCuriositasView: AnyView {
    
    func addSubviews() {
        self.addSubview(background)
        self.addSubview(learningCuriositasInformation)
        self.addSubview(learningCuriositasLogo)
    }
    
    func setupConstraints() {
        background.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            background.topAnchor.constraint(equalTo: topAnchor),
            background.leadingAnchor.constraint(equalTo: leadingAnchor),
            background.bottomAnchor.constraint(equalTo: bottomAnchor),
            background.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        learningCuriositasInformation.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            learningCuriositasInformation.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24),
            learningCuriositasInformation.leadingAnchor.constraint(equalTo: leadingAnchor),
            learningCuriositasInformation.trailingAnchor.constraint(equalTo: trailingAnchor),
            learningCuriositasInformation.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.3)
        ])
        
        learningCuriositasLogo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            learningCuriositasLogo.topAnchor.constraint(equalTo: learningCuriositasInformation.bottomAnchor),
            learningCuriositasLogo.leadingAnchor.constraint(equalTo: leadingAnchor),
            learningCuriositasLogo.trailingAnchor.constraint(equalTo: trailingAnchor),
            learningCuriositasLogo.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.7)
        ])
    }
}
