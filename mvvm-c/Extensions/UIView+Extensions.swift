//
//  UIView+Extensions.swift
//  mvvm-c
//
//  Created by Mehmet Salih Aslan on 25.04.2020.
//  Copyright © 2020 Mehmet Salih Aslan. All rights reserved.
//

import UIKit

protocol ReusableView: class {
    static var defaultReuseIdentifier: String { get }
}

extension ReusableView where Self: UIView {
    static var defaultReuseIdentifier: String {
        return String(describing: self)
    }
}
