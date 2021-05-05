//
//  WelcomeScreen2.swift
//  YouRock3
//
//  Created by admin on 5/4/21.
//

import SwiftUI

struct WelcomeScreen2: View {
    @State var rosterWelcomeScreen2 = [Student]()
    
    let cornerRad2 : CGFloat = 10
    
    var body: some View {
        
        VStack {
            Text("Welcome, Mr. Vonderheide!")
                .font(.title)
                .padding()
            Text("1st Period")
            HStack{
                NavigationLink(
                    //                    destination: Period1N(rosterData1N : rosterWelcomeScreen2),
                    destination: Period1N(),
                    label: {
                        Text("Recognize a Student")
                            .padding(5)
                            .background(Color.blue)
                            .cornerRadius(cornerRad2)
                            .foregroundColor(.white)
                            .padding(5)
                        
                    })
                NavigationLink(
                    destination: Data1N(rosterData1N : rosterWelcomeScreen2),
                    label: {
                        Text("View Student Data")
                            .padding(5)
                            .background(Color.blue)
                            .cornerRadius(cornerRad2)
                            .foregroundColor(.white)
                            .padding(5)
                        
                    })
            }
            
        }
        
        
        
        
        //        NavigationLink(
        //            destination: Data1N(rosterData1N : rosterWelcomeScreen2),
        //            label: {
        //                Text("View Student Data")
        //                    .padding(5)
        //                    .background(Color.blue)
        //                    .cornerRadius(8)
        //                    .foregroundColor(.white)
        //                    .padding(5)
        //
        //            })
    }
}

struct WelcomeScreen2_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen2()
    }
}
