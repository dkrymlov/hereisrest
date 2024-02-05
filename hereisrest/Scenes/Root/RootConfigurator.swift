//
//  RootConfigurator.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import SwiftUI

struct RootConfigurator: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        RootView(viewModel: RootViewModel(
            coordinator: appState.coordinator
        ))
        .environmentObject(appState)
    }
}
