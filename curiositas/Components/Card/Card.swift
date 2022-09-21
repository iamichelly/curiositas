//
//  Card.swift
//  curiositas
//
//  Created by lrsv on 14/09/22.
//

import UIKit

class CardView: UIView {
    let cardNumber: Int
    let isCardDone: Bool
//    let cardStackView: UIStackView = UIStackView()
    let cardNumberContainer: UIView = UIView()
    let cardCheckedContainer: UIView = UIView()
    let cardImageContainer: UIView = UIView()
    let path: UIBezierPath = UIBezierPath()
    let playButtonContainer: UIView = UIView()
    let closeButtonContainer: UIView = UIView()
    
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
    
    let playButton: CuriositasButton = {
        let button = CuriositasButton()
        let model = CuriositasButtonViewModel(title: .play,
                                              type: .filled)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.configure(with: model)
        return button
    }()
    
    let closeButton: SFSymbolsButton = {
        let button = SFSymbolsButton()
        let model = SFSymbolsButtonViewModel(type: .close)
        button.configure(with: model)
        return button
    }()
    
    lazy var cardImageView: UIImageView = {
        let cardImageView = UIImageView(image: UIImage(named: "logo"))
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.contentMode = .scaleAspectFit

        return cardImageView
    }()

    lazy var cardNumberLabel: UILabel = {
        let label: UILabel = UILabel()
        let labelAttributes = [NSAttributedString.Key.font: UIFont.rounded(ofSize: 32, weight: .heavy)]
        let attributedText = NSMutableAttributedString(string: String(self.cardNumber), attributes: labelAttributes)
        print(attributedText.string)
        label.attributedText = attributedText
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()

    lazy var cardCheckedIcon: UIImageView = {
        let cardCheckedIcon = UIImageView(image: UIImage(systemName: "square.and.arrow.down"))
        if (isCardDone) {
            cardCheckedIcon.isHidden = true
        }
        return cardCheckedIcon
    }()

    required init(frame: CGRect, cardNumber: Int, isCardDone: Bool) {
        self.isCardDone = true
        self.cardNumber = cardNumber
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
        self.addSubview(cardStackView)
//        cardStackView.addArrangedSubview(headStackView)
//        cardStackView.addArrangedSubview(cardCheckedContainer)
//        cardStackView.addArrangedSubview(cardImageContainer)
////        cardStackView.addArrangedSubview(playButtonContainer)
//        cardImageContainer.addSubview(cardImageView)
//        cardNumberContainer.addSubview(cardNumberLabel)
//        cardCheckedContainer.addSubview(cardCheckedIcon)
//        playButtonContainer.addSubview(playButton)
        
        cardStackView.addArrangedSubview(headStackView)
        cardStackView.addArrangedSubview(cardImageContainer)
        cardStackView.addArrangedSubview(playButtonContainer)

        cardImageContainer.addSubview(cardImageView)
        playButtonContainer.addSubview(playButton)
        
        cardNumberContainer.addSubview(cardNumberLabel)
        closeButtonContainer.addSubview(closeButton)
        
        headStackView.addArrangedSubview(cardNumberContainer)
        headStackView.addArrangedSubview(closeButtonContainer)
    }

    func setupViewAttributes() {
        self.backgroundColor = UIColor(red: 0.46, green: 0.45, blue: 0.90, alpha: 1.00)
        cardStackView.axis = .vertical
        cardStackView.alignment = .fill
        cardStackView.spacing = 16
    }


    func setupConstraints() {
        cardStackView.translatesAutoresizingMaskIntoConstraints = false
        cardNumberContainer.translatesAutoresizingMaskIntoConstraints = false
        cardCheckedContainer.translatesAutoresizingMaskIntoConstraints = false
        playButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        headStackView.translatesAutoresizingMaskIntoConstraints = false
        closeButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            closeButtonContainer.topAnchor.constraint(equalTo: headStackView.topAnchor),
            closeButton.topAnchor.constraint(equalTo: closeButtonContainer.topAnchor, constant: 28),
            closeButtonContainer.trailingAnchor.constraint(equalTo: headStackView.trailingAnchor),
            closeButton.trailingAnchor.constraint(equalTo: closeButtonContainer.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            headStackView.topAnchor.constraint(equalTo: cardStackView.topAnchor),
            headStackView.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            headStackView.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
//            headStackView.heightAnchor.constraint(equalToConstant: frame.height*0.2),
            headStackView.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor, constant: -frame.height*0.8)
        ])

        NSLayoutConstraint.activate([
            cardStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            cardStackView.topAnchor.constraint(equalTo: topAnchor),
            cardStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            cardStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            cardNumberContainer.topAnchor.constraint(equalTo: headStackView.topAnchor),
            cardNumberLabel.leadingAnchor.constraint(equalTo: cardNumberContainer.leadingAnchor, constant: 26),
            cardNumberLabel.topAnchor.constraint(equalTo: cardNumberContainer.topAnchor, constant: 30),
            cardNumberLabel.trailingAnchor.constraint(equalTo: cardNumberContainer.trailingAnchor),
            
        ])

//        NSLayoutConstraint.activate([
//            cardCheckedIcon.leadingAnchor.constraint(equalTo: cardCheckedContainer.leadingAnchor),
//            cardCheckedIcon.topAnchor.constraint(equalTo: cardCheckedContainer.topAnchor, constant: 34),
//            cardCheckedIcon.trailingAnchor.constraint(equalTo: cardCheckedContainer.trailingAnchor, constant: 28),
//            cardCheckedIcon.bottomAnchor.constraint(equalTo: cardCheckedContainer.bottomAnchor)
//        ])
        
        print("aaaa")
        print(cardImageContainer.centerXAnchor)
        NSLayoutConstraint.activate([
            cardImageContainer.topAnchor.constraint(equalTo: headStackView.bottomAnchor),
            cardImageContainer.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            cardImageContainer.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            cardImageContainer.bottomAnchor.constraint(equalTo: playButtonContainer.topAnchor),
            cardImageView.centerXAnchor.constraint(equalTo: cardImageContainer.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: cardImageContainer.centerYAnchor),
        
        ])
        
        NSLayoutConstraint.activate([
            
            playButtonContainer.topAnchor.constraint(equalTo: cardStackView.bottomAnchor, constant: -frame.height*0.2),
            playButtonContainer.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            playButtonContainer.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            playButtonContainer.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor),
//            playButton.topAnchor.constraint(equalTo: playButtonContainer.topAnchor, constant: 20),
            playButton.centerXAnchor.constraint(equalTo: playButtonContainer.centerXAnchor),
            playButton.widthAnchor.constraint(equalToConstant: 221),
            playButton.heightAnchor.constraint(equalToConstant: 52)
        ])
    }
}
