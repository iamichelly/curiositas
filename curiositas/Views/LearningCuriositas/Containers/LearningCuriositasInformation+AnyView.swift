//
//  LearningCuriositasInformation+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

extension LearningCuriositasInformation: AnyView {
    func addSubviews() {
        self.addSubview(learningCuriositas)
        self.addSubview(learningCuriositasDescription)
    }
    
    func setupConstraints() {
        learningCuriositas.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            learningCuriositas.centerXAnchor.constraint(equalTo: centerXAnchor),
            learningCuriositas.widthAnchor.constraint(equalToConstant: 220)
        ])
        
 
        learningCuriositasDescription.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            learningCuriositasDescription.widthAnchor.constraint(equalToConstant: 290),
            learningCuriositasDescription.centerXAnchor.constraint(equalTo: centerXAnchor),
            learningCuriositasDescription.topAnchor.constraint(equalTo: learningCuriositas.bottomAnchor, constant: 64)
        ])
        
    }
}
