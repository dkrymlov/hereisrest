//
//  MainTabBarConfigurator.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import Foundation
import SwiftUI

struct MainTabBarConfigurator: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        MainTabBarView(viewModel: MainTabBarViewModel(
            coordinator: appState.coordinator
        ))
        .environmentObject(appState)
    }
}
