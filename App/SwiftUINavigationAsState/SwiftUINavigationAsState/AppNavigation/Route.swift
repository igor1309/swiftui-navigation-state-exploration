//
//  Route.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 25.05.2023.
//

extension AppNavigation {
    
    enum Route: Hashable {
        
        case login(LoginRoute? = nil)
        case main
    }
}

extension AppNavigation.Route {
    
    enum LoginRoute: Hashable, Identifiable {
        
        case marketing
        case cta(CTARoute? = nil)
        
        var id: Self { self }
    }
}

extension AppNavigation.Route {
 
    enum CTARoute: Hashable, Identifiable {
        
        case orderCard
        
        var id: Self { self }
    }
}
