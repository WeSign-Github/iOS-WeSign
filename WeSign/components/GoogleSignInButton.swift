//
//  GoogleSignInButton.swift
//  WeSign
//
//  Created by Hafizh Sumantri on 17/08/23.
//

import SwiftUI
import GoogleSignIn

struct GoogleSignInButton: UIViewRepresentable {
    @Environment(\.colorScheme) var colorScheme
    
    private var button = GIDSignInButton()
    
    func makeUIView(context: Context) -> GIDSignInButton {
        button.colorScheme = colorScheme == .dark ? .dark : .light
        button.setContentHuggingPriority(.required, for: .vertical)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        button.colorScheme = colorScheme == .dark ? .dark : .light
    }
    
}
