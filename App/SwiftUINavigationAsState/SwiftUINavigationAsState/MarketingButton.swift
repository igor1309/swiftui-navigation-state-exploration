//
//  MarketingButton.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 24.05.2023.
//

import SwiftUI

struct MarketingButton: View {
    
    private let action: () -> Void
    
    init(action: @escaping () -> Void) {
        self.action = action
    }
    
    var body: some View {
        
        Button(action: action) {
            
            Color.indigo
                .opacity(0.2)
                .overlay {
                    Text("Nice Marketing button")
                        .font(.title.bold())
                }
                .frame(height: 80)
        }
    }
}

struct MarketingButton_Previews: PreviewProvider {
    static var previews: some View {
        MarketingButton {}
    }
}
