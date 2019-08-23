//
//  Expense+Convenience.swift
//  Master Your Money Build Week
//
//  Created by Seschwan on 8/22/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import Foundation
import CoreData

extension Expense {
    convenience init(amount: Double, category: String, context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {
        self.init(context: context)
        self.amount = amount
        self.category = category
        
    }
}
