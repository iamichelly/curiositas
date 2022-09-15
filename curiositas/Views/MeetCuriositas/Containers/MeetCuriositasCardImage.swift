//
//  MeetCuriositasCardImage.swift
//  curiositas
//
//  Created by alexdamascena on 14/09/22.
//

import UIKit

class MeetCuriositasCardImage: UIView {
    
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
}


extension MeetCuriositasCardImage: AnyView {
    func addSubviews() {
        self.addSubview(showToGroupCardImage)
        self.addSubview(showToGroupMainCardImage)
    }
    
    func setupConstraints() {
        
        showToGroupCardImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            showToGroupCardImage.topAnchor.constraint(equalTo: topAnchor),
            showToGroupCardImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            showToGroupCardImage.widthAnchor.constraint(equalToConstant: 140.HAdapted)
        ])
        
        showToGroupMainCardImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            showToGroupMainCardImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant:  -16),
            showToGroupMainCardImage.topAnchor.constraint(equalTo: showToGroupCardImage.topAnchor, constant: 42.VAdapted),
            showToGroupMainCardImage.widthAnchor.constraint(equalToConstant: 140.HAdapted)
        ])
    }
    
    
}
