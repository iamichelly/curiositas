//
//  MeetCuriositasInformation.swift
//  curiositas
//
//  Created by alexdamascena on 14/09/22.
//

import UIKit

class MeetCuriositasInformation: UIView {
    
    let informationStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        stack.distribution = .fillEqually
        stack.spacing = 16
        return stack
    }()
    
    let meetCuriositas: UILabel = {
        let label = UILabel()
        label.text = "Conheça Curiositas!"
        label.font = .rounded(ofSize: 30, weight: .black)
        label.numberOfLines = 0
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    let descriptionCuriositas: UILabel = {
        let label = UILabel()
        label.text = "Um jogo de cartas competitivo para animar a garotada e aprender bastante."
        label.font = .rounded(ofSize: 18, weight: .medium)
        label.numberOfLines = 0
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = .white
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

extension MeetCuriositasInformation: AnyView {
    func addSubviews() {
        self.addSubview(informationStack)
        
        informationStack.addArrangedSubview(meetCuriositas)
        informationStack.addArrangedSubview(descriptionCuriositas)
    }
    
    func setupConstraints() {
        informationStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            informationStack.topAnchor.constraint(equalTo: topAnchor),
            informationStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            informationStack.trailingAnchor.constraint(equalTo: trailingAnchor),
            informationStack.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        meetCuriositas.translatesAutoresizingMaskIntoConstraints = false
        descriptionCuriositas.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            meetCuriositas.widthAnchor.constraint(equalToConstant: 200),
            descriptionCuriositas.widthAnchor.constraint(equalToConstant: 290)
        ])
        
    }
    
    
}
