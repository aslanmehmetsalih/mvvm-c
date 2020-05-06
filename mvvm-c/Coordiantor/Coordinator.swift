//
//  Coordinator.swift
//  mvvm-c
//
//  Created by Mehmet Salih Aslan on 5.05.2020.
//  Copyright © 2020 Mehmet Salih Aslan. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
}
