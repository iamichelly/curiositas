//
//  TextConstants.swift
//  curiositas
//
//  Created by alexdamascena on 16/09/22.
//

import Foundation


class TextConstants {
    
    static let shared = TextConstants()
    private init(){}
    
    let HOW_TO_PLAY_INSTRUCTION = "Curiositas deve ser jogado em grupo. Uma pessoa deve ser designada como mediadora e detentora da curiosidade a ser descoberta. As outras pessoas devem se dividir em dois grupos. Ao completar essa tarefa, a pessoa mediadora deve escolher o tema e mostrar uma  palavra-chave para o grupo 1 e outra palavra-chave para o grupo 2. \n\nLembre-se, a palavra-chave te guiará para a descoberta da curiosidade. Dessa forma, o objetivo de cada grupo é descobrir primeiro a frase que mais se aproxima da curiosidade. Os grupos deverão fazer perguntas para descobrir a curiosidade que está na carta.\n\nO mediador só pode responder às perguntas usando Sim, Não ou Não é relevante. Se a resposta ainda não for suficientemente clara, os jogadores devem seguir a interpretação da pessoa narradora.\n\nCaso o mediador sinta que os grupos chegaram em um impasse, deve dar dicas."
    
    
    let EXAMPLE_INSTRUCTION = "Uma passagem típica de uma partida pode ser:\n\nGrupor 1: tem a ver com algum mamífero?\nNarrador: Não\nGrupo 2: tem a ver com o cérebro de algum mamífero\nNarrador: Sim"
    
    let END_GAME_INSTRUCTION = "Quando o narrador considerar que a frase se aproxima de forma satisfatória a curiosidade na carta, ele pode concluir o jogo e ler a curiosidade completa.\n"


}
