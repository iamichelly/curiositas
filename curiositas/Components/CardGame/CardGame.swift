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
    
    let knowledgeView: UITextField = {
        let label = UITextField()
        label.text = "Curiosidade"
        label.font = .rounded(ofSize: 24, weight: .black)
        label.textColor = .brown
        label.textAlignment = .center
        label.layer.shadowColor = UIColor.black.cgColor
        label.layer.shadowOffset = CGSize(width: 0, height: 2)
        label.layer.masksToBounds = false
        label.layer.shadowOpacity = 0.25
        return label
    }()

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
        
        bottomView.backgroundColor = .brown
        
        bottomView.addSubview(checkView)
        bottomView.addSubview(knowledgeView)
//        bottomView.addSubview(knowledgeView)
        
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
        
        knowledgeView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            knowledgeView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 16.VAdapted),
            knowledgeView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor),
            knowledgeView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor),
            knowledgeView.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        bottomView.backgroundColor = .yellow
        checkView.backgroundColor = .purple
    
    }
    
    func setupAdditionalConfiguration() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 32        
    }
}
