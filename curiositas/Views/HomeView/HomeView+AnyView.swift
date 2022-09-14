//
//  HomeView+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 13/09/22.
//

import UIKit

extension HomeView: AnyView {
    
    func addSubviews() {
        self.addSubview(backgroundImage)
        
        self.addSubview(imageContainer)
        self.addSubview(buttonsContainer)
        
        imageContainer.addSubview(logo)
        buttonsContainer.addSubview(playButton)
        buttonsContainer.addSubview(instructionButton)
    }
    
    func setupConstraints() {
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        imageContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageContainer.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/2),
            imageContainer.widthAnchor.constraint(equalTo: self.widthAnchor),
            imageContainer.topAnchor.constraint(equalTo: topAnchor)
        ])
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logo.bottomAnchor.constraint(equalTo: imageContainer.bottomAnchor, constant: 40),
            logo.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor)
        ])
        
        buttonsContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            buttonsContainer.topAnchor.constraint(equalTo: imageContainer.bottomAnchor),
            buttonsContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonsContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonsContainer.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/2),
            
        ])
        
        playButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: buttonsContainer.topAnchor, constant: 96),
            playButton.centerXAnchor.constraint(equalTo: buttonsContainer.centerXAnchor),
            playButton.widthAnchor.constraint(equalToConstant: 221),
            playButton.heightAnchor.constraint(equalToConstant: 52)
        ])
        
        instructionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            instructionButton.topAnchor.constraint(equalTo: playButton.bottomAnchor, constant: 16),
            instructionButton.centerXAnchor.constraint(equalTo: buttonsContainer.centerXAnchor),
            instructionButton.widthAnchor.constraint(equalToConstant: 221),
            instructionButton.heightAnchor.constraint(equalToConstant: 52)
        ])
    }
}

