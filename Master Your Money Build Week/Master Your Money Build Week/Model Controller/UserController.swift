//
//  UserController.swift
//  Master Your Money Build Week
//
//  Created by Seschwan on 8/22/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import Foundation
import CoreData

class UserController {
    
    func fetchUser() -> User? {
        let fetchRequest: NSFetchRequest<User> = User.fetchRequest()
        var user: User?
        let moc = CoreDataStack.shared.mainContext
        do {
            user = try moc.fetch(fetchRequest).first
        } catch {
            NSLog("There was an error getting the User from CoreData")
        }
        return user
    }
}
