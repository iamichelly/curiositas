//
//  StartPlayViewController.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class StartPlayViewController: UIViewController {
    
    let startPlayView = StartPlayView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = startPlayView
    }
}
