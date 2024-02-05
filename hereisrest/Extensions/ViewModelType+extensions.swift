//
//  ViewModelType+extensions.swift
//  hereisrest
//
//  Created by Даниил Крымлов on 04.02.2024.
//

import Foundation

extension ViewModelType where Event == Never {
    func send(event _: Never) { }
}
