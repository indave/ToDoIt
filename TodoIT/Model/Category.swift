//
//  Category.swift
//  TodoIT
//
//  Created by Davide Soncin on 17/11/2019.
//  Copyright © 2019 Davide Soncin. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
}
