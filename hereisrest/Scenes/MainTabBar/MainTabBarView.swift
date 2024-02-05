//
//  MainTabBarView.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import Foundation
import SwiftUI

struct MainTabBarView<ViewModel: MainTabBarViewModelType>: ViewType {
    @EnvironmentObject var appState: AppState
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        TabView(selection: $viewModel.coordinator.tabSelection) {
            HomeTabConfigurator()
                .environmentObject(appState)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text(TabBarItem.home.rawValue)
                }
                .tag(TabBarItem.home)
            PlacesTabConfigurator()
                .environmentObject(appState)
                .tabItem {
                    Image(systemName: "house.lodge.fill")
                    Text(TabBarItem.places.rawValue)
                }
                .tag(TabBarItem.places)
            PlanTabConfigurator()
                .environmentObject(appState)
                .tabItem {
                    Image(systemName: "doc.plaintext.fill")
                    Text(TabBarItem.plan.rawValue)
                }
                .tag(TabBarItem.plan)
            AccountTabConfigurator()
                .environmentObject(appState)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text(TabBarItem.account.rawValue)
                }
                .tag(TabBarItem.account)
        }
    }
}
