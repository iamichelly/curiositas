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



