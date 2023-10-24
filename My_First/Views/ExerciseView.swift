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
    var body: some View {
        VStack {
            HeaderView(exerciseName: exercise.exerciseName)
            VideoPlayer(player: AVPlayer(url: url))
            Text("Timer")
            Text("Start/Done button")
            Text("Rating")
            Text("Histroy Button")
        }
    }
}

#Preview {
    ExerciseView(index:0)
}


