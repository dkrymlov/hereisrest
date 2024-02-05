//
//  HomeTabView.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import SwiftUI

struct HomeTabView<ViewModel: HomeTabViewModelType>: ViewType {
    @EnvironmentObject var appState: AppState
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        Text("Home tab")
    }
}
