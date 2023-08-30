//
//  ContentView.swift
//  BooksLibrary
//
//  Created by Syed Raza on 8/29/23.
//

import SwiftUI

struct ContentView: View {
    // moc -> managedObjectContext
    @Environment(\.managedObjectContext) var moc
    @FetchRequest (sortDescriptors: []) var students: FetchedResults <Student>
    var body: some View {
        VStack {
            List(students) { student in
                Text(student.name ?? "Unknown")
            }
            Button("Add") {
                let firstName = ["John", "Harry", "Luna", "Ron"]
                let lastName = ["Granger","Lovegood","potter","Weasley"]
                let chosenFirstName = firstName.randomElement()
                let chosenLastName = lastName.randomElement()
            let student = Student(context: moc)
                student.id = UUID()
//                student.name = "\(String(describing: chosenFirstName)) \(String(describing: chosenLastName))"
                
                if let firstName = chosenFirstName, let lastName = chosenLastName {
                    student.name = "\(firstName) \(lastName)"
                } else {
                    
                    // Handle the case where either or both first name and last name are nil.
                    student.name = "Unknown"
                }

                try? moc.save()
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
