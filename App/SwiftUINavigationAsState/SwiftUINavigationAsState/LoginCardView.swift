//
//  LoginCardView.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 25.05.2023.
//

import SwiftUI

struct LoginCardView: View {
    
    var body: some View {
        
        Color.red
            .opacity(0.2)
            .overlay {
                Text("LoginCardView")
                    .font(.title.bold())
            }
            .frame(height: 180)
    }
}

struct LoginCardView_Previews: PreviewProvider {
    static var previews: some View {
        LoginCardView()
    }
}
