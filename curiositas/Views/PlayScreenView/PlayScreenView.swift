//
//  PlayScreenView.swift
//  curiositas
//
//  Created by michellyes on 14/09/22.
//

import UIKit

class PlayScreenView: UIView {
    
    weak var delegate: CuriositasButtonDelegate?
    
    let backgroundImage: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.BACKGROUND_IMAGE)
        return UIImageView(image: image)
    }()
    
    let cardImage: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.CARD_IMAGE)
        return UIImageView(image: image)
    }()
    
    let cardNumberLabel: UILabel = {
        let cardNumber = UILabel()
        cardNumber.text = NumbersConstants.shared.CARD_NUMBER
        cardNumber.textColor = .white
        cardNumber.font = .rounded(ofSize: 32, weight: .heavy)
        
        return cardNumber
    }()
    
    let logo: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.LOGO)
        let returnImage = UIImageView(image: image)
        returnImage.contentMode = .scaleAspectFit
        return returnImage
    }()
    
    let playButton: CuriositasButton = {
        let button = CuriositasButton()
        let model = CuriositasButtonViewModel(title: .play,
                                              type: .filled)
        button.configure(with: model)
        return button
    }()
    
    let closeButton: SFSymbolsButton = {
        let button = SFSymbolsButton()
        let model = SFSymbolsButtonViewModel(type: .close)
        button.configure(with: model)
        return button
    }()
    
    let questionButton: SFSymbolsButton = {
        let button = SFSymbolsButton()
        let model = SFSymbolsButtonViewModel(type: .questionMark)
        button.configure(with: model)
        return button
    }()
    
    let headStackView: UIStackView = {
        let stackview = UIStackView()
        //stackview.backgroundColor = .black
        stackview.axis = .horizontal
        stackview.alignment = .fill
        stackview.distribution = .fillEqually
        stackview.spacing = 0
        return stackview
    }()
    
    let cardStackView: UIStackView = {
        let stackview = UIStackView()
        //stackview.backgroundColor = .systemYellow
        stackview.axis = .vertical
        stackview.alignment = .fill
        stackview.distribution = .fillEqually
        stackview.spacing = 0
        return stackview
    }()
    
    
    let closeButtonContainer: UIView = {
        let container = UIView()
       // container.backgroundColor = .systemBlue
        return container
    }()
    
    let cardNumberContainer: UIView = {
        let container = UIView()
        //container.backgroundColor = .systemOrange
        return container
    }()
    
    let logoContainer: UIView = {
       let container = UIView()
        //container.backgroundColor = .systemRed
        return container
    }()
    
    let playButtonContainer: UIView = {
       let container = UIView()
       // container.backgroundColor = .systemGreen
        return container
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        questionButton.addTarget(self, action: #selector(didUserTapQuestionButton), for: .touchUpInside)
        playButton.addTarget(self, action: #selector(didUserTapPlayButton), for: .touchUpInside)
    }
    
    @objc func didUserTapQuestionButton(){
        print("ooooooooi")
    }
    
    @objc func didUserTapPlayButton(){
        delegate?.didUserTapButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension PlayScreenView: AnyView {
    
    func addSubviews() {
        
        self.addSubview(backgroundImage)
        self.addSubview(questionButton)
        self.addSubview(cardImage)
        self.addSubview(cardStackView)
        
        cardStackView.addArrangedSubview(headStackView)
        cardStackView.addArrangedSubview(logoContainer)
        cardStackView.addArrangedSubview(playButtonContainer)

        logoContainer.addSubview(logo)
        playButtonContainer.addSubview(playButton)
        
        cardNumberContainer.addSubview(cardNumberLabel)
        closeButtonContainer.addSubview(closeButton)
        
        headStackView.addArrangedSubview(cardNumberContainer)
        headStackView.addArrangedSubview(closeButtonContainer)
        
        
        
    }
    
    func setupConstraints() {
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
        
        cardImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardImage.topAnchor.constraint(equalTo: cardStackView.topAnchor),
            cardImage.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            cardImage.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            cardImage.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor)
        ])
        
        cardStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardStackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -62),
            cardStackView.topAnchor.constraint(equalTo: topAnchor, constant: 144),
            cardStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            cardStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32)
        ])
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: closeButtonContainer.topAnchor, constant: 35),
            closeButton.trailingAnchor.constraint(equalTo: closeButtonContainer.trailingAnchor, constant: -30)
        ])
        
        cardNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardNumberLabel.topAnchor.constraint(equalTo: cardNumberContainer.topAnchor, constant: 40),
            cardNumberLabel.leadingAnchor.constraint(equalTo: cardNumberContainer.leadingAnchor, constant: 40)
        ])
        
        playButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButton.topAnchor.constraint(equalTo: playButtonContainer.topAnchor, constant: 20),
            playButton.centerXAnchor.constraint(equalTo: playButtonContainer.centerXAnchor),
            playButton.widthAnchor.constraint(equalToConstant: 221),
            playButton.heightAnchor.constraint(equalToConstant: 52)
        ])
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logo.centerXAnchor.constraint(equalTo: cardStackView.centerXAnchor),
            logo.centerYAnchor.constraint(equalTo: cardStackView.centerYAnchor)
        ])
        
    
        questionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questionButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            questionButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
        ])
        
        playButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButtonContainer.topAnchor.constraint(equalTo: cardStackView.bottomAnchor, constant: -150),
            playButtonContainer.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            playButtonContainer.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            playButtonContainer.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor)
        ])
        
    }
    
}



