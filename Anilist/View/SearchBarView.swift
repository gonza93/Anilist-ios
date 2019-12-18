//
//  SearchBarView.swift
//  Anilist
//
//  Created by Gonzalo Cham on 14/12/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import SwiftUI

struct SearchBarView: View {
    
    @State var query: String = ""
    var handler: ((_ query: String) -> Void)
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.secondary)
            TextField("Search anime, manga, etc...", text: self.$query, onCommit: self.search)
            Button(action: { self.query = "" }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.secondary)
                    .opacity(self.query == "" ? 0 : 1)
            }
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 8)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(8)
        .font(.headline)
    }
    
    private func search() {
        self.handler(query)
    }
}
