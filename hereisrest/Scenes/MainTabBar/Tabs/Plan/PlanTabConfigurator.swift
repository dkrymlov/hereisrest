//
//  PlanTabConfigurator.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import SwiftUI

struct PlanTabConfigurator: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        PlanTabView(viewModel: PlanTabViewModel(
            coordinator: appState.coordinator
        ))
        .environmentObject(appState)
    }
}
