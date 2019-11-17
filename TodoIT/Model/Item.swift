//
//  Item.swift
//  TodoIT
//
//  Created by Davide Soncin on 17/11/2019.
//  Copyright © 2019 Davide Soncin. All rights reserved.
//

import Foundation
import RealmSwift

class Item: Object {
    @objc dynamic var title : String = ""
    @objc dynamic var done : Bool = false
    @objc dynamic var dateCreated: Date?
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}
