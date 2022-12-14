//
//  CallFriendsView+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

extension CallFriendsView: AnyView {
    
    func addSubviews() {
        self.addSubview(background)
        self.addSubview(callFriendsInformation)
    }
    
    func setupConstraints() {
        background.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            background.topAnchor.constraint(equalTo: topAnchor),
            background.leadingAnchor.constraint(equalTo: leadingAnchor),
            background.bottomAnchor.constraint(equalTo: bottomAnchor),
            background.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        callFriendsInformation.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            callFriendsInformation.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24),
            callFriendsInformation.leadingAnchor.constraint(equalTo: leadingAnchor),
            callFriendsInformation.trailingAnchor.constraint(equalTo: trailingAnchor),
            callFriendsInformation.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor, multiplier: 0.3)
        ])
    }
}
