//
//  DatabaseModel.swift
//  QuizApp
//
//  Created by Nitish Dash on 25/07/17.
//  Copyright © 2017 Nitish Dash. All rights reserved.
//

import Foundation
import RealmSwift



//Dirty solution! BE SURE TO IMPLEMENT LIST OF OBJECTS OF QUESTIONS IN NEXT UPDATION

class DatabaseModel: Object{
    
    @objc dynamic var title = ""
    @objc dynamic var category = ""
    @objc dynamic var id = 0
    @objc dynamic var q1 = ""
    @objc dynamic var a1q1 = ""
    @objc dynamic var a2q1 = ""
    @objc dynamic var a3q1 = ""
    @objc dynamic var a4q1 = ""
    @objc dynamic var q1a = 0
    @objc dynamic var q2 = ""
    @objc dynamic var a1q2 = ""
    @objc dynamic var a2q2 = ""
    @objc dynamic var a3q2 = ""
    @objc dynamic var a4q2 = ""
    @objc dynamic var q2a = 0
    @objc dynamic var q3 = ""
    @objc dynamic var a1q3 = ""
    @objc dynamic var a2q3 = ""
    @objc dynamic var a3q3 = ""
    @objc dynamic var a4q3 = ""
    @objc dynamic var q3a = 0
    @objc dynamic var q4 = ""
    @objc dynamic var a1q4 = ""
    @objc dynamic var a2q4 = ""
    @objc dynamic var a3q4 = ""
    @objc dynamic var a4q4 = ""
    @objc dynamic var q4a = 0
    @objc dynamic var q5 = ""
    @objc dynamic var a1q5 = ""
    @objc dynamic var a2q5 = ""
    @objc dynamic var a3q5 = ""
    @objc dynamic var a4q5 = ""
    @objc dynamic var q5a = 0
    

override static func primaryKey() -> String? {
    return "id"
}

    @objc func incrementID() -> Int {
        let realm = try! Realm()
        return (realm.objects(DatabaseModel.self).max(ofProperty: "id") as Int? ?? 0) + 1
    }

}
