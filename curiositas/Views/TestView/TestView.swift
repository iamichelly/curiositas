//
//  UIView.swift
//  curiositas
//
//  Created by sml on 15/09/22.
//

import UIKit

class TestView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Temas"
        label.textColor = .white
        
        let fontSize: CGFloat = 32
        let systemFont = UIFont.systemFont(ofSize: fontSize, weight: .heavy)
        let roundedFont: UIFont
        if let descriptor = systemFont.fontDescriptor.withDesign(.rounded) {
           roundedFont = UIFont(descriptor: descriptor, size: fontSize)
        } else {
            roundedFont = systemFont
        }

        label.font = roundedFont
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

extension TestView: AnyView {
    func addSubviews() {
        self.addSubview(titleLabel)
    }
    
    func setupConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    
}
