//
//  StartPlayActions+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

extension StartPlayActions: AnyView {
    
    func addSubviews() {
        self.addSubview(logo)
        self.addSubview(playButton)
        self.addSubview(instructionButton)
    }
    
    func setupConstraints() {
        
        instructionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            instructionButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40.HAdapted),
            instructionButton.widthAnchor.constraint(equalToConstant: 221),
            instructionButton.heightAnchor.constraint(equalToConstant: 52),
            instructionButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        playButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButton.bottomAnchor.constraint(equalTo: instructionButton.topAnchor, constant: -16),
            playButton.widthAnchor.constraint(equalToConstant: 221),
            playButton.heightAnchor.constraint(equalToConstant: 52),
            playButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logo.bottomAnchor.constraint(equalTo: centerYAnchor, constant: 64),
            logo.widthAnchor.constraint(equalToConstant: 110.HAdapted),
            logo.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func setupAdditionalConfiguration() {
        playButton.addTarget(self, action: #selector(didTapPlayButton), for: .touchUpInside)
        instructionButton.addTarget(self, action: #selector(didTapInstructionButton), for: .touchUpInside)
    }
    
    @objc func didTapPlayButton(){
        delegate?.didUserTapButton()
    }
    
    @objc func didTapInstructionButton(){
        delegate?.didUserTapOntherButton()
    }

}
