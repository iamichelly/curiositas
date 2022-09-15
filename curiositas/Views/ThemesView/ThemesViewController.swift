//
//  ThemesViewController.swift
//  curiositas
//
//  Created by sml on 14/09/22.
//

import UIKit

class ThemesViewController: UIViewController {

    let themesView = ThemesView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = themesView
        themesView.setCollectionViewDataSourceDelegate(dataSourceDelegate: self)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    


}
