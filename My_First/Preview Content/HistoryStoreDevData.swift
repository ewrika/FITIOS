//
//  HistoryStoreDevData.swift
//  HIITFit
//
//  Created by Георгий Борисов on 26.10.2023.
//

import Foundation

extension HistoryStore {
  mutating func createDevData() {
    // Development data
    exerciseDays = [
      ExerciseDay(
        date: Date().addingTimeInterval(-86400),
        exercises: [
          Exercise.exercises[0].titleText,
          Exercise.exercises[1].titleText,
          Exercise.exercises[2].titleText
        ]),
      ExerciseDay(
        date: Date().addingTimeInterval(-86400 * 2),
        exercises: [
          Exercise.exercises[1].titleText,
          Exercise.exercises[0].titleText
        ])
    ]
  }
}
