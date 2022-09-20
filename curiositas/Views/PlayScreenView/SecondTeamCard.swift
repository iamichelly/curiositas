//
//  SecondTeamCard.swift
//  curiositas
//
//  Created by michellyes on 16/09/22.
//

import UIKit

class SecondTeamCard: UIView {
    
    let backgroundImage: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.BACKGROUND_IMAGE)
        return UIImageView(image: image)
    }()
    
    let questionButton: SFSymbolsButton = {
        let button = SFSymbolsButton()
        let model = SFSymbolsButtonViewModel(type: .questionMark)
        button.configure(with: model)
        return button
    }()
    
    let cardImage: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.CARD_IMAGE)
        return UIImageView(image: image)
    }()
    
    let closeButton: SFSymbolsButton = {
        let button = SFSymbolsButton()
        let model = SFSymbolsButtonViewModel(type: .close)
        button.configure(with: model)
        return button
    }()
    
    let instructionLabel: UILabel = {
        let instruction = UILabel()
        instruction.text = "Mostre essa carta para o time 2"
        instruction.textColor = .yellow
        instruction.font = .rounded(ofSize: 22, weight: .heavy)
        instruction.numberOfLines = 0
        instruction.sizeToFit()
        instruction.textAlignment = .center
        return instruction
    }()
    
    let keyWordLabel: UILabel = {
        let keyWord = UILabel()
        keyWord.text = "Marte"
        keyWord.textColor = .white
        keyWord.font = .rounded(ofSize: 32, weight: .heavy)
        keyWord.textAlignment = .center
        return keyWord
    }()
    

    let logo: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.LOGO)
        let returnImage = UIImageView(image: image)
        returnImage.contentMode = .scaleAspectFit
        return returnImage
    }()
    
    let playButton: CuriositasButton = {
        let button = CuriositasButton()
        let model = CuriositasButtonViewModel(title: .next,
                                              type: .filled)
        button.configure(with: model)
        return button
    }()
    
    let closeButtonContainer: UIView = {
        let container = UIView()
        //container.backgroundColor = .systemBlue
        return container
    }()
    
    let instructionLabelContainer: UIView = {
        let container = UIView()
        //container.backgroundColor = .systemPink
        return container
    }()
    
    let keyWordLabelContainer: UIView = {
        let container = UIView()
        //container.backgroundColor = .systemGray
        return container
    }()
    
    let logoContainer: UIView = {
       let container = UIView()
        //container.backgroundColor = .systemRed
        return container
    }()
    
    let playButtonContainer: UIView = {
       let container = UIView()
        //container.backgroundColor = .systemGreen
        return container
    }()
    
    
    let cardStackView: UIStackView = {
        let stackview = UIStackView()
        //stackview.backgroundColor = .systemYellow
        stackview.axis = .vertical
        stackview.alignment = .fill
        stackview.distribution = .fill
        stackview.spacing = 0
        return stackview
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension SecondTeamCard: AnyView {
    func addSubviews() {
        
        
        self.addSubview(backgroundImage)
        self.addSubview(questionButton)
        self.addSubview(cardImage)
        self.addSubview(cardStackView)
        
        
        cardStackView.addArrangedSubview(closeButtonContainer)
        cardStackView.addArrangedSubview(instructionLabelContainer)
        cardStackView.addArrangedSubview(keyWordLabelContainer)
        cardStackView.addArrangedSubview(logoContainer)
        cardStackView.addArrangedSubview(playButtonContainer)
        
        closeButtonContainer.addSubview(closeButton)
        instructionLabelContainer.addSubview(instructionLabel)
        keyWordLabelContainer.addSubview(keyWordLabel)
        logoContainer.addSubview(logo)
        playButtonContainer.addSubview(playButton)
        
        
        
        

    }

    func setupConstraints() {
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
        
        questionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questionButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            questionButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
        ])
        
        cardImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardImage.topAnchor.constraint(equalTo: cardStackView.topAnchor),
            cardImage.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            cardImage.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            cardImage.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor)
        ])
        
        cardStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -62),
            cardStackView.topAnchor.constraint(equalTo: topAnchor, constant: 144),
            cardStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            cardStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32)
        ])
        
        closeButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            closeButtonContainer.topAnchor.constraint(equalTo: cardStackView.topAnchor),
            closeButtonContainer.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            closeButtonContainer.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            closeButtonContainer.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor, constant: -550)
        ])
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: closeButtonContainer.topAnchor, constant: 35),
            closeButton.trailingAnchor.constraint(equalTo: closeButtonContainer.trailingAnchor, constant: -30)
        ])
        
        instructionLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            instructionLabelContainer.topAnchor.constraint(equalTo: closeButtonContainer.bottomAnchor),
            instructionLabelContainer.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            instructionLabelContainer.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            instructionLabelContainer.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor, constant: -450)
        ])
        
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            instructionLabel.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor, constant: -60),
            instructionLabel.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor, constant: 60),
            instructionLabel.centerXAnchor.constraint(equalTo: instructionLabelContainer.centerXAnchor),
            instructionLabel.centerYAnchor.constraint(equalTo: instructionLabelContainer.centerYAnchor)
            
        
        ])
        
        keyWordLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            keyWordLabelContainer.topAnchor.constraint(equalTo: instructionLabelContainer.bottomAnchor),
            keyWordLabelContainer.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            keyWordLabelContainer.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            keyWordLabelContainer.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor, constant: -350)
        
        ])
        
        keyWordLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            keyWordLabel.centerXAnchor.constraint(equalTo: keyWordLabelContainer.centerXAnchor),
            keyWordLabel.centerYAnchor.constraint(equalTo: keyWordLabelContainer.centerYAnchor)
        ])
        
        logoContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoContainer.topAnchor.constraint(equalTo: keyWordLabelContainer.bottomAnchor),
            logoContainer.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            logoContainer.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            logoContainer.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor, constant: -150)
        ])
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logo.centerXAnchor.constraint(equalTo: logoContainer.centerXAnchor),
            logo.topAnchor.constraint(equalTo: logoContainer.topAnchor),
            logo.bottomAnchor.constraint(equalTo: logoContainer.bottomAnchor)
        ])
        
        playButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButtonContainer.topAnchor.constraint(equalTo: logoContainer.bottomAnchor),
            playButtonContainer.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            playButtonContainer.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            playButtonContainer.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor)
        ])
        
        playButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: playButtonContainer.topAnchor, constant: 20),
            playButton.centerXAnchor.constraint(equalTo: playButtonContainer.centerXAnchor),
            playButton.widthAnchor.constraint(equalToConstant: 221),
            playButton.heightAnchor.constraint(equalToConstant: 52)
        ])
        
//        playButton.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            playButton.topAnchor.constraint(equalTo: playButtonContainer.topAnchor, constant: 20),
//            playButton.centerXAnchor.constraint(equalTo: playButtonContainer.centerXAnchor),
//            playButton.widthAnchor.constraint(equalToConstant: 221),
//            playButton.heightAnchor.constraint(equalToConstant: 52)
//        ])
        
        
    }


}
