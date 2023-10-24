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
            ForEach(Exercise.exercises.indices,id:\.self){ index in
                ExerciseView(index: index)
            }
            Text("Exercise2")
                .padding()
                .tabItem { Text("Welcome2") }
        }.padding()
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

#Preview {
    ContentView()
}
