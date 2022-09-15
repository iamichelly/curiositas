//
//  CallFriendsView+AnyView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit


extension CallFriendsInformation: AnyView {
    
    func addSubviews() {
        self.addSubview(callFriends)
        self.addSubview(callFriendsDescription)
    }
    
    func setupConstraints() {
        callFriends.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            callFriends.centerXAnchor.constraint(equalTo: centerXAnchor),
            callFriends.widthAnchor.constraint(equalToConstant: 220)
        ])
        
 
        callFriendsDescription.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            callFriendsDescription.widthAnchor.constraint(equalToConstant: 290),
            callFriendsDescription.centerXAnchor.constraint(equalTo: centerXAnchor),
            callFriendsDescription.topAnchor.constraint(equalTo: callFriends.bottomAnchor, constant: 64)
        ])
        
    }
}
