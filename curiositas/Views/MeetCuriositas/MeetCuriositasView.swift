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

extension MeetCuriositasView: AnyView {
    func addSubviews() {
        self.addSubview(background)
        self.addSubview(onboardingStack)
        
        onboardingStack.addArrangedSubview(jumpOnboardingContainer)
        onboardingStack.addArrangedSubview(informationStack)
        onboardingStack.addArrangedSubview(imagesContainer)
 
        jumpOnboardingContainer.addSubview(jumpOnboardingLabel)
        informationStack.addArrangedSubview(meetCuriositas)
        informationStack.addArrangedSubview(descriptionCuriositas)
        
        onboardingStack.addArrangedSubview(imagesContainer)
        imagesContainer.addSubview(showToGroupCardImage)
        imagesContainer.addSubview(showToGroupMainCardImage)
    }
    
    func setupConstraints() {
    
        background.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            background.topAnchor.constraint(equalTo: topAnchor),
            background.leadingAnchor.constraint(equalTo: leadingAnchor),
            background.bottomAnchor.constraint(equalTo: bottomAnchor),
            background.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        onboardingStack.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            onboardingStack.topAnchor.constraint(equalTo: topAnchor),
            onboardingStack.leadingAnchor.constraint(equalTo: leadingAnchor),
            onboardingStack.trailingAnchor.constraint(equalTo: trailingAnchor),
            onboardingStack.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        jumpOnboardingContainer.translatesAutoresizingMaskIntoConstraints = false
        informationStack.translatesAutoresizingMaskIntoConstraints = false
        imagesContainer.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            jumpOnboardingContainer.heightAnchor.constraint(equalTo: onboardingStack.heightAnchor, multiplier: 0.1/4),
            jumpOnboardingContainer.topAnchor.constraint(equalTo: onboardingStack.topAnchor, constant: 56),
            informationStack.heightAnchor.constraint(equalTo: onboardingStack.heightAnchor, multiplier: 1/4),
            imagesContainer.heightAnchor.constraint(equalTo: onboardingStack.heightAnchor, multiplier: 2.4/4)
        ])
        
        jumpOnboardingLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            jumpOnboardingLabel.trailingAnchor.constraint(equalTo: jumpOnboardingContainer.trailingAnchor, constant: -32),
            jumpOnboardingLabel.centerYAnchor.constraint(equalTo: jumpOnboardingContainer.centerYAnchor)
        ])
        
        meetCuriositas.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            meetCuriositas.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        descriptionCuriositas.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionCuriositas.widthAnchor.constraint(equalToConstant: 290)
        ])
        
        showToGroupCardImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            showToGroupCardImage.topAnchor.constraint(equalTo: imagesContainer.topAnchor),
            showToGroupCardImage.leadingAnchor.constraint(equalTo: imagesContainer.leadingAnchor, constant: 8)
        ])
        
        showToGroupMainCardImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            showToGroupMainCardImage.topAnchor.constraint(equalTo: imagesContainer.topAnchor, constant: 42),
            showToGroupMainCardImage.trailingAnchor.constraint(equalTo: imagesContainer.trailingAnchor, constant: -8)
        ])
    }
    
    func setupAdditionalConfiguration() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapJumpOnboarding))
        jumpOnboardingLabel.isUserInteractionEnabled = true
        jumpOnboardingLabel.addGestureRecognizer(tapGesture)
    }
}
