//
//  RealmModel.swift
//  TrendMedia
//
//  Created by Mac Pro 15 on 2022/08/22.
//

import Foundation
import RealmSwift

class ShoppingList: Object {
    @Persisted var checkbox: Bool
    @Persisted var list: String?
    @Persisted var favorite: Bool
    
    @Persisted(primaryKey: true) var ObjectId: ObjectId
    
    convenience init(checkbox: Bool, list: String?, favorite: Bool) {
        self.init()
        self.checkbox = false
        self.list = list
        self.favorite = false
    }
}
