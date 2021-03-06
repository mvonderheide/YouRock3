//
//  Period1N.swift
//  YouRock3
//
//  Created by admin on 5/4/21.
//

import SwiftUI

struct Period1N: View {
    
    
    @Binding var rosterPeriod1N : [Student]
    @State var selectedStudent = Student()
    @State var selectedStudentName = ""
    @State var names = [String]()
    
//    var names = ["Daniel Bang", "Smadar Bergman", "Mia Harris", "Kevin McQuown", "Miguel Sanchez", "Dimitri Villalobos"]
    
    var body: some View {
        
        
        //names doesn't seem to populate in "onAppear" in time for the picker to use it so we are using  hard coded names
        
        // given a roster of Student, create an array of String of their first and last names - will that append to the back of the array or the front?
        
        VStack {
            Spacer()
            Text("1st Period")
                .font(.title)
            Text("App Dev with Swift")
                .font(.title3)
                .padding()
            Text("Choose a Student")
            
            Picker(selection: $selectedStudentName, label: Text("")) {
                ForEach(names, id: \.self) { name in
                    Text(name)
                }
            }
            
                NavigationLink(
                    destination: ChooseCategory(),
                    label: {
                        Text("\(selectedStudentName)")
                    })
            
            Button(action: {
                let idx = getIndex()
                rosterPeriod1N[idx].numRocks += 1
            
            }, label: {
                Text("Add Rock for \(selectedStudentName)")
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
        .onAppear{
            names.removeAll() // initialize array to empty
            for s in rosterPeriod1N {
                names.append(s.firstName +  " " + s.lastName)
                
            }
            print(names)
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
    func getIndex() -> Int {
        return names.firstIndex(of: selectedStudentName)!
    }
}


//
//struct Period1N_Previews: PreviewProvider {
//    static var previews: some View {
//        Period1N()
//    }
//}
//onAppear doesn't seem to populate the names array by the time we get to this picker
//            Picker(selection: $selectedIndex, label: Text("")) {
//                ForEach(names, id: \.self) {
//                    Text($0)
//                }
//            }
