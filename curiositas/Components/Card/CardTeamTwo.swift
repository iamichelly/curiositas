//
//  CardTeamTwo.swift
//  curiositas
//
//  Created by michellyes on 21/09/22.
//

import UIKit

class CardTeamTwo: UIView {
    let isCardDone: Bool
    let path: UIBezierPath = UIBezierPath()
    
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
       // container.backgroundColor = .systemGray
        return container
    }()
    
    let cardImageContainer: UIView = {
       let container = UIView()
        //container.backgroundColor = .systemRed
        return container
    }()
    
    let playButtonContainer: UIView = {
       let container = UIView()
        //container.backgroundColor = .systemGreen
        return container
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
        stackview.distribution = .fill
        stackview.spacing = 0
        return stackview
    }()
    
    let questionButton: SFSymbolsButton = {
        let button = SFSymbolsButton()
        let model = SFSymbolsButtonViewModel(type: .questionMark)
        button.configure(with: model)
        return button
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
        instruction.font = .rounded(ofSize: 28, weight: .heavy)
        instruction.numberOfLines = 0
        instruction.sizeToFit()
        instruction.textAlignment = .center
        return instruction
    }()
    
    let keyWordLabel: UILabel = {
        let keyWord = UILabel()
        keyWord.text = "Marte"
        keyWord.textColor = .white
        keyWord.font = .rounded(ofSize: 40, weight: .heavy)
        keyWord.textAlignment = .center
        return keyWord
    }()
    
    lazy var cardImageView: UIImageView = {
        let cardImageView = UIImageView(image: UIImage(named: "logo"))
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.contentMode = .scaleAspectFit
        return cardImageView
    }()
    
    let playButton: CuriositasButton = {
        let button = CuriositasButton()
        let model = CuriositasButtonViewModel(title: .next,
                                              type: .filled)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configure(with: model)
        return button
    }()
    
   
    required init(frame: CGRect, isCardDone: Bool) {
        self.isCardDone = true
        //self.cardNumber = cardNumber
        super.init(frame: frame)
        setupViewAttributes()
        setupViewHierarchy()
        setupConstraints()
        createShape()
        

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createShape() {
        path.move(to: CGPoint(x: 0, y: frame.height * 0.25))
        path.addCurve(to: CGPoint(x: frame.width, y: frame.height * 0.4), controlPoint1: CGPoint(x: frame.width * 0.5, y: frame.height * 0.2), controlPoint2: CGPoint(x: frame.width*0.9, y: frame.height * 0.35))
        path.addLine(to: CGPoint(x: frame.width, y: frame.height * 0.7))
        path.addCurve(to: CGPoint(x: 0, y: frame.height * 0.6), controlPoint1: CGPoint(x: frame.width * 0.75, y: frame.height * 0.8), controlPoint2: CGPoint(x: frame.width*0.3, y: frame.height * 0.75))
        path.close()
        
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = path.cgPath
        
        shapeLayer.strokeColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00).cgColor
        shapeLayer.opacity = 0.12
        
        shapeLayer.fillColor = UIColor(red: 0.00, green: 0.00, blue: 0.00, alpha: 1.00).cgColor
        shapeLayer.lineWidth = 1.0
        layer.addSublayer(shapeLayer)
    }
    
    func setupViewHierarchy() {
        
        self.addSubview(questionButton)
        self.addSubview(cardStackView)
        
        
        cardStackView.addArrangedSubview(closeButtonContainer)
        cardStackView.addArrangedSubview(instructionLabelContainer)
        cardStackView.addArrangedSubview(keyWordLabelContainer)
        cardStackView.addArrangedSubview(cardImageContainer)
        cardStackView.addArrangedSubview(playButtonContainer)
        
        closeButtonContainer.addSubview(closeButton)
        instructionLabelContainer.addSubview(instructionLabel)
        keyWordLabelContainer.addSubview(keyWordLabel)
        cardImageContainer.addSubview(cardImageView)
        playButtonContainer.addSubview(playButton)
    }

    func setupViewAttributes() {
        self.backgroundColor = UIColor(red: 0.46, green: 0.45, blue: 0.90, alpha: 1.00)
        cardStackView.axis = .vertical
        cardStackView.alignment = .fill
        cardStackView.spacing = 16
    }


    func setupConstraints() {
        
    
        
        cardStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardStackView.topAnchor.constraint(equalTo: topAnchor),
            cardStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            cardStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            cardStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
        
        closeButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            closeButton.topAnchor.constraint(equalTo: closeButtonContainer.topAnchor, constant: 28),
            closeButton.trailingAnchor.constraint(equalTo: closeButtonContainer.trailingAnchor, constant: -20),
            closeButtonContainer.topAnchor.constraint(equalTo: closeButton.topAnchor),
            closeButtonContainer.bottomAnchor.constraint(equalTo: closeButton.bottomAnchor)
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
            instructionLabel.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor, constant: -30),
            instructionLabel.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor, constant: 30),
            instructionLabel.centerXAnchor.constraint(equalTo: instructionLabelContainer.centerXAnchor),
            instructionLabel.topAnchor.constraint(equalTo: instructionLabelContainer.topAnchor, constant: 20)            
        
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
        
        cardImageContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardImageContainer.topAnchor.constraint(equalTo: keyWordLabelContainer.bottomAnchor),
            cardImageContainer.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            cardImageContainer.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            cardImageContainer.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor, constant: -150)
        ])
        
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardImageView.centerXAnchor.constraint(equalTo: cardImageContainer.centerXAnchor),
            cardImageView.topAnchor.constraint(equalTo: cardImageContainer.topAnchor),
            cardImageView.bottomAnchor.constraint(equalTo: cardImageContainer.bottomAnchor)
        ])
        
        playButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            playButtonContainer.topAnchor.constraint(equalTo: cardImageContainer.bottomAnchor),
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
        
    }
    

    
    
    
    
    
    }

