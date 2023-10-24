//
//  ExerciseView.swift
//  My_First
//
//  Created by Георгий Борисов on 24.10.2023.
//

import SwiftUI

struct ExerciseView: View {
    let index : Int
    let videoNames = ["squat","step-up","burpee","sun-salute"]
    let exerciseNames = ["Squat","Step up","Burpee","Sun salute"]
    var body: some View {
        Text(exerciseNames[index])
    }
}

#Preview {
    ExerciseView(index:0)
}
