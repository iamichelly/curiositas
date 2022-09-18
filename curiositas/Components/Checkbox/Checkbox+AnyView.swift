//
//  Checkbox+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 18/09/22.
//

import UIKit

extension Checkbox: AnyView {
    
    func addSubviews() {
        self.addSubview(checked)
    }
    
    func setupConstraints() {
        checked.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            checked.centerXAnchor.constraint(equalTo: centerXAnchor),
            checked.centerYAnchor.constraint(equalTo: centerYAnchor),
            checked.heightAnchor.constraint(equalToConstant: 20),
            checked.widthAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.backgroundColor = UIColor(named: ColorConstants.shared.CHECKBOX)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 4
        checked.isHidden = true
    }
}
