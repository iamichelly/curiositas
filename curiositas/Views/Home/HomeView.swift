//
//  HomeView.swift
//  curiositas
//
//  Created by alexdamascena on 12/09/22.
//

import UIKit

class HomeView: UIView {
    
    let imageContainer = UIView()
    let buttonsContainer = UIView()
    
    let backgroundImage: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.BACKGROUND_IMAGE)
        return UIImageView(image: image)
    }()
    
    let logo: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.LOGO)
        return UIImageView(image: image)
    }()
    
    let playButton = CuriositaButton()
    let instructionsButton = CuriositaButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        playButton.addTarget(self, action: #selector(didTapPlayButton), for: .touchUpInside)
        instructionsButton.addTarget(self, action: #selector(didTapInstructionButton), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTapPlayButton(){
        print("opa")
    }
    
    @objc func didTapInstructionButton(){
        print("oi")
    }
}

extension HomeView: AnyView {
    
    func addSubviews() {
        self.addSubview(backgroundImage)
        
        self.addSubview(imageContainer)
        self.addSubview(buttonsContainer)
        
        buttonsContainer.addSubview(playButton)
        buttonsContainer.addSubview(instructionsButton)
        imageContainer.addSubview(logo)
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
            buttonsContainer.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/2)
        ])
        
        playButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 78),
            playButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            playButton.widthAnchor.constraint(equalToConstant: 221),
            playButton.heightAnchor.constraint(equalToConstant: 52)
        ])
        
        instructionsButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            instructionsButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            instructionsButton.topAnchor.constraint(equalTo: playButton.bottomAnchor, constant: 18),
            instructionsButton.widthAnchor.constraint(equalToConstant: 221),
            instructionsButton.heightAnchor.constraint(equalToConstant: 52)
        ])
    }
}

