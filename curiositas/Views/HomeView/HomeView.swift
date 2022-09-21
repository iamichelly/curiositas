//
//  HomeView.swift
//  curiositas
//
//  Created by alexdamascena on 12/09/22.
//

import UIKit

class HomeView: UIView {
    
    weak var delegate: CuriositasButtonDelegate?
    
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        playButton.addTarget(self, action: #selector(didUserTapPlayButton), for: .touchUpInside)
        instructionButton.addTarget(self, action: #selector(didUserTapInstructionButton), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didUserTapPlayButton(){
        delegate?.didUserTapButton()
    }
    
    @objc func didUserTapInstructionButton(){
        delegate?.didUserTapOntherButton()
    }
}



