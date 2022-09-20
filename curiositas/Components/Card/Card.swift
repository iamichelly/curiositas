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
    let cardStackView: UIStackView = UIStackView()
    let cardNumberContainer: UIView = UIView()
    let cardCheckedContainer: UIView = UIView()
    let cardImageContainer: UIView = UIView()
    let path: UIBezierPath = UIBezierPath()
    
    lazy var cardImageView: UIImageView = {
        let cardImageView = UIImageView(image: UIImage(named: "logo"))
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.contentMode = .scaleAspectFit

        return cardImageView
    }()

    lazy var cardNumberLabel: UILabel = {
        let label: UILabel = UILabel()
        let labelAttributes = [NSAttributedString.Key.font: UIFont.rounded(ofSize: 20, weight: .bold)]
        let attributedText = NSMutableAttributedString(string: String(cardNumber), attributes: labelAttributes)
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
        self.cardNumber = 1
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
        path.move(to: CGPoint(x: 0, y: frame.height * 0.3))
        path.addCurve(to: CGPoint(x: frame.width, y: frame.height * 0.45), controlPoint1: CGPoint(x: frame.width * 0.5, y: frame.height * 0.25), controlPoint2: CGPoint(x: frame.width*0.9, y: frame.height * 0.4))
        path.addLine(to: CGPoint(x: frame.width, y: frame.height * 0.7))
        path.addCurve(to: CGPoint(x: 0, y: frame.height * 0.6), controlPoint1: CGPoint(x: frame.width * 0.75, y: frame.height * 0.75), controlPoint2: CGPoint(x: frame.width*0.3, y: frame.height * 0.6))
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
        cardStackView.addSubview(cardNumberContainer)
        cardStackView.addSubview(cardCheckedContainer)
        cardStackView.addSubview(cardImageContainer)
        cardImageContainer.addSubview(cardImageView)
        cardNumberContainer.addSubview(cardNumberLabel)
        cardCheckedContainer.addSubview(cardCheckedIcon)
    }

    func setupViewAttributes() {
        self.backgroundColor = UIColor(red: 0.46, green: 0.45, blue: 0.90, alpha: 1.00)
        cardStackView.axis = .horizontal
        cardStackView.alignment = .fill
        cardStackView.spacing = 16
    }


    func setupConstraints() {
        cardStackView.translatesAutoresizingMaskIntoConstraints = false
        cardNumberContainer.translatesAutoresizingMaskIntoConstraints = false
        cardCheckedContainer.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            cardStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            cardStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            cardStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            cardStackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            cardNumberContainer.topAnchor.constraint(equalTo: cardStackView.topAnchor),
            cardNumberLabel.leadingAnchor.constraint(equalTo: cardNumberContainer.leadingAnchor, constant: 26),
            cardNumberLabel.topAnchor.constraint(equalTo: cardNumberContainer.topAnchor, constant: 30),
            cardNumberLabel.trailingAnchor.constraint(equalTo: cardNumberContainer.trailingAnchor),
            cardNumberLabel.bottomAnchor.constraint(equalTo: cardNumberContainer.bottomAnchor)
        ])

        NSLayoutConstraint.activate([
            cardCheckedIcon.leadingAnchor.constraint(equalTo: cardCheckedContainer.leadingAnchor),
            cardCheckedIcon.topAnchor.constraint(equalTo: cardCheckedContainer.topAnchor, constant: 34),
            cardCheckedIcon.trailingAnchor.constraint(equalTo: cardCheckedContainer.trailingAnchor, constant: 28),
            cardCheckedIcon.bottomAnchor.constraint(equalTo: cardCheckedContainer.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            cardImageContainer.leadingAnchor.constraint(equalTo: cardStackView.leadingAnchor),
            cardImageContainer.topAnchor.constraint(equalTo: cardStackView.topAnchor),
            cardImageContainer.trailingAnchor.constraint(equalTo: cardStackView.trailingAnchor),
            cardImageContainer.bottomAnchor.constraint(equalTo: cardStackView.bottomAnchor),
            cardImageView.leadingAnchor.constraint(equalTo: cardImageContainer.leadingAnchor),
            cardImageView.topAnchor.constraint(equalTo: cardImageContainer.topAnchor),
            cardImageView.trailingAnchor.constraint(equalTo: cardImageContainer.trailingAnchor),
            cardImageView.bottomAnchor.constraint(equalTo: cardImageContainer.bottomAnchor),
        ])
    }
}
