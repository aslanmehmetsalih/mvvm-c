//
//  SearchMovieCoordinator.swift
//  mvvm-c
//
//  Created by Mehmet Salih Aslan on 5.05.2020.
//  Copyright © 2020 Mehmet Salih Aslan. All rights reserved.
//

import UIKit

protocol PushMovieDetailCoordinatorDelegate {
    func pushMovieDetailController(movie: Movie)
}

class SearchMoviesCoordinator: Coordinator, Startable {
    
    var childCoordinators: [Coordinator] = []
    let window: UIWindow?
    var rootViewController: UINavigationController!
    
    init(window: UIWindow?) {
        self.window = window
    }
    
    func start() {
        guard let window = self.window else { return }
        let viewController = getSearchMoviesController()
        rootViewController = BaseNavigationController(rootViewController: viewController)
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
    
    private func getSearchMoviesController() -> SearchMoviesController {
        let viewModel = SearchMoviesViewModel(coordinator: self)
        return SearchMoviesController(viewModel: viewModel)
    }
    
}

extension SearchMoviesCoordinator: PushMovieDetailCoordinatorDelegate, ImdbRoute {
    
    func pushMovieDetailController(movie: Movie) {
        let viewModel = MovieDetailViewModel(coordinator: self, movie: movie)
        let viewController = MovieDetailController(viewModel: viewModel)
        rootViewController.pushViewController(viewController, animated: true)
    }
    
}
