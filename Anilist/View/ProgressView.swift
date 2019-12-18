//
//  ProgressView.swift
//  Anilist
//
//  Created by Gonzalo Cham on 15/12/2019.
//  Copyright © 2019 Gonzalo Cham. All rights reserved.
//

import Foundation
import SwiftUI

struct ProgressView : View {
    
    @State var isLoading: Bool = false
    
    var body: some View {
        HStack {
            Spacer()
            ProgressIndicator(isAnimating: .constant(self.isLoading), style: .medium)
            Spacer()
        }
    }

}

struct ProgressIndicator: UIViewRepresentable {

    @Binding var isAnimating: Bool
    let style: UIActivityIndicatorView.Style

    func makeUIView(context: UIViewRepresentableContext<ProgressIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ProgressIndicator>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

extension View {
    /// Whether the view is hidden.
    /// - Parameter bool: Set to `true` to hide the view. Set to `false` to show the view.
    func isHidden(_ bool: Bool) -> some View {
        modifier(HiddenModifier(isHidden: bool))
    }
}

private struct HiddenModifier: ViewModifier {

    fileprivate let isHidden: Bool

    fileprivate func body(content: Content) -> some View {
        Group {
            if isHidden {
                content.hidden()
            } else {
                content
            }
        }
    }
}
