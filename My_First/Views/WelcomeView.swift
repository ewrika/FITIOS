//
//  WelcomeView.swift
//  My_First
//
//  Created by Георгий Борисов on 24.10.2023.
//

import SwiftUI

struct WelcomeView: View {
    @Binding var selectedTab: Int
    @State private var showHistory = false
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HeaderView(
                    selectedTab: $selectedTab,
                    titleText: "Welcome")
                Spacer()
                // container view
                ContainerView {
                    ViewThatFits {
                        VStack {
                            WelcomeView.images
                            WelcomeView.welcomeText
                            getStartedButton
                            Spacer()
                        }
                        VStack {
                            WelcomeView.welcomeText
                            getStartedButton
                            Spacer()
                        }
                        
                    }
                }
                .frame(height: geometry.size.height * 0.8)
            }
            .sheet(isPresented: $showHistory) {
                HistoryView(showHistory: $showHistory)
            }
            
        }
    }
    
    
    var getStartedButton:some View{
        RaisedButton(buttonText:"Get Started"){
            selectedTab = 0
        }
        .padding()
        
    }
    
    var getHistory:some View{
        VStack{
            RaisedButton(buttonText: "Histroy"){ showHistory.toggle()
            }.padding([.horizontal], 150)
                .sheet(isPresented:$showHistory){
                    HistoryView(showHistory:$showHistory)
                }.padding(.bottom)
            
        }
    }
    
}


#Preview {
    WelcomeView(selectedTab: .constant(9))
}
