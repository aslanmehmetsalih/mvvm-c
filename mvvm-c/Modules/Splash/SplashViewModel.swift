//
//  SplashViewModel.swift
//  mvvm-c
//
//  Created by Mehmet Salih Aslan on 24.04.2020.
//  Copyright © 2020 Mehmet Salih Aslan. All rights reserved.
//

protocol SplashViewModelProtocol: class {
    
    func viewDidLoad()
    
}

final class SplashViewModel: SplashViewModelProtocol {
    
    private weak var coordinator: SplashCoordinator?
    
    init(coordinator: SplashCoordinator) {
        self.coordinator = coordinator
    }
    
    func viewDidLoad() {
        coordinator?.startSearchMoviesCoodinator()
    }
    
    deinit {
        debugPrint("deinit \(self)")
    }
    
}
