//
//  LandmarkList.swift
//  LM
//
//  Created by Ryan on 2020/2/9.
//  Copyright © 2020 Ryan. All rights reserved.
//

import SwiftUI

struct LandmarkList<DetailView: View>: View {
    @EnvironmentObject var userData: UserData
    
    let detailViewProducer: (Landmark) -> DetailView
    
    var body: some View {
        List() {
            Toggle(isOn: $userData.showFavoriteOnly) {
                Text("Favorite only")
            }
            
            ForEach(userData.landmarks) { landmark in
                if !self.userData.showFavoriteOnly || landmark.isFavorite {
                    NavigationLink(destination: self.detailViewProducer(landmark).environmentObject(self.userData)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}


#if os(watchOS)
typealias PreviewDetailView = WatchLandmarkDetail
#else
typealias PreviewDetailView = LandmarkDetail
#endif

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList { PreviewDetailView(landmark: $0) }
            .environmentObject(UserData())
    }
}