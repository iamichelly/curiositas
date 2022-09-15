//
//  TestViewController.swift
//  curiositas
//
//  Created by sml on 15/09/22.
//

import UIKit

class TestViewController: UIViewController {

    let testView = TestView()
    
    private var theme: Theme?
    
    init(with theme: Theme){
        super.init(nibName: nil, bundle: nil)
        self.theme = theme
        testView.titleLabel.text = theme.theme

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = testView
        self.view.backgroundColor = .systemPink

        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    


}

