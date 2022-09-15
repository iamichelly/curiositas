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


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
