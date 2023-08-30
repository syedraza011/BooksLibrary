//
//  CoreData.swift
//  BooksLibrary
//
//  Created by Syed Raza on 8/29/23.
//

import Foundation
import CoreData

class DataController : ObservableObject {
    
    let container = NSPersistentContainer (name: "BooksLibrary")
    init(){
        container.loadPersistentStores{ description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
