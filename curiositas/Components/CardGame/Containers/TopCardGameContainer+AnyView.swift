//
//  TopCardGameContainer+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

extension TopCardGameContainer: AnyView {
    
    func addSubviews() {
        self.addSubview(closeButton)
        self.addSubview(curiosity)
        self.addSubview(curiosityDescription)
        
        self.addSubview(carousel)
        self.addSubview(tips)
        
        carousel.addArrangedSubview(beforeIcon)
        carousel.addArrangedSubview(tip)
        carousel.addArrangedSubview(nextIcon)
    }
    
    func setupConstraints() {
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: topAnchor, constant: 16.VAdapted),
            closeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.HAdapted),
            closeButton.heightAnchor.constraint(equalToConstant: 38),
            closeButton.widthAnchor.constraint(equalToConstant: 38)
        ])
        
        curiosity.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            curiosity.topAnchor.constraint(equalTo: closeButton.bottomAnchor, constant: 8.VAdapted),
            curiosity.leadingAnchor.constraint(equalTo: leadingAnchor),
            curiosity.trailingAnchor.constraint(equalTo: trailingAnchor),
            curiosity.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        curiosityDescription.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            curiosityDescription.topAnchor.constraint(equalTo: curiosity.bottomAnchor, constant: 8.VAdapted),
            curiosityDescription.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16.HAdapted),
            curiosityDescription.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16.HAdapted),
            curiosityDescription.heightAnchor.constraint(equalToConstant: 48.VAdapted)
        ])
        
        tips.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tips.topAnchor.constraint(equalTo: curiosityDescription.bottomAnchor, constant: 12.VAdapted),
            tips.leadingAnchor.constraint(equalTo: leadingAnchor),
            tips.trailingAnchor.constraint(equalTo: trailingAnchor),
            tips.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        carousel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            carousel.topAnchor.constraint(equalTo: tips.bottomAnchor, constant: 12.VAdapted),
            carousel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32.HAdapted),
            carousel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32.HAdapted),
            carousel.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    func setupAdditionalConfiguration() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapBeforeButton))
        beforeIcon.isUserInteractionEnabled = true
        beforeIcon.addGestureRecognizer(gesture)
    }
    
    @objc func didTapBeforeButton(){
        print("oi")
    }
}
