//
//  ContentView.swift
//  MacLandmarks
//
//  Created by Gideon Boateng on 1/29/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .frame(minWidth: 700, minHeight: 300)
    }
}


#Preview {
    ContentView()
        .environment(ModelData())
}
