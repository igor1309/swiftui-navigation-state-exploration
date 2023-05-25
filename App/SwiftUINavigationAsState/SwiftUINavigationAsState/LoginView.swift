//
//  LoginView.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 25.05.2023.
//

import SwiftUI

struct LoginView<LoginCardView, MarketingButton, CTAButton>: View
where LoginCardView: View,
      MarketingButton: View,
      CTAButton: View {
    
    private let loginCardView: () -> LoginCardView
    private let marketingButton: () -> MarketingButton
    private let ctaButton: () -> CTAButton
    
    init(
        loginCardView: @escaping () -> LoginCardView,
        marketingButton: @escaping () -> MarketingButton,
        ctaButton: @escaping () -> CTAButton
    ) {
        self.loginCardView = loginCardView
        self.marketingButton = marketingButton
        self.ctaButton = ctaButton
    }
    
    var body: some View {
        
        VStack {
            loginCardView()
            
            Spacer()
            
            marketingButton()
            ctaButton()
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    
    static var previews: some View {
    
        LoginView(
            loginCardView: { Text("Login Card View") },
            marketingButton: { Text("Marketing Button") },
            ctaButton: { Text("CTA Button") }
        )
    }
}
