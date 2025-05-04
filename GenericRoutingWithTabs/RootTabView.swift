//
//  RootTabView.swift
//  GenericRoutingWithTabs
//
//  Created by Hummingbird on 04/05/2025.
//

import SwiftUI

struct RootTabView: View {
    
    @EnvironmentObject var tabRouter: TabRouter
    
    var body: some View {
        TabView(selection: $tabRouter.selectedTab) {
            TabNavigationView(router: tabRouter.homeRouter) {
                HomeView()
            }
            .tabItem { Label("Home", systemImage: "house") }
            .tag(TabRouter.Tab.home)
            
            TabNavigationView(router: tabRouter.settingsRouter) {
                SettingsView()
            }
            .tabItem { Label("Settings", systemImage: "gear") }
            .tag(TabRouter.Tab.settings)
            
            TabNavigationView(router: tabRouter.profileRouter) {
                ProfileView()
            }
            .tabItem { Label("Profile", systemImage: "person.circle") }
            .tag(TabRouter.Tab.profile)
        }
       
    }
}

struct TabNavigationView<Content: View>: View {
    @ObservedObject var router: Router
    let content: () -> Content
    
    var body: some View {
        NavigationStack(path: $router.path) {
            content()
                .navigationDestination(for: Route.self) { route in
                    viewForRoute(route, router: router)
                }
        }
    }
}

#Preview {
    RootTabView()
        .environmentObject(TabRouter())
}
