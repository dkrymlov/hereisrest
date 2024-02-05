//
//  AppState.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import Foundation
import SwiftUI

final class AppState: ObservableObject {
    @ObservedObject var coordinator: AppCoordinator
    @Published private var navigationPath = NavigationPath()

    // MARK: Initializers
    init() {
        self.coordinator = AppCoordinator()
        performStartAction()
    }
    
    // MARK: Private
    private func performStartAction() {
        coordinator.$navigationPath.assign(to: &$navigationPath)
    }
}
