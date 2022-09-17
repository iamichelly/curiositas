//
//  CardGame.swift
//  curiositas
//
//  Created by alexdamascena on 16/09/22.
//

import UIKit

class CardGame: UIView {

    let cardStack: UIStackView = {
        let stack = UIStackView()
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.axis = .vertical
        return stack
    }()
    
    let topView = UIView()
    let bottomView = UIView()
    
    let checkView = UIView()
    
    let checkbox = Checkbox()
    
    let keyWords = YellowTitle(withText: .keyWords)
    let firstGroup = CommonTextCard(withText: "Time 1: Vulcão")
    let secondGroup = CommonTextCard(withText: "Time 2: Marte")
    
    let curiosity = YellowTitle(withText: .curiosity)
    
    let closeButton = CloseButton()

    let markAsDoneLabel: UILabel = {
        let label = UILabel()
        label.font = .rounded(ofSize: 16, weight: .semibold)
        label.textColor = .white
        label.text = "Marcar como concluído"
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension CardGame: AnyView {
    
    func addSubviews() {
        
        self.addSubview(cardStack)
        
        cardStack.addArrangedSubview(topView)
        cardStack.addArrangedSubview(bottomView)
        
        topView.addSubview(closeButton)
        topView.addSubview(curiosity)
        
        
        bottomView.addSubview(checkView)
        bottomView.addSubview(keyWords)
        bottomView.addSubview(firstGroup)
        bottomView.addSubview(secondGroup)
        
        checkView.addSubview(checkbox)
        checkView.addSubview(markAsDoneLabel)
        
    }
    
    func setupConstraints() {
                
        cardStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardStack.topAnchor.constraint(equalTo: topAnchor),
            cardStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            cardStack.trailingAnchor.constraint(equalTo: trailingAnchor),
            cardStack.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        checkView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        
            checkView.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: -32.VAdapted),
            checkView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor),
            checkView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor),
        ])
        
        checkbox.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            checkbox.centerYAnchor.constraint(equalTo: checkView.centerYAnchor),
            checkbox.leadingAnchor.constraint(equalTo: checkView.leadingAnchor, constant: 38),
            checkbox.heightAnchor.constraint(equalToConstant: 24),
            checkbox.widthAnchor.constraint(equalToConstant: 24)
        ])
        
        markAsDoneLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            markAsDoneLabel.heightAnchor.constraint(equalTo: checkbox.heightAnchor),
            markAsDoneLabel.leadingAnchor.constraint(equalTo: checkbox.trailingAnchor, constant: 8),
            markAsDoneLabel.centerYAnchor.constraint(equalTo: checkView.centerYAnchor)
        ])
        
        keyWords.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            keyWords.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 16.VAdapted),
            keyWords.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor),
            keyWords.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor),
            keyWords.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        firstGroup.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstGroup.topAnchor.constraint(equalTo: keyWords.bottomAnchor, constant: 16.VAdapted),
            firstGroup.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor),
            firstGroup.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor),
            firstGroup.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        secondGroup.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            secondGroup.topAnchor.constraint(equalTo: firstGroup.bottomAnchor, constant: 8.VAdapted),
            secondGroup.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor),
            secondGroup.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor),
            secondGroup.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            closeButton.topAnchor.constraint(equalTo: topView.topAnchor, constant: 16.VAdapted),
            closeButton.trailingAnchor.constraint(equalTo: topView.trailingAnchor, constant: -16.HAdapted),
            closeButton.heightAnchor.constraint(equalToConstant: 38),
            closeButton.widthAnchor.constraint(equalToConstant: 38)
        ])
        
        curiosity.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            curiosity.topAnchor.constraint(equalTo: closeButton.bottomAnchor, constant: 16.VAdapted),
            curiosity.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
            curiosity.trailingAnchor.constraint(equalTo: topView.trailingAnchor),
            curiosity.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 32        
    }
}
