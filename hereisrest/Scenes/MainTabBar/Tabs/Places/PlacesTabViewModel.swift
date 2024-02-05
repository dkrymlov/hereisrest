//
//  PlacesTabViewModel.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import Foundation

protocol PlacesTabViewModelType: ViewModelType where Event == PlacesTabViewModel.Event {
    
}

final class PlacesTabViewModel: PlacesTabViewModelType {
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
