//
//  PlayScreenViewController.swift
//  curiositas
//
//  Created by michellyes on 14/09/22.
//

import UIKit

class PlayScreenViewController: UIViewController {
    
    let playScreenView = PlayScreenView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = playScreenView
        playScreenView.delegate = self
        
    }
}

extension PlayScreenViewController: CuriositasButtonDelegate {
    func didUserTapButton() {
        let playScreen = FirstTeamViewController()
        navigationController?.pushViewController(playScreen, animated: false)
    }
}



