//
//  DataService.swift
//  Coder-Swag
//
//  Created by Steven on 6/18/18.
//  Copyright © 2018 Steven Santiago. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService() // singleton
    
    private let categories = [
    Category(title: "SHIRTS", imageName: "shirts.png"),
    Category(title: "HOODIES", imageName: "hoodies.png"),
    Category(title: "HATS", imageName: "hats.png"),
    Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category]{
        return categories
    }
}
