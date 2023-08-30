//
//  BooksLibraryApp.swift
//  BooksLibrary
//
//  Created by Syed Raza on 8/29/23.
//

import SwiftUI

@main
struct BooksLibraryApp: App {
    @StateObject private var dataController = DataController()
 
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
