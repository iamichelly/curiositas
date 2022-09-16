//
//  TitleAndSubtitle.swift
//  curiositas
//
//  Created by alexdamascena on 16/09/22.
//

import UIKit

class TitleAndSubtitle: UIStackView {
    
    let titleContaienr = UIView()
    
    let title: UILabel = {
        let label = UILabel()
        label.font = .rounded(ofSize: 32, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    let subTitleContainer = UIView()
    
    let subTitle: UILabel = {
        let label = UILabel()
        label.font = .rounded(ofSize: 18, weight: .medium)
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = .white
        return label
    }()
    
    init(_ title: String, _ subtitle: String){
        super.init(frame: .zero)
        setupStack()
        setupView()
        self.title.text = title
        self.subTitle.text = subtitle
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupStack()
        setupView()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupStack() {
        self.alignment = .leading
        self.axis = .vertical
        self.distribution = .fill
        self.spacing = 24
    }
}

extension TitleAndSubtitle: AnyView {
    
    func addSubviews() {
        self.addArrangedSubview(titleContaienr)
        self.addArrangedSubview(subTitleContainer)
        
        titleContaienr.addSubview(title)
        subTitleContainer.addSubview(subTitle)
    }
    
    func setupConstraints(){
        
        title.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: titleContaienr.topAnchor),
            title.leadingAnchor.constraint(equalTo: titleContaienr.leadingAnchor, constant: 32),
            title.trailingAnchor.constraint(equalTo: titleContaienr.trailingAnchor, constant: -32),
            title.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: title.bottomAnchor),
            subTitle.leadingAnchor.constraint(equalTo: subTitleContainer.leadingAnchor, constant: 32),
            subTitle.trailingAnchor.constraint(equalTo: subTitleContainer.trailingAnchor, constant: -32),
            subTitle.bottomAnchor.constraint(equalTo: subTitleContainer.bottomAnchor)
        ])

    }
}
