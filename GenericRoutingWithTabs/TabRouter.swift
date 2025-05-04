//
//  TabRouter.swift
//  GenericRoutingWithTabs
//
//  Created by Hummingbird on 04/05/2025.
//

import SwiftUI

class TabRouter: ObservableObject{
    @Published var selectedTab: Tab = .home
    
    var homeRouter = Router()
    var settingsRouter = Router()
    var profileRouter = Router()
    
    enum Tab{
        case home, profile, settings
    }
    
    func router(for tab: Tab) -> Router{
        switch tab {
        case .home:
            return homeRouter
        case .profile:
            return profileRouter
        case .settings:
            return settingsRouter
        }
    }

}


@ViewBuilder
func viewForRoute(_ route: Route, router: Router) -> some View{
    switch route {
    case .home:
        HomeView()
            //.environmentObject(TabRouter()) // optional if HomeView uses tabRouter, else remove

    case .mylist:
        ListItemsView()
            .environmentObject(router) // inject router

    case .details(let id):
        DetailView(id: id)
            .environmentObject(router) // inject router

    case .settings:
        SettingsView()
            //.environmentObject(TabRouter()) // optional if HomeView uses tabRouter, else remove

    case .profile:
        ProfileView()
            //.environmentObject(TabRouter()) // optional if HomeView uses tabRouter, else remove
    
    case .beautifulcardview:
        BeautifulCardView()
            .environmentObject(router) // inject router

    }
}
