//
//  StartPlayView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class StartPlayView: UIView {
    
    let background: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.START_PLAY)
        return UIImageView(image: image)
    }()
    
    let onboardingStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        return stack
    }()
    
    let startPlayInformation = StartPlayInformation()
    let startPlayActions = StartPlayActions()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


