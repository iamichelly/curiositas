//
//  ThemesConstants.swift
//  curiositas
//
//  Created by sml on 15/09/22.
//

import Foundation

class ThemesConstants {
    
    static let shared = ThemesConstants()
    private init(){}
    
    let THEMES_INFO: [Theme] = [Theme(theme: "Universo", cardsAmount: 10, cardsPlayed: 0, image: "universe"), Theme(theme: "Natureza", cardsAmount: 10, cardsPlayed: 0, image: "nature"), Theme(theme: "Arte", cardsAmount: 10, cardsPlayed: 0, image: "art"), Theme(theme: "Cultura", cardsAmount: 10, cardsPlayed: 0, image: "culture"),Theme(theme: "Cinema", cardsAmount: 10, cardsPlayed: 0, image: "movie"),Theme(theme: "Música", cardsAmount: 10, cardsPlayed: 0, image: "music"),Theme(theme: "Aleatório", cardsAmount: 10, cardsPlayed: 0, image: "random"),Theme(theme: "Esporte", cardsAmount: 10, cardsPlayed: 0, image: "sports")]
}
