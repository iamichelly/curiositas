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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViewHierarchy() {
        self.addSubview(cardStackView)
        cardStackView.addSubview(cardNumberContainer)
        cardStackView.addSubview(cardCheckedContainer)
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
    }
}
