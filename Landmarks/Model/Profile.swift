//
//  Profile.swift
//  Landmarks
//
//  Created by Gideon Boateng on 1/28/24.
//

import Foundation

struct Profile {
    var firstname: String
    var lastname: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(firstname: "Gideon", lastname: "Boateng")
    
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        
        var id: String { rawValue }
    }
}

