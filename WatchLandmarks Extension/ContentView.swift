//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by Ryan on 2020/2/12.
//  Copyright © 2020 Ryan. All rights reserved.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
            .environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
            .environmentObject(UserData())
    }
}
