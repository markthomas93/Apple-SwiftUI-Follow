//
//  ImageView.swift
//  LM
//
//  Created by Ryan on 2020/2/9.
//  Copyright © 2020 Ryan. All rights reserved.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: landmarkData[0].image)
    }
}
