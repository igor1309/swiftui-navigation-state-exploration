//
//  CTAButton.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 25.05.2023.
//

import SwiftUI

struct CTAButton: View {
    
    private let action: () -> Void
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    var body: some View {
        
        Color.teal
            .opacity(0.2)
            .overlay {
                Button("CTAButton", action: action)
                    .font(.title.italic().weight(.black))
            }
            .frame(height: 80)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CTAButton {}
    }
}
