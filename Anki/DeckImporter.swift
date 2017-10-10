//
//  DeckImporter.swift
//  Anki
//
//  Created by Adrien Cantérot on 10/10/2017.
//  Copyright © 2017 Adrien Cantérot. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DeckImporter {
    
    public init(context: NSManagedObjectContext) {
        self.context = context
    }

    public var url: URL?
    private var context: NSManagedObjectContext
    func `import`() {
        
    }
}
