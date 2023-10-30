//
//  RatingView.swift
//  HIITFit
//
//  Created by Георгий Борисов on 26.10.2023.
//

import SwiftUI

struct RatingView: View {
    let exerciseIndex : Int
    @AppStorage("ratings") private var ratings = ""
    @State private var rating  = 0
    let maximumRating = 5  // 2
    
    let onColor = Color.red  // 3
    let offColor = Color.gray
    
    func updateRating(index: Int) {
        rating = index
        let index = ratings.index(
            ratings.startIndex,
            offsetBy: exerciseIndex)
        ratings.replaceSubrange(index...index, with: String(rating))
    }
    
    init(exerciseIndex: Int) {
        self.exerciseIndex = exerciseIndex
        // 2
        let desiredLength = Exercise.exercises.count
        if ratings.count < desiredLength {
            // 3
            ratings = ratings.padding(
                toLength: desiredLength,
                withPad: "0",
                startingAt: 0)
        }
    }
    
    fileprivate func convertRating(){
        let index = ratings.index(
            ratings.startIndex,
            offsetBy: exerciseIndex)
        // 3
        let character = ratings[index]
        // 4
        rating = character.wholeNumberValue ?? 0
    }
    
    
    var body: some View {
        HStack {
            ForEach(1 ..< maximumRating + 1, id: \.self) { index in
                Image(systemName: "waveform.path.ecg")
                    .onAppear {
                        // 2
                        
                    }
                
                    .foregroundColor(
                        index > rating ? offColor : onColor)  // 4
                    .onTapGesture {  // 5
                        updateRating(index: index)
                    }
                    .onChange(of:ratings){_ in
                        convertRating()
                    }
            }
            .onAppear{
                convertRating()
            }
        }
        .font(.largeTitle)
    }
}



struct RatingView_Previews: PreviewProvider {
    @AppStorage("ratings") static var ratings: String?
    static var previews: some View {
        ratings = nil
        return RatingView(exerciseIndex: 0)
            .previewLayout(.sizeThatFits)
    }
    
    
    
    
}


