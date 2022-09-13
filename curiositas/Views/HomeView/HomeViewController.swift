//
//  ViewController.swift
//  curiositas
//
//  Created by alexdamascena on 12/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeView = HomeView()
    var viewModel: CuriositasButtonViewModel
    
    init(viewModel: CuriositasButtonViewModel = CuriositasButtonViewModel()){
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = homeView
        viewModel.delegate = self
        homeView.delegate = self
    }
}

extension HomeViewController: CuriositasButtonViewModelDelegate {
    
    func didUserTap() {
        let playScreen = PlayViewController()
        navigationController?.pushViewController(playScreen, animated: true)
    }
}



