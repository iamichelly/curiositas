//
//  ThemesView+AnyView.swift
//  curiositas
//
//  Created by sml on 14/09/22.
//

import UIKit

extension ThemesView: AnyView {
    func addSubviews() {
        self.addSubview(themesStackView)
        
        titleLabelContainer.addSubview(titleLabel)
        questionButtonContainer.addSubview(questionButton)
        themesCollectionViewContainer.addSubview(themesCollectionView)

        themesStackView.addArrangedSubview(questionButtonContainer)
        themesStackView.addArrangedSubview(titleLabelContainer)
        themesStackView.addArrangedSubview(themesCollectionViewContainer)
    }
    
    func setupConstraints() {
        themesStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            themesStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            themesStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            themesStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            themesStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        titleLabelContainer.translatesAutoresizingMaskIntoConstraints = false
        questionButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        themesCollectionViewContainer.translatesAutoresizingMaskIntoConstraints = false

        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: titleLabelContainer.topAnchor, constant: -6),
            titleLabel.centerXAnchor.constraint(equalTo: titleLabelContainer.centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: titleLabelContainer.bottomAnchor)
        ])
        
        questionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questionButton.topAnchor.constraint(equalTo: questionButtonContainer.topAnchor),
            questionButton.trailingAnchor.constraint(equalTo: themesCollectionView.trailingAnchor),
            questionButton.bottomAnchor.constraint(equalTo: questionButtonContainer.bottomAnchor)
        ])
        
        themesCollectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            themesCollectionView.topAnchor.constraint(equalTo: themesCollectionViewContainer.topAnchor, constant: 16),
            themesCollectionView.trailingAnchor.constraint(equalTo: themesCollectionViewContainer.trailingAnchor),
            themesCollectionView.leadingAnchor.constraint(equalTo: themesCollectionViewContainer.leadingAnchor),
            themesCollectionView.bottomAnchor.constraint(equalTo: themesCollectionViewContainer.bottomAnchor)
        ])
        
    }
    
    func setupAdditionalConfiguration() {
        self.backgroundColor = UIColor(red: 0.13, green: 0.08, blue: 0.30, alpha: 1.00)
        
    }
    
}
