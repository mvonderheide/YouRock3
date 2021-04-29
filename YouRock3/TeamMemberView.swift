//
//  TeamMemberView.swift
//  YouRock3
//
//  Created by admin on 4/28/21.
//

import SwiftUI

struct TeamMemberView: View {
    @State var student = Student()
    var body: some View {
        Text(student.name)
    }
}

struct TeamMemberView_Previews: PreviewProvider {
    static var previews: some View {
        TeamMemberView()
    }
}
