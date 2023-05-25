//
//  AppNavigation.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 25.05.2023.
//

import Foundation

final class AppNavigation: ObservableObject {
    
    @Published private(set) var route: Route?
    
    init(route: Route? = nil) {
        self.route = route
    }
    
    func navigate(to route: Route?) {
        
        self.route = route
    }
}
