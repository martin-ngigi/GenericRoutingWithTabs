//
//  DetailView.swift
//  GenericRoutingWithTabs
//
//  Created by Hummingbird on 04/05/2025.
//

import SwiftUI

struct DetailView: View {
    let id: Int
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack{
            Text("Details view for \(id)")
            
            Button("Back") {
                router.pop()
            }
            .buttonStyle(.bordered)
            
            Button("Back to root"){
                router.popToRoot()
            }
            .buttonStyle(.bordered)
            
            Button("Back to Settings"){
                router.push(.settings)
            }
            .buttonStyle(.bordered)

        }
    }
}

#Preview {
    DetailView(id: 33)
        .environmentObject(Router())

}
