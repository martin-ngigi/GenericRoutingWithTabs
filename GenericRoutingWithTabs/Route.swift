//
//  Route.swift
//  GenericRoutingWithTabs
//
//  Created by Hummingbird on 04/05/2025.
//

import Foundation

enum Route: Hashable {
    case home
    case mylist
    case details(id: Int)
    case settings
    case profile
    case beautifulcardview
}
