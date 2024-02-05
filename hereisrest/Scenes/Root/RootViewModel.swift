//
//  RootViewModel.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import Foundation

protocol RootViewModelType: ViewModelType where Event == RootViewModel.Event {
    var initialFlow: InitialFlow { get set }
}

final class RootViewModel: RootViewModelType {
    @Published var initialFlow: InitialFlow = .tabBar
    var coordinator: AppCoordinator
    
    init(coordinator: AppCoordinator) {
        self.coordinator = coordinator
    }
    
    enum Event {
        case onAppear
    }
    
    func send(event: Event) {
        switch event {
        case .onAppear:
            print("appear")
        }
    }
    
}
