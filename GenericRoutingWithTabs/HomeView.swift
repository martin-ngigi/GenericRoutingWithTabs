//
//  HomeView.swift
//  GenericRoutingWithTabs
//
//  Created by Hummingbird on 04/05/2025.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var tabRouter: TabRouter
    
    var body: some View {
        let router = tabRouter.homeRouter
        
        VStack{
            Text("Home View")
            
            Button("Go to list"){
                DispatchQueue.main.async {
                    router.push(.mylist)
                }
            }
            .buttonStyle(.bordered)

            Button("Go to Settings"){
                tabRouter.selectedTab = .settings
            }
            .buttonStyle(.bordered)

        }
        .padding()
    }
}

#Preview {
    HomeView()
}
