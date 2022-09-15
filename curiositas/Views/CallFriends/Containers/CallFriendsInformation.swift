//
//  CallFriendsInformation.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class CallFriendsInformation: UIView {
    
    let callFriends: UILabel = {
        let label = UILabel()
        label.text = "Jogue com amigos!"
        label.font = .rounded(ofSize: 30, weight: .black)
        label.numberOfLines = 0
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    let callFriendsDescription: UILabel = {
        let label = UILabel()
        label.text = "Se divirta com os amigos"
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
