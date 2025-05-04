//
//  GenericRoutingWithTabsApp.swift
//  GenericRoutingWithTabs
//
//  Created by Hummingbird on 04/05/2025.
//

import SwiftUI

@main
struct GenericRoutingWithTabsApp: App {
    @StateObject var tabRouter = TabRouter()

    var body: some Scene {
        WindowGroup {
            RootTabView()
                .environmentObject(tabRouter)
        }
    }
}
