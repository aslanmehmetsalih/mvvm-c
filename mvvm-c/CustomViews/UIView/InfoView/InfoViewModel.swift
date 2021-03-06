//
//  InfoViewModel.swift
//  mvvm-c
//
//  Created by Mehmet Salih Aslan on 26.04.2020.
//  Copyright © 2020 Mehmet Salih Aslan. All rights reserved.
//

import Foundation

protocol InfoViewDataSource: class {
    
    var title: String? { get }
    var subtitle: String? { get }
    
}

protocol InfoViewProtocol: InfoViewDataSource {}

class InfoViewModel: InfoViewProtocol {
    
    var title: String?
    var subtitle: String?
    
}
