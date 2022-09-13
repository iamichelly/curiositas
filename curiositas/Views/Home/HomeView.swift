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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeView: AnyView {
    
    func addSubviews() {
        self.addSubview(backgroundImage)
        
        self.addSubview(imageContainer)
        self.addSubview(buttonsContainer)
        
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
            buttonsContainer.leadingAnchor.constraint(equalTo: leadingAnchor),
            buttonsContainer.trailingAnchor.constraint(equalTo: trailingAnchor),
            buttonsContainer.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/2),
            
        ])
    }
}

