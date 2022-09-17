//
//  CloseButton.swift
//  curiositas
//
//  Created by alexdamascena on 17/09/22.
//

import UIKit

class CloseButton: UIView {
    
    struct Constants {
        static let CORNER_RADIUS: CGFloat = 19
    }
    
    let X: UIImageView = {
        let icon = UIImage(named: ImageConstants.shared.X_ICON)
        let imageView = UIImageView(image: icon)
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

extension CloseButton: AnyView {
    func addSubviews() {
        self.addSubview(X)

    }
    
    func setupConstraints() {
        X.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            X.centerXAnchor.constraint(equalTo: centerXAnchor),
            X.centerYAnchor.constraint(equalTo: centerYAnchor),
            X.heightAnchor.constraint(equalToConstant: 24),
            X.widthAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    func setupAdditionalConfiguration() {
        self.layer.masksToBounds = true
        self.layer.cornerRadius = Constants.CORNER_RADIUS
        self.backgroundColor = .white
    }
}
