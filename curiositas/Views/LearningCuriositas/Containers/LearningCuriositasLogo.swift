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
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


