//
//  SplashCoordinator.swift
//  mvvm-c
//
//  Created by Mehmet Salih Aslan on 5.05.2020.
//  Copyright © 2020 Mehmet Salih Aslan. All rights reserved.
//

import UIKit

class SplashCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
        
    func startSearchMoviesCoodinator() {
        guard let window = UIApplication.shared.windows.first else { return }
        let coordinator = SearchMoviesCoordinator(window: window)
        coordinator.start()
    }
    
}
