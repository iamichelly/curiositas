//
//  OneWordCarouselDataSource.swift
//  curiositas
//
//  Created by alexdamascena on 18/09/22.
//

import Foundation


protocol OneWordCarouselDataSource: AnyObject {
    
    func didUserTapNextWordCarousel() -> String
    func didUserTapBeforeWordCarousel() -> String
    func setFirstWordAppears() -> String
}
