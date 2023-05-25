//
//  UIComposer.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 25.05.2023.
//

final class UIComposer {
    
    let navigation: AppNavigation
    
    init(navigation: AppNavigation) {
        self.navigation = navigation
    }
    
    func makeLoginCardView() -> LoginCardView {
        
        .init()
    }
    
    func makeMarketingButton() -> MarketingButton {
        
        .init(
            action: { [weak self] in
                self?.navigation.navigate(to: .login(.marketing))
            }
        )
    }
    
    func makeCTAButton() -> CTAButton {
        
        .init(
            action: { [weak self] in
                self?.navigation.navigate(to: .login(.cta()))
            }
        )
    }
    
    func makeMarketingView() -> MarketingView {
        
        .init()
    }
    
    func makeCTAView() -> CTAView {
        
        .init()
    }
}

