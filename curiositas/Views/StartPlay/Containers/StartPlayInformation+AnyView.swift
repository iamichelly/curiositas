//
//  StartPlayInformation+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit


extension StartPlayInformation: AnyView {
    
    func addSubviews() {
        self.addSubview(informationStack)
        
        informationStack.addArrangedSubview(startPlay)
        informationStack.addArrangedSubview(startPlayDescription)
    }
    
    func setupConstraints() {
        informationStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            informationStack.topAnchor.constraint(equalTo: topAnchor),
            informationStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            informationStack.trailingAnchor.constraint(equalTo: trailingAnchor),
            informationStack.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        startPlay.translatesAutoresizingMaskIntoConstraints = false
        startPlayDescription.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            startPlay.widthAnchor.constraint(equalToConstant: 270),
            startPlayDescription.widthAnchor.constraint(equalToConstant: 250)
        ])
        
    }
}
