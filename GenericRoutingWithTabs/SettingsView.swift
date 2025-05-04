//
//  SettingsView.swift
//  GenericRoutingWithTabs
//
//  Created by Hummingbird on 04/05/2025.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var tabRouter: TabRouter

    var body: some View {
        VStack{
            Text("Settings")
            
            Button("Back to Beautiful Card"){
                tabRouter.settingsRouter.push(.beautifulcardview)
            }
            .buttonStyle(.bordered)
            
        }
        .padding()
    }
}

#Preview {
    SettingsView()
        .environmentObject(Router())
}
