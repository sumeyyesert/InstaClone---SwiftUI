//
//  ContentView.swift
//  instaCloneBootcamp
//
//  Created by Sümeyye Sert on 20.03.2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group {
            if viewModel.userSession == nil {
                LoginView()
            } else{
                MainTabView()
            }
        }
    }
}

#Preview {
    ContentView()
}
