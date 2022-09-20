//
//  PopUp+AnyView.swift
//  curiositas
//
//  Created by sml on 19/09/22.
//

import UIKit

extension Popup: AnyView {
    func addSubviews() {
        self.addSubview(buttonOutside)

        self.addSubview(stackView)
        
        titleLabelContainer.addSubview(titleLabel)
        descriptionLabelContainer.addSubview(descriptionLabel)
        popupButtonContainer.addSubview(popupButton)
        imageContainer.addSubview(image)

        stackView.addArrangedSubview(titleLabelContainer)
        stackView.addArrangedSubview(imageContainer)
        stackView.addArrangedSubview(descriptionLabelContainer)
        stackView.addArrangedSubview(popupButtonContainer)

    }
    
    func setupConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        let constraintStack = stackView.widthAnchor.constraint(lessThanOrEqualToConstant: 400)
            constraintStack.priority = UILayoutPriority(1000)
        let constraintStackTwo = stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        constraintStackTwo.priority = UILayoutPriority(998)
        let constraintStackThree = stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        constraintStackThree.priority = UILayoutPriority(998)
        let constraintStackFour =         stackView.centerXAnchor.constraint(equalTo: centerXAnchor)
        constraintStackFour.priority = UILayoutPriority(999)
        
        NSLayoutConstraint.activate([
            constraintStack,
            constraintStackTwo,
            constraintStackThree,
            constraintStackFour,
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),

        ])
        
        buttonOutside.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonOutside.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonOutside.bottomAnchor.constraint(equalTo: bottomAnchor),
            buttonOutside.centerYAnchor.constraint(equalTo: centerYAnchor),
            buttonOutside.centerXAnchor.constraint(equalTo: centerXAnchor),
            buttonOutside.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonOutside.topAnchor.constraint(equalTo: bottomAnchor)
        ])
                
        titleLabelContainer.translatesAutoresizingMaskIntoConstraints = false

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.trailingAnchor.constraint(equalTo: titleLabelContainer.trailingAnchor, constant: -24),
            titleLabel.leadingAnchor.constraint(equalTo: titleLabelContainer.leadingAnchor, constant: 24),
            titleLabel.topAnchor.constraint(equalTo: titleLabelContainer.topAnchor, constant: 16),
            titleLabelContainer.bottomAnchor.constraint(equalTo: titleLabel.bottomAnchor)
        ])
        
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
    
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            descriptionLabel.trailingAnchor.constraint(equalTo: descriptionLabelContainer.trailingAnchor, constant: -24),
            descriptionLabel.leadingAnchor.constraint(equalTo: descriptionLabelContainer.leadingAnchor, constant: 24),
            descriptionLabel.topAnchor.constraint(equalTo: descriptionLabelContainer.topAnchor, constant: 12),
            descriptionLabelContainer.bottomAnchor.constraint(equalTo: descriptionLabel.bottomAnchor)
            
        ])
        
        
        popupButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        popupButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            popupButton.trailingAnchor.constraint(equalTo: popupButtonContainer.trailingAnchor, constant: -120),
            popupButton.leadingAnchor.constraint(equalTo: popupButtonContainer.leadingAnchor, constant: 120),
            popupButton.heightAnchor.constraint(equalToConstant: 52),
            popupButton.topAnchor.constraint(equalTo: popupButtonContainer.topAnchor, constant: 12),
            popupButton.bottomAnchor.constraint(equalTo: popupButtonContainer.bottomAnchor, constant: 24),
            popupButtonContainer.bottomAnchor.constraint(equalTo: popupButton.bottomAnchor, constant: 24),
            popupButtonContainer.topAnchor.constraint(equalTo: descriptionLabelContainer.bottomAnchor)
        ])
        
        
    
    }
    
    func setupAdditionalConfiguration() {
        stackView.backgroundColor = UIColor(red: 0.46, green: 0.45, blue: 0.90, alpha: 1.00)
        stackView.layer.cornerRadius = 16
        
        self.backgroundColor = UIColor.black.withAlphaComponent(0.7)

    }
    
}



