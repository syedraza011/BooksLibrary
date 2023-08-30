//
//  ContentView.swift
//  BooksLibrary
//
//  Created by Syed Raza on 8/29/23.
//

import SwiftUI

struct ContentView: View {
    @FetchRequest (sortDescriptors: []) var students: FetchedResults <Student>
    var body: some View {
        VStack {
            List(students) { student in
                Text(student.name ?? "Unknown")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
