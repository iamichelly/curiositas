//
//  FirstTeamViewController.swift
//  curiositas
//
//  Created by michellyes on 19/09/22.
//

import UIKit

class FirstTeamViewController: UIViewController {
    
    let firstTeamCard = FirstTeamCard()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = firstTeamCard
        firstTeamCard.delegate = self

    }
}

extension FirstTeamViewController: CuriositasButtonDelegate {
    func didUserTapButton() {
        let playScreen = SecondTeamViewController()
        navigationController?.pushViewController(playScreen, animated: false)
    }
}
