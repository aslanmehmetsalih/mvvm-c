//
//  MovieDetailTopViewModel.swift
//  mvvm-c
//
//  Created by Mehmet Salih Aslan on 26.04.2020.
//  Copyright © 2020 Mehmet Salih Aslan. All rights reserved.
//

import Foundation

protocol MovieDetailTopViewDataSource: class {
    
    var imageUrl: URL? { get }
    var title: String? { get }
    var subtitle: String? { get }
    var year: String? { get }
    
}

protocol MovieDetailTopViewProtocol: MovieDetailTopViewDataSource {}

class MovieDetailTopViewModel: MovieDetailTopViewProtocol {
    
    var imageUrl: URL?
    var title: String?
    var subtitle: String?
    var year: String?
    
    init(with movieDetail: MovieDetail) {
        if let poster = movieDetail.poster {
            imageUrl = URL(string: poster)
        }
        title = movieDetail.title
        subtitle = movieDetail.type?.displayName
        year = movieDetail.year
    }
    
}
