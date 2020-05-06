//
//  SplashViewController.swift
//  mvvm-c
//
//  Created by Mehmet Salih Aslan on 24.04.2020.
//  Copyright © 2020 Mehmet Salih Aslan. All rights reserved.
//

import UIKit

final class SplashViewController: UIViewController {
    
    private weak var viewModel: SplashViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let coordinator = SplashCoordinator()
        let viewModel = SplashViewModel(coordinator: coordinator)
        self.viewModel = viewModel
        
        self.viewModel?.viewDidLoad()
    }
    
    deinit {
        debugPrint("deinit \(self)")
    }
    
}
