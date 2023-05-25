//
//  CTAView.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 25.05.2023.
//

import SwiftUI

struct CTAView: View {
    
    var body: some View {
        
        Color.teal
            .ignoresSafeArea()
            .opacity(0.2)
            .overlay {
                Text("CTAView")
                    .font(.title.bold())
            }
    }
}

struct CTAView_Previews: PreviewProvider {
    static var previews: some View {
        CTAView()
    }
}
