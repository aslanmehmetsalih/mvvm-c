//
//  GetMovieDetailRequest.swift
//  mvvm-c
//
//  Created by Mehmet Salih Aslan on 23.04.2020.
//  Copyright © 2020 Mehmet Salih Aslan. All rights reserved.
//

import Alamofire

class GetMovieDetailRequest: ResponseObjectProtocol {
    
    typealias ResponseObjectType = MovieDetail
    
    var path: String = ""
    var method: HTTPMethod = .get
    var parameters: Parameters?
    
    init(id: String) {
        parameters = [:]
        parameters?["i"] = id
    }
    
}
