//
//  MainTabBarViewModel.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import Foundation
import Combine
import SwiftUI

protocol MainTabBarViewModelType: ViewModelType where Event == MainTabBarViewModel.Event {
    var coordinator: AppCoordinator { get set }
}

final class MainTabBarViewModel: MainTabBarViewModelType {
    @ObservedObject var coordinator: AppCoordinator
    @Published private var tabSelection: TabBarItem = .home
    
    private var bag = Set<AnyCancellable>()
    
    init(coordinator: AppCoordinator) {
        self.coordinator = coordinator
        setupTabSubscription()
        // Have no idea why, but AppCoordinator works only with this solution
        coordinator.$tabSelection.assign(to: &$tabSelection)
    }
    
    private func setupTabSubscription() {
        self.$tabSelection
            .sink { _ in
                // action on tab changes
            }
            .store(in: &bag)
    }
    
    enum Event {
        case onButton
    }
    
    func send(event: Event) {
        switch event {
        case .onButton:
            print("Button")
        }
    }
}
