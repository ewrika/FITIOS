//
//  HistoryView.swift
//  HIITFit
//
//  Created by Георгий Борисов on 26.10.2023.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {

        let history = HistoryStore()

        ZStack(alignment:.topTrailing) {
            Button(action: {}) {
                Image(systemName: "xmark.circle")}
            .font(.title)
            .padding(.trailing)
            VStack {
                
              Text("History")
                .font(.title)
                .padding()
                Form {
                  ForEach(history.exerciseDays) { day in
                    Section(
                      header:
                        Text(day.date.formatted(date: .complete, time: .omitted))
                        .font(.headline)) {
                      ForEach(day.exercises, id: \.self) { exercise in
                        Text(exercise)
                      }
                    }
                  }
                }
            }
        }
    }
}

#Preview {
    HistoryView()
}
