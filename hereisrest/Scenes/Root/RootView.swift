//
//  ContentView.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import SwiftUI

struct RootView<ViewModel: RootViewModelType>: ViewType {
    @EnvironmentObject var appState: AppState
    @StateObject var viewModel: ViewModel
    
    @AppStorage("firstRun")
    private var firstRun: Bool = false
    
    var body: some View {
        NavigationStack(path: $appState.coordinator.navigationPath) {
            rootView
        }
        .accentColor(.primary)
    }
    
    @ViewBuilder
    private var rootView: some View {
        switch viewModel.initialFlow {
        case .tabBar:
            if !firstRun {
                MainTabBarView(viewModel: MainTabBarViewModel(
                    coordinator: appState.coordinator
                ))
                .environmentObject(appState)
            } else {
                
            }
        }
    }
}
