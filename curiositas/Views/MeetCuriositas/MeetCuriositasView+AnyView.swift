//
//  MeetCuriositasView+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 14/09/22.
//

import UIKit


extension MeetCuriositasView: AnyView {
    func addSubviews() {
        self.addSubview(background)
        self.addSubview(onboardingStack)
        
        onboardingStack.addArrangedSubview(meetCuriositasInformation)
        onboardingStack.addArrangedSubview(meetCuriositasCardImage)
    }
    
    func setupConstraints() {
    
        background.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            background.topAnchor.constraint(equalTo: topAnchor),
            background.leadingAnchor.constraint(equalTo: leadingAnchor),
            background.bottomAnchor.constraint(equalTo: bottomAnchor),
            background.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        onboardingStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            onboardingStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            onboardingStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            onboardingStack.trailingAnchor.constraint(equalTo: trailingAnchor),
            onboardingStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
        
        meetCuriositasInformation.translatesAutoresizingMaskIntoConstraints = false
        meetCuriositasCardImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            meetCuriositasInformation.heightAnchor.constraint(equalTo: onboardingStack.heightAnchor, multiplier: 0.3),
            meetCuriositasCardImage.heightAnchor.constraint(equalTo: onboardingStack.heightAnchor, multiplier: 0.7)
        ])
    }
}


