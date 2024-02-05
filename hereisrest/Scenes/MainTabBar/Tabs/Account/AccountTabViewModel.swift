//
//  AccountTabViewModel.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import Foundation

protocol AccountTabViewModelType: ViewModelType where Event == AccountTabViewModel.Event {
    
}

final class AccountTabViewModel: AccountTabViewModelType {
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
            print("onAppear")
        }
    }
}
