//
//  CallFriendsView.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class CallFriendsView: UIView {
    
    let background: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.CALL_FRIENDS)
        return UIImageView(image: image)
    }()
    
    let callFriendsInformation = CallFriendsInformation()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


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
