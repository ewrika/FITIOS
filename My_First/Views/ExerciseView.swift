//
//  ExerciseView.swift
//  My_First
//
//  Created by Георгий Борисов on 24.10.2023.
//

import SwiftUI
import AVKit



struct ExerciseView: View {
    
    var exercise: Exercise {
        Exercise.exercises[index]
    }
    
    let index : Int
    let interval: TimeInterval = 30
    var body: some View {
      GeometryReader { geometry in
        VStack {
          HeaderView(titleText: exercise.titleText)
            .padding(.bottom)

          VideoPlayerView(videoName: exercise.videoName)
            .frame(height: geometry.size.height * 0.45)

          Text(Date().addingTimeInterval(interval), style: .timer)
            .font(.system(size: geometry.size.height * 0.07))

          Button("Start/Done") { }
            .font(.title3)
            .padding()

          RatingView()
            .padding()

          Spacer()
          Button("History") { }
            .padding(.bottom)
        }
      }
    }
  }

#Preview {
    ExerciseView(index:0)
}

