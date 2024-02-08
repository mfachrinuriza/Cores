//
//  ChipItem.swift
//  loan-management-app
//
//  Created by Muhammad Fachri Nuriza on 07/02/24.
//

import Foundation

public struct ChipItem {
    public var id: Int
    public var name: String

    // Make the initializer internal or public
    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}
