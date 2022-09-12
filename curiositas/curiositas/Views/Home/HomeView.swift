//
//  HomeView.swift
//  curiositas
//
//  Created by alexdamascena on 12/09/22.
//

import UIKit

class HomeView: UIView {
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fill
        stack.spacing = 32
        stack.alignment = .center
        return stack
    }()
    
    let imageContainer = UIView()
    let buttonsContainer = UIView()
    
    let backgroundImage: UIImageView = {
        let image = UIImage(named: ConstantsImages.shared.BACKGROUND_IMAGE)
        return UIImageView(image: image)
    }()
    
    let logo: UIImageView = {
        let image = UIImage(named: ConstantsImages.shared.LOGO)
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
        self.addSubview(stackView)
        
        stackView.addArrangedSubview(imageContainer)
        stackView.addArrangedSubview(buttonsContainer)
        
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
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logo.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor),
            logo.centerYAnchor.constraint(equalTo: imageContainer.centerYAnchor, constant: -80)
        ])
        
        buttonsContainer.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
}
