//
//  SFSymbolsButton+AnyView.swift
//  curiositas
//
//  Created by sml on 16/09/22.
//

import UIKit

extension SFSymbolsButton: AnyView {
    func addSubviews() {
        self.addSubview(buttonImage)
    }
    
    func setupConstraints() {
        buttonImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonImage.topAnchor.constraint(equalTo: topAnchor),
            buttonImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonImage.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalTo: buttonImage.widthAnchor),
        ])
    }
    
}
