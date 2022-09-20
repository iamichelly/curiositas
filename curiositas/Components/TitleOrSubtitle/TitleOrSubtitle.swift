//
//  TitleAndSubtitle.swift
//  curiositas
//
//  Created by alexdamascena on 16/09/22.
//

import UIKit

class TitleOrSubtitle: UILabel {
    
//    let titleContaienr = UIView()

    let title: UILabel = {
        let label = UILabel()
        label.font = .rounded(ofSize: 32, weight: .bold)
        label.textColor = .white
        return label
    }()
    
//    let subTitleContainer = UIView()
    
    let subTitle: UILabel = {
        let label = UILabel()
        label.font = .rounded(ofSize: 18, weight: .medium)
        label.numberOfLines = 0
        label.sizeToFit()
        label.textColor = .white
        return label
    }()
    
    init(withText text: String){
        super.init(frame: .zero)
        self.text = text
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TitleOrSubtitle {
    
    func configure(with model: TitleOrSubtitleModel){
        self.textColor = .white
        
        
        if model.type == .title {
            self.font = .rounded(ofSize: 32, weight: .bold)
        }
        
        if model.type == .subtitle {
            self.font = .rounded(ofSize: 18, weight: .medium)
            self.numberOfLines = 0
            self.sizeToFit()
        }
    }
}
