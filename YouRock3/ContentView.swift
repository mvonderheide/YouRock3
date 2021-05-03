//
//  ContentView.swift
//  YouRock3
//
//  Created by admin on 4/28/21.
//

import SwiftUI

struct Student: Hashable {
    var id = UUID()
    var firstName = String()
    var lastName = String()
    var numRocks = 0
    
}


var student1 = Student(firstName: "Kevin", lastName : "McQuown", numRocks : 73)
var student2 = Student(firstName: "Smadar", lastName : "Bergman", numRocks : 62)
var student3 = Student(firstName: "Dimitri", lastName : "Villalobos", numRocks : 48)

var course = [student1, student2, student3]

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: TeamMemberView(coursePassed : course),
                    label: {
                        Text("View Student Data")
                            .padding(5)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .padding(5)
                            
                    })
                
//                ForEach(course, id: \.self) { s in
//                    NavigationLink(
//                        destination: TeamMemberView(student: s),
//                        label: {
//                            Text(s.name)
//                        })
//                }
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
