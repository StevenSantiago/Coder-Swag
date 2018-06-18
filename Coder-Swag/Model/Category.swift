//
//  Category.swift
//  Coder-Swag
//
//  Created by Steven on 6/17/18.
//  Copyright © 2018 Steven Santiago. All rights reserved.
//

import Foundation

struct Category {
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title:String, imageName: String){
        self.title = title;
        self.imageName = imageName
    }
}
