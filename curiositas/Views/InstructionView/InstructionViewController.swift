//
//  InstructionViewController.swift
//  curiositas
//
//  Created by alexdamascena on 15/09/22.
//

import UIKit

class InstructionViewController: UIViewController {
    
    let instructionView = InstructionView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = instructionView
    }

}
