//
//  MeetCuriositasView.swift
//  curiositas
//
//  Created by alexdamascena on 13/09/22.
//

import UIKit

class MeetCuriositasView: UIView {
        
    let meetCuriositasInformation = MeetCuriositasInformation()
    let meetCuriositasCardImage = MeetCuriositasCardImage()
    
    let background: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.MEET_CURIOSITAS)
        return UIImageView(image: image)
    }()
    
    let onboardingStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}




