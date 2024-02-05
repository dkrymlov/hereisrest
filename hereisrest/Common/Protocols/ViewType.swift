//
//  ViewTyoe.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import SwiftUI

protocol ViewType: View {
    associatedtype ViewModel: ViewModelType

    var appState: AppState { get }
    var viewModel: ViewModel { get }
}

