//
//  PlacesTabConfigurator.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import SwiftUI

struct PlacesTabConfigurator: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        PlacesTabView(viewModel: PlacesTabViewModel(
            coordinator: appState.coordinator
        ))
        .environmentObject(appState)
    }
}
