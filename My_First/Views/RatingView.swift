//
//  RatingView.swift
//  HIITFit
//
//  Created by Георгий Борисов on 26.10.2023.
//

import SwiftUI

struct RatingView: View {
    var body: some View {
        HStack{
            ForEach(0..<5){_ in
                Image(systemName: "waveform.path.ecg")
                    .foregroundStyle(.gray)
            }
        }.font(.largeTitle)
    }
}
#Preview {
    RatingView().previewLayout(.sizeThatFits)
}
