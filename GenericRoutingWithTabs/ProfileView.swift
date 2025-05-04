//
//  ProfileView.swift
//  GenericRoutingWithTabs
//
//  Created by Hummingbird on 04/05/2025.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var tabRouter: TabRouter
    var body: some View {
        let router = tabRouter.profileRouter
        VStack{
            Text("👤 Profile")
                .font(.largeTitle)
            
            Button("Go to Settings Tab") {
                tabRouter.selectedTab = .settings
            }

        }
        .padding()
    }
}

#Preview {
    ProfileView()
}
