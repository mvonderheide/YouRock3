//
//  Period1N.swift
//  YouRock3
//
//  Created by admin on 5/4/21.
//

import SwiftUI

struct Period1N: View {
    
   
    @State var rosterPeriod1N = [Student]()
    
    @State private var selectedFrameworkIndex = 0
    
    var frameworks = ["Daniel Bang", "Smadar Bergman", "Mia Harris", "Kevin McQuown", "Miguel Sanchez", "Dimitri Villalobos"]
    
//    struct Student: Hashable {
//        var id = UUID()
//        var firstName : String
//        var lastName : String
//        var numRocks : Int
//    }
    
    //var student1 : Student = Student(firstName: "Miguel", lastName: "Sanchez", numRocks: 4)
    
    var body: some View {
        
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
            Picker(selection: $selectedFrameworkIndex, label: Text("")) {
                ForEach(0 ..< frameworks.count) {
                    Text(self.frameworks[$0])
                }
            }
            NavigationLink(
                destination: ChooseCategory(),
                label: {
                    Text("\(frameworks[selectedFrameworkIndex])")
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
