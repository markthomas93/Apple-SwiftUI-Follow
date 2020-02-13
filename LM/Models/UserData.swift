//
//  UserData.swift
//  LM
//
//  Created by Ryan on 2020/2/9.
//  Copyright © 2020 Ryan. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoriteOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}

