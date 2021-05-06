//
//  ContentView.swift
//  YouRock3
//
//  Created by admin on 4/28/21.
//

import SwiftUI

//Data Model: Teachers have Classes, Classes have rosters of Students, and Students have a number of rocks that are awarded

struct Teacher : Hashable {
    var id = UUID()
    var prefix : String
    var firstName : String
    var lastName : String
    var classes : [Class]
}

struct Class: Hashable {
    var id = UUID()
    var period : String
    var className : String
    var roster : [Student]
}

struct Student: Hashable {
    var id = UUID()
    var firstName = String()
    var lastName = String()
    var numRocks = 0
}

struct SELCategory: Hashable {
    var id = UUID()
    var categoryName : String
    var subCategories : [String]
}

var teacher1 : Teacher = Teacher(prefix: "Mr.", firstName: "Matthew", lastName: "Vonderheide", classes: [class1, class2])

var class1 : Class = Class(period: "1", className: "App Dev with Swift", roster: [student1, student2, student3, student4, student5, student6] )

var class2 : Class = Class(period: "2", className: "Exploring Computer Science", roster: [] )

var student1 : Student = Student(firstName: "Miguel", lastName: "Sanchez", numRocks: 6)

var student2 : Student = Student(firstName: "Dimitri", lastName: "Villalobos", numRocks: 5)

var student3 : Student = Student(firstName: "Smadar", lastName: "Bergman", numRocks: 4)

var student4 : Student = Student(firstName: "Kevin", lastName: "McQuown", numRocks: 8)

var student5 : Student = Student(firstName: "Daniel", lastName: "Bang", numRocks: 7)

var student6 : Student = Student(firstName: "Mia", lastName: "Harris", numRocks: 9)

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(
                    destination: WelcomeScreen2( rosterWelcomeScreen2 : teacher1.classes[0].roster),
                    label: {
                        Text("View Student Data")
                            .padding(5)
                            .background(Color.blue)
                            .cornerRadius(8)
                            .foregroundColor(.white)
                            .padding(5)
                        
                    })
                
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
