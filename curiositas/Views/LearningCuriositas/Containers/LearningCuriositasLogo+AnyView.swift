//
//  LearningCuriositasLogo+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

extension LearningCuriositasLogo: AnyView {
    
    func addSubviews() {
        self.addSubview(logo)
    }
    
    func setupConstraints() {
        logo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logo.widthAnchor.constraint(equalToConstant: 110.HAdapted),
            logo.centerXAnchor.constraint(equalTo: centerXAnchor),
            logo.topAnchor.constraint(equalTo: topAnchor, constant: 40.VAdapted)
        ])
    }
}
