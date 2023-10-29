//
//  Storyboard.swift
//  Roomie
//
//  Created by macmini45 on 25/08/23.
//

import Foundation

enum Storyboards: String {
    case profile = "Profile"
    func board() -> String {
        return self.rawValue
    }
}
