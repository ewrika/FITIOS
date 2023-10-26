//
//  HistoryStore.swift
//  HIITFit
//
//  Created by Георгий Борисов on 26.10.2023.
//

import Foundation

struct ExerciseDay: Identifiable {
  let id = UUID()
  let date: Date
  var exercises: [String] = []
}

struct HistoryStore {
  var exerciseDays: [ExerciseDay] = []
    init() {
      #if DEBUG
      createDevData()
      #endif
    }
}



