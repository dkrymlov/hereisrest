//
//  AccountTabConfigurator.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import SwiftUI

struct AccountTabConfigurator: View {
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        AccountTabView(viewModel: AccountTabViewModel(
            coordinator: appState.coordinator
        ))
        .environmentObject(appState)
    }
}
