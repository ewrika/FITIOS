//
//  Exercise.swift
//  HIITFit
//
//  Created by Георгий Борисов on 24.10.2023.
//

import SwiftUI
import Foundation

struct Exercise {
  let titleText: String
  let videoName: String

  enum ExerciseEnum: String {
    case squat = "Squat"
    case stepUp = "Step Up"
    case burpee = "Burpee"
    case sunSalute = "Sun Salute"
  }
}
    
extension Exercise {
  static let exercises = [
    Exercise(
      titleText: ExerciseEnum.squat.rawValue,
      videoName: "squat"),
    Exercise(
      titleText: ExerciseEnum.stepUp.rawValue,
      videoName: "step-up"),
    Exercise(
      titleText: ExerciseEnum.burpee.rawValue,
      videoName: "burpee"),
    Exercise(
      titleText: ExerciseEnum.sunSalute.rawValue,
      videoName: "sun-salute")
  ]
}




