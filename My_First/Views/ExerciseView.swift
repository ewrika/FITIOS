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
    
    let index : Int
    @State private var timerDone = false
    @State private var showTimer = false
    
    var lastExercise: Bool {
        index + 1 == Exercise.exercises.count
    }
    var startButton: some View {
        RaisedButton(buttonText: "Start Exercise") {
            showTimer.toggle()
        }
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
            VStack(spacing: 0 ) {
                HeaderView(selectedTab: $selectedTab, titleText: exercise.titleText)
                    .padding(.bottom)
                Spacer()
                ContainerView{
                    VStack{
                        VideoPlayerView(videoName: exercise.videoName)
                            .frame(height: geometry.size.height * 0.45)
                            .padding(20)
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
                        //
                        RatingView(exerciseIndex:index)
                            .padding()
                        
                        Spacer()
                        Button("History") { showHistory.toggle()
                        }.sheet(isPresented:$showHistory){
                            HistoryView(showHistory:$showHistory)
                        }
                        .padding(.bottom)
                    }.frame(height: geometry.size.height * 0.35)
                }
            }
        }
    }
}
#Preview {
    ExerciseView(selectedTab: .constant(3), index: 3)
}

