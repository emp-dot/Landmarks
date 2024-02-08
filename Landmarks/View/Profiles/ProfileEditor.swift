//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by Gideon Boateng on 1/28/24.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
         let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
         let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
         return min...max
     }
    
    var body: some View {
        List {
            HStack {
                Text("Firstname")
                Spacer()
                TextField("Firstname", text: $profile.firstname)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            HStack {
                Text("Lastname")
                Spacer()
                TextField("Lastname", text: $profile.lastname)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications")
            }
            
            Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                ForEach(Profile.Season.allCases) { season in
                    Text(season.rawValue).tag(season)
                }
            }
            
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date")
            }
        }
    }
}


#Preview {
    ProfileEditor(profile: .constant(.default))
}