//
//  ViewController.swift
//  curiositas
//
//  Created by alexdamascena on 12/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = homeView
        homeView.delegate = self
    }
}

extension HomeViewController: CuriositasButtonDelegate {
    
    func didUserTapButton() {
        let cardStackScreen = CardStackViewController()
        navigationController?.pushViewController(cardStackScreen, animated: true)
    }
}



