//
//  LearningCuriositasInformation.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class LearningCuriositasInformation: UIView {
    
    let learningCuriositas: UILabel = {
        let label = UILabel()
        label.text = "Aprenda curiosidades!"
        label.font = .rounded(ofSize: 30, weight: .black)
        label.numberOfLines = 0
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    let learningCuriositasDescription: UILabel = {
        let label = UILabel()
        label.text = "Enquanto estimula a criatividade fazendo perguntas para descobrir a curiosidade."
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


