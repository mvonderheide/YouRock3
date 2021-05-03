//
//  TeamMemberView.swift
//  YouRock3
//
//  Created by admin on 4/28/21.
//

import SwiftUI

struct TeamMemberView: View {
    // @State var student = Student()
    @State var coursePassed = [Student]()
    var body: some View {
        
        ForEach(coursePassed, id: \.self) { s in
            VStack {
                HStack {
                    Text(s.firstName)
                    Text(s.lastName)
                    Text(String(s.numRocks))
                    
                    
                }
            }
            
            
        }
        
        
    }
}



struct TeamMemberView_Previews: PreviewProvider {
    static var previews: some View {
        TeamMemberView()
    }
}
