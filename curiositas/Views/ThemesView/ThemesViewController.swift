//
//  ThemesViewController.swift
//  curiositas
//
//  Created by sml on 14/09/22.
//

import UIKit

class ThemesViewController: UIViewController {

    let themesView = ThemesView()
    let playScreen = PlayScreenView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = themesView
        themesView.setCollectionViewDataSourceDelegate(dataSourceDelegate: self)
        themesView.delegate = self
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

extension ThemesViewController: SFSymbolsButtonDelegate {
    func didUserTapButton() {
        let instructionView = SecondTeamViewController()
        navigationController?.pushViewController(instructionView, animated: true)
    }
    
}
