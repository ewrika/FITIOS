//
//  ExerciseView.swift
//  My_First
//
//  Created by Георгий Борисов on 24.10.2023.
//

import SwiftUI
import AVKit



struct ExerciseView: View {
    @State private var showSuccess = false
    @State private var showHistory = false
    
    var exercise: Exercise {
        Exercise.exercises[index]
    }
    @Binding var selectedTab : Int
    @State private var rating = 0
    let index : Int
    @State private var timerDone = false
    @State private var showTimer = false
    
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    var startButton: some View {
        Button("Start Exercise") {showTimer.toggle() }
    }
    var doneButton: some View {
        Button("Done") {
            timerDone = false
            showTimer.toggle()
            if lastExercise{
                showSuccess.toggle()
            }
            else{
                selectedTab+=1
            }
        }
    }
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(selectedTab: $selectedTab, titleText: exercise.titleText)
                    .padding(.bottom)
                
                VideoPlayerView(videoName: exercise.videoName)
                    .frame(height: geometry.size.height * 0.45)
                
                if showTimer {
                    TimerView(
                        timerDone: $timerDone,
                        size: geometry.size.height * 0.07
                    )
                }
                
                HStack(spacing: 150) {
                    startButton
                    doneButton
                        .disabled(!timerDone)
                        .sheet(isPresented: $showSuccess){
                            SuccessView(selectedTab : $selectedTab)
                                .presentationDetents([.medium, .large])

                        }
                    
                }
                
                
                .font(.title3)
                .padding()
                
                RatingView(rating: $rating)
                    .padding()
                
                Spacer()
                Button("History") { showHistory.toggle()
                }.sheet(isPresented:$showHistory){
                    HistoryView(showHistory:$showHistory)
                }
                .padding(.bottom)
            }
        }
    }
}

#Preview {
    ExerciseView(selectedTab: .constant(3), index: 3)
}

