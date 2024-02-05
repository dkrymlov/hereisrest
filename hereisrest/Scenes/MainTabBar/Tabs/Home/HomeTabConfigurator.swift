//
//  HomeTabConfigurator.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import SwiftUI

struct HomeTabConfigurator: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        HomeTabView(viewModel: HomeTabViewModel(
            coordinator: appState.coordinator
        ))
        .environmentObject(appState)
    }
}
