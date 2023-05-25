//
//  UIComposer.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 25.05.2023.
//

import SwiftUI

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
    
    func makeLoginView(route: AppNavigation.Route.LoginRoute?) -> some View {
        
        LoginView(
            loginCardView: makeLoginCardView,
            marketingButton: makeMarketingButton,
            ctaButton: makeCTAButton
        )
        .sheet(
            item: .init(
                get: { route },
                set: { _ in /* ?????????????????? */}
            ),
            content: makeDestination(for:)
        )
    }
    
    func makeMainView() -> MainView {
        
        .init()
    }
    
    @ViewBuilder
    func makeDestination(
        for route: AppNavigation.Route.LoginRoute
    ) -> some View {
        
        switch route {
        case .marketing:
            makeMarketingView()
            
        case let .cta(ctaRoute):
            makeCTAView()
                .sheet(
                    item: .init(
                        get: { ctaRoute },
                        set: { _ in /* ?????????????????? */}
                    ),
                    content: makeDestination(for:)
                )
        }
    }
    
    @ViewBuilder
    func makeDestination(
        for route: AppNavigation.Route.CTARoute
    ) -> some View {
        
        switch route {
        case .orderCard:
            #warning("add action")
            Button("Order Card", action: {})
        }
    }
}
