//
//  LearningCuriositasLogo.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class LearningCuriositasLogo: UIView {
    
    let logo: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.LOGO)
        return UIImageView(image: image)
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LearningCuriositasLogo: AnyView {
    
    func addSubviews() {
        self.addSubview(logo)
        
    }
    
    func setupConstraints() {
        logo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logo.widthAnchor.constraint(equalToConstant: 110.HAdapted),
            logo.centerXAnchor.constraint(equalTo: centerXAnchor),
            logo.topAnchor.constraint(equalTo: topAnchor, constant: 24)
        ])
    }
}
