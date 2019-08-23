//
//  User+Convenience.swift
//  Master Your Money Build Week
//
//  Created by Seschwan on 8/22/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import Foundation
import CoreData

extension User {
    convenience init(income: Int32, username: String, context: NSManagedObjectContext = CoreDataStack.shared.mainContext)
    {
        self.init(context: context)
        self.income = income
        self.username = username
        
    }
}
