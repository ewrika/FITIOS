//
//  WelcomeView.swift
//  My_First
//
//  Created by Георгий Борисов on 24.10.2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        
        ZStack {
            
            VStack {
              HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    
                  Text("Get fit")
                    .font(.largeTitle)
                  Text("with high intensity interval training")
                    .font(.headline)
                    
                }
                  Image("step-up")
                      .frame(width: 240.0, height: 240.0)
                      .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                      .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                      
              }
                Button(action: { }) {
                  Text("Get Started")
                  Image(systemName: "arrow.right.circle")
                }
                .font(.title2)
                .padding()
                .background(RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .stroke(Color.gray,lineWidth: 2))
            }
            
            VStack {
                
                HeaderView(titleText: "Welcome")
                Spacer()
                Button("Histroy"){}
                    .padding(.bottom)
            }
        }    }
}

#Preview {
    WelcomeView()
}
