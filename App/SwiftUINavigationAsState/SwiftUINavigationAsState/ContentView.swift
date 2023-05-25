//
//  ContentView.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 24.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var navigation: AppNavigation
    
    private let uiComposer: UIComposer
    
    init(uiComposer: UIComposer) {
        self.uiComposer = uiComposer
        self.navigation = uiComposer.navigation
    }
    
    var body: some View {
        
        switch navigation.route {
        case let .login(loginRoute):
            uiComposer.makeLoginView(route: loginRoute)
            
        case .main:
            uiComposer.makeMainView()
            
        case .none:
            EmptyView()
        }
    }
}

// MARK: - Previews

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Group {
            
            contentView(route: .login())
            contentView(route: .login(.marketing))
            contentView(route: .login(.cta()))
            contentView(route: .login(.cta(.orderCard)))
        }
    }
    
    static func contentView(
        route: AppNavigation.Route? = nil
    ) -> ContentView {
        
        ContentView(
            uiComposer: .init(
                navigation: .init(route: route)
            )
        )
    }
}
