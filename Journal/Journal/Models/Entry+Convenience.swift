//
//  Entry+Convenience.swift
//  Journal
//
//  Created by Christopher Aronson on 5/27/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

import Foundation
import CoreData

extension Entry {

    convenience init(title: String,
                     bodyText: String,
                     timestamp: Date = Date(),
                     identifier: String = UUID().uuidString,
                     context: NSManagedObjectContext = CoreDataStack.shared.mainContext) {

        self.init(context: context)

        self.title = title
        self.bodyText = bodyText
        self.timestamp = timestamp
        self.identifier = identifier

    }
}
