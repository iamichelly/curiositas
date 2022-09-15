//
//  LearningCuriositasView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class LearningCuriositasView: UIView {
    
    let background: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.LEARNING_CURIOSITAS)
        return UIImageView(image: image)
    }()
    
    let learningCuriositasInformation = LearningCuriositasInformation()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

