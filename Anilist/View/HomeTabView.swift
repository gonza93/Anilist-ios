//
//  HomeTabView.swift
//  Anilist
//
//  Created by Gonzalo Cham on 21/11/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import SwiftUI

struct HomeTabView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                HomeAiringListView()
            }
            .navigationBarTitle("Home")
        }
    }
}

struct HomeTabView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTabView()
    }
}
