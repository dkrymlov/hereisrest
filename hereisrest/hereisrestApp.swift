//
//  hereisrestApp.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import SwiftUI

@main
struct hereisrestApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            RootConfigurator()
                .environmentObject(appState)
        }
    }
}
