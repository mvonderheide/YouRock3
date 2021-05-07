//
//  Data1N.swift
//  YouRock3
//
//  Created by admin on 4/28/21.
//

import SwiftUI

struct Data1N: View {
    
    let width1 : CGFloat = 125
    let width2 : CGFloat = 150
    let width3 : CGFloat = 80
    let height1: CGFloat = 40
    let cornerRad: CGFloat = 4
    
    @State var rosterData1N = [Student]()
    @State var sortedData = [Student]()
    
    var body: some View {
        VStack {
            Text("1st Period Rocks!")
                .font(.title)
            HStack{
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRad)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(width: width1, height: height1)
                    Text("First Name")
                }
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRad)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(width: width2, height: height1)
                    Text("Last Name")
                }
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRad)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(width: width3, height: height1)
                    Text("# of Rocks")
                    
                }
            }
            
            
            ForEach(sortedData, id:\.self) { s in
                HStack{
                    ZStack {
                        RoundedRectangle(cornerRadius: cornerRad)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .frame(width: width1, height: height1)
                        Text(s.firstName + " ")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: cornerRad)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .frame(width: width2, height: height1)
                        Text(s.lastName + " ")
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: cornerRad)
                            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .frame(width: width3, height: height1)
                        Text(String(s.numRocks))
                    }
                }
                
            }
            
        }.onAppear() {
            sortedData = rosterData1N.sorted(by: { (s1, s2) -> Bool in
                s1.numRocks > s2.numRocks
            })
        }
        
    }
}

struct Data1N_Previews: PreviewProvider {
    static var previews: some View {
        Data1N()
    }
}
