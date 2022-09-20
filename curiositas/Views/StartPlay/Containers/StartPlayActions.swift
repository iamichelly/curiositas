//
//  StartPlayActions.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class StartPlayActions: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    let logo: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.LOGO)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let playButton: CuriositasButton = {
       let button = CuriositasButton()
        let model = CuriositasButtonViewModel(title: .play,
                                              type: .filled)
        button.configure(with: model)
        return button
    }()
    
    let instructionButton: CuriositasButton = {
       let button = CuriositasButton()
        let model = CuriositasButtonViewModel(title: .instructions,
                                              type: .bordered)
        button.configure(with: model)
        return button
    }()
}


