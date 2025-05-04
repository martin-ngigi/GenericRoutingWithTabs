//
//  SettingsView.swift
//  GenericRoutingWithTabs
//
//  Created by Hummingbird on 04/05/2025.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var router: Router

    var body: some View {
        VStack{
            Text("Settings")
            
            Button("Back to Home"){
                router.popToRoot()
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
