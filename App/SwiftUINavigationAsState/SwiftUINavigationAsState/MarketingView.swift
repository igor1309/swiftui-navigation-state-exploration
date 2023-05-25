//
//  MarketingView.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 25.05.2023.
//

import SwiftUI

struct MarketingView: View {
    
    var body: some View {
        
        Color.blue
            .ignoresSafeArea()
            .opacity(0.2)
            .overlay {
                Text("MarketingView")
                    .font(.title.bold())
            }
    }
}

struct MarketingView_Previews: PreviewProvider {
    static var previews: some View {
        MarketingView()
    }
}
