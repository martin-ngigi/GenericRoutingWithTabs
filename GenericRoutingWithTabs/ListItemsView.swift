//
//  ListItemsView.swift
//  GenericRoutingWithTabs
//
//  Created by Hummingbird on 04/05/2025.
//

import SwiftUI

struct ListItemsView: View {
    @EnvironmentObject var router: Router

    var body: some View {
        List(1...10, id: \.self){ number in
            Button{
                router.push(.details(id: number))
            } label: {
                Text("Item \(number)")
            }
            .buttonStyle(.bordered)
        }
    }
}

#Preview {
    ListItemsView()
        .environmentObject(Router())
}
