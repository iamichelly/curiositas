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
        startPlayView.delegate = self
    }
}

extension StartPlayViewController: CuriositasButtonDelegate {
    func didUserTapButton() {
        let home = HomeViewController()
        self.navigationController?.pushViewController(home, animated: true)
    }
    
    func didUserTapOntherButton() {
        let instruction = InstructionViewController()
        self.navigationController?.pushViewController(instruction, animated: true)
    }
}
//