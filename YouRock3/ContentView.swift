//
//  ContentView.swift
//  YouRock3
//
//  Created by admin on 4/28/21.
//

import SwiftUI

struct Student: Hashable {
    var id = UUID()
    var name = String()
}

var student1 = Student(name: "Kevin")
var student2 = Student(name: "Smadar")
var student3 = Student(name: "Dimitri")
var course = [student1, student2, student3]

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                ForEach(course, id: \.self) { s in
                    NavigationLink(
                        destination: TeamMemberView(student: s),
                        label: {
                            Text(s.name)
                        })
                }
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
