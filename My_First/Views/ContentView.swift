//
//  ContentView.swift
//  My_First
//
//  Created by Георгий Борисов on 24.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showHistory = false

    @SceneStorage("selectedTab") private var selectedTab = 9
    var body: some View {
        ZStack {
            GradientBackground()
            TabView(selection: $selectedTab) {
                WelcomeView(selectedTab: $selectedTab)  // 1
                    .tag(9)  // 2
                ForEach(Exercise.exercises.indices, id: \.self) { index in
                    ExerciseView(selectedTab: $selectedTab, index: index)
                        .tag(index)  // 3
                }
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
        }

    }
    
}
#Preview {
    ContentView()
}
