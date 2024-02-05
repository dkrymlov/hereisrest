//
//  ViewModelType.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import SwiftUI

protocol ViewModelType: ObservableObject {
    associatedtype Event

    func send(event: Event)
}
