//
//  ActionEvent.swift
//  DMSL-Analytics
//
//  Created by Dmytro Shulzhenko on 17.10.2020.
//

import Foundation

public struct ActionEvent: ParamsContainer {
    let name: String
    public var params: [String: Any]
    let isActive: Bool
    let isUrgent: Bool
    
    public init(name: String,
                params: [String: Any] = [:],
                isActive: Bool = true,
                isUrgent: Bool = false) {
        self.name = name
        self.params = params
        self.isActive = isActive
        self.isUrgent = isUrgent
    }
}
