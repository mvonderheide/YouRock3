//
//  Period1N.swift
//  YouRock3
//
//  Created by admin on 5/4/21.
//

import SwiftUI

struct Period1N: View {
    
    
    @State var rosterPeriod1N = [Student]()
    @State var selectedStudent = Student()
    @State var selectedStudentName = " "
    @State var selectedIndex = 0
    
    
    @State private var selectedFrameworkIndex = 0
    
    var names = ["Daniel Bang", "Smadar Bergman", "Mia Harris", "Kevin McQuown", "Miguel Sanchez", "Dimitri Villalobos"]
    
    
    //    struct Student: Hashable {
    //        var id = UUID()
    //        var firstName : String
    //        var lastName : String
    //        var numRocks : Int
    //    }
    
    //var student1 : Student = Student(firstName: "Miguel", lastName: "Sanchez", numRocks: 4)
    
    var body: some View {
        
        var roster : [Student] = rosterPeriod1N
        //names doesn't seem to populate in "onAppear" in time for the picker to use it so we are using  hard coded names
        
        // given a roster of Student, create an array of String of their first and last names - will that append to the back of the array or the front?
        
       // var names : [String] = [ ]
        
        
        
        
        VStack {
            Spacer()
            Text("1st Period")
                .font(.title)
            Text("App Dev with Swift")
                .font(.title3)
                .padding()
            Text("Choose a Student")
            //NavigationLink(
            //   destination: ChooseCategory(),
            //    label: {
            //     Text(student1.firstName + " " + student1.lastName)
            //  })
            
            //Drop down menu starts here (includes frameworks and state variable)
            
            
            Picker(selection: $selectedIndex, label: Text("")) {
                        ForEach(0 ..< names.count) {
                           Text(self.names[$0])
                        }
                     }
            
            //onAppear doesn't seem to populate the names array by the time we get to this picker
//            Picker(selection: $selectedIndex, label: Text("")) {
//                ForEach(names, id: \.self) {
//                    Text($0)
//                }
//            }
            NavigationLink(
                destination: ChooseCategory(),
                label: {
                    Text("\(names[selectedIndex])")
                })
            
            
            
            Image("rockWall1")
                .resizable()
                .scaledToFit()
                .frame(width: 500)
                .padding(50)
            
            NavigationLink(
                destination: WelcomeScreen2(),
                label: {
                    Text("Start Over")
                })
        }
        //This doesn't seem to populate the names roster in time for the picker to use it
//        .onAppear{
//            for s in roster {
//                names.append(s.firstName +  " " + s.lastName)
//
//            }
//            print(names)
//        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image("youRock")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50
                        )
                        .padding(100)
                    
                }
            }
        }
    }
}



struct Period1N_Previews: PreviewProvider {
    static var previews: some View {
        Period1N()
    }
}
