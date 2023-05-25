//
//  SwiftUINavigationAsStateApp.swift
//  SwiftUINavigationAsState
//
//  Created by Igor Malyarov on 24.05.2023.
//

import SwiftUI

@main
struct SwiftUINavigationAsStateApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(uiComposer: .init(navigation: .init()))
        }
    }
}
