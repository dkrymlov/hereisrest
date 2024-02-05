//
//  AppCoordinator.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import Foundation
import SwiftUI

final class AppCoordinator: ObservableObject {
    @Published var navigationPath = NavigationPath()
    @Published var tabSelection: TabBarItem = .home
    
    func popToRoot() {
        navigationPath.removeLast(navigationPath.count)
    }
    
    func popView() {
        assert(navigationPath.count >= 1, "Navigation stack is empty")
        guard navigationPath.count >= 1 else { return }
        
        navigationPath.removeLast()
    }
    
    func selectTab(_ tab: TabBarItem) {
        tabSelection = tab
    }
}
