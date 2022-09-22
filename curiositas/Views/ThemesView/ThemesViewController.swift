//
//  ThemesViewController.swift
//  curiositas
//
//  Created by sml on 14/09/22.
//

import UIKit

class ThemesViewController: UIViewController {

    let themesView = ThemesView()
    let teste = PlayScreenView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = themesView
        themesView.setCollectionViewDataSourceDelegate(dataSourceDelegate: self)
        themesView.questionButton.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)

    }

}

extension ThemesViewController: SFSymbolsButtonDelegate {
    func didUserTapButton(button: SFSymbolsButton) {
        let instructionView = InstructionViewController()
        navigationController?.pushViewController(instructionView, animated: true)
    }

    
}
