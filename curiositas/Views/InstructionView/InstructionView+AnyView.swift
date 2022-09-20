//
//  InstructionView+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 19/09/22.
//

import UIKit

extension InstructionView: AnyView {
    
    func addSubviews() {
        self.addSubview(stackView)
        stackView.addArrangedSubview(howToPlayTitle)
        stackView.addArrangedSubview(howToPlaySubtitle)
        stackView.addArrangedSubview(exampleTitle)
        stackView.addArrangedSubview(exampleSubtitle)
        stackView.addArrangedSubview(endGameTitle)
        stackView.addArrangedSubview(endGameSubtitle)
    }
    
    func setupConstraints() {
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: contentLayoutGuide.leadingAnchor, constant: 32),
            stackView.trailingAnchor.constraint(equalTo: contentLayoutGuide.trailingAnchor, constant: -32),
            stackView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 64),
            stackView.bottomAnchor.constraint(equalTo: contentLayoutGuide.bottomAnchor, constant: -16)
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.backgroundColor = UIColor(named: ColorConstants.shared.PRIMARY_COLOR)
        self.showsVerticalScrollIndicator = false
    }
}
