//
//  Category.swift
//  TodoIT
//
//  Created by Davide Soncin on 17/11/2019.
//  Copyright © 2019 Davide Soncin. All rights reserved.
//

import Foundation
import RealmSwift
import ChameleonFramework

class Category: Object {
    @objc dynamic var name : String = ""
    @objc dynamic var color : String = ""
    let items = List<Item>()
}
