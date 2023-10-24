//
//  ContentView.swift
//  My_First
//
//  Created by Георгий Борисов on 24.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        TabView{
            WelcomeView()
            ForEach(0..<4){ number in
                ExerciseView(index: number)
            }
            Text("Exercise2")
                .tabItem { Text("Welcome2") }
        }.padding()
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

#Preview {
    ContentView()
}
