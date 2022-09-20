//
//  UIView.swift
//  curiositas
//
//  Created by sml on 19/09/22.
//

import UIKit

class Popup: UIView {
    let buttonOutside: UIButton = {
        let buttonAux = UIButton()
        
        buttonAux.tintColor = UIColor.clear
        var configuration = UIButton.Configuration.filled()
        buttonAux.configuration = configuration
        
        return buttonAux
    }()

    
    let titleLabelContainer = UIView()
    let descriptionLabelContainer = UIView()
    let popupButtonContainer = UIView()
    let imageContainer = UIView()

    

    let titleLabel: YellowTitle = {
        let yellowTitle = YellowTitle(withText: .firstPopUp)
        yellowTitle.numberOfLines = 0
        yellowTitle.sizeToFit()
        yellowTitle.textAlignment = .center
        return yellowTitle
    }()
    
    let descriptionLabel: UILabel = {
        let title = UILabel()
        title.font = .rounded(ofSize: 20, weight: .medium)
        title.textColor = .white
        title.textAlignment = .center
        title.numberOfLines = 0
        title.sizeToFit()
        return title
    }()
    
    let image: UIImageView =  {
        let imageAux = UIImageView()
        imageAux.contentMode = .scaleAspectFit
        return imageAux
    }()

    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 0
        return stackView
    }()
    
    let popupButton: CuriositasButton = {
       let button = CuriositasButton()
        let model = CuriositasButtonViewModel(title: .ok,
                                              type: .filled)
        button.configure(with: model)
        return button
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        buttonOutside.addTarget(self, action: #selector(didUserTapQuestionButton), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


extension Popup {
    func configure(with model: PopupViewModel){
        titleLabel.text = model.type == .mediatorPopUp ? "A partir de agora é com o mediador." : "HORA DAS PERGUNTAS!"
        descriptionLabel.text = model.type == .mediatorPopUp ? "mostre apenas quando solicitado" : "Os times irão fazer perguntas baseadas no tema e palavras-chaves para chegar na curiosidade a ser descoberta!"
        if (model.type == .mediatorPopUp) {
            let imageContent = UIImage(named: "pop_up")
            image.image = imageContent
            NSLayoutConstraint.activate([
                image.topAnchor.constraint(equalTo: imageContainer.topAnchor, constant: 24),
                image.leadingAnchor.constraint(equalTo: imageContainer.leadingAnchor),
                image.centerXAnchor.constraint(equalTo: imageContainer.centerXAnchor),
                imageContainer.bottomAnchor.constraint(equalTo: image.bottomAnchor)
            ])
        }
        zoomIn()
        
      
    }
    
    @objc func didUserTapQuestionButton() {
        print("oi")
        zoomOut()
    }

}
