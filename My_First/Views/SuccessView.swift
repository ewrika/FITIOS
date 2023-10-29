//
//  SuccessView.swift
//  HIITFit
//
//  Created by Георгий Борисов on 27.10.2023.
//

import SwiftUI

struct SuccessView: View {
    @Environment(\.dismiss) var dismiss
    @Binding var selectedTab : Int
    let message = """
    Good job completing all four exercisec!
    Remember tommorow's another day
    So eat well and get some rest.
"""
    var body: some View {
        ZStack {
            VStack {
                Text(Image(systemName: "hand.raised.fill"))
                    .foregroundStyle(Color(.purple))
                    .fontWeight(.bold)
                    .font(.system(size: 60))
                Text("High Five!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(message)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
        
            VStack(){
                Spacer()
                Button(action: {dismiss()
                    selectedTab=9}) {
                    Text("Continue")
                }
            }
        }.padding()
    }
}

#Preview {
    SuccessView(selectedTab:.constant(3)).presentationDetents([.medium,.large])
}
