//
//  PlacesTabView.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import SwiftUI

struct PlacesTabView<ViewModel: PlacesTabViewModelType>: ViewType {
    @EnvironmentObject var appState: AppState
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        Text("Places tab")
    }
}
