//
//  MeetCuriositasView.swift
//  curiositas
//
//  Created by alexdamascena on 13/09/22.
//

import UIKit

class MeetCuriositasView: UIView {
    
    weak var delegate: MeetCuriositasDelegate?
    
    let background: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.MEET_CURIOSITAS)
        return UIImageView(image: image)
    }()
    
    let onboardingStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .fill
        stack.distribution = .fillProportionally
        return stack
    }()
    
    let informationStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .center
        return stack
    }()
    
    let jumpOnboardingContainer = UIView()
    let imagesContainer = UIView()
    
    let jumpOnboardingLabel: UILabel = {
        let label = UILabel()
        label.text = "pular"
        label.font = .rounded(ofSize: 18, weight: .heavy)
        label.textColor = .white
        return label
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
    
    let showToGroupCardImage: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.SHOW_CARD_GROUP)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let showToGroupMainCardImage: UIImageView = {
        let image = UIImage(named: ImageConstants.shared.SHOW_CARD_GROUP)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTapJumpOnboarding(){
        delegate?.didUserTapJumpOnboarding()
    }
}


