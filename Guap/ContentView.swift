//
//  ContentView.swift
//  Guap
//
//  Created by India Doria on 2/7/23.
//

import SwiftUI


var backgroundColor = Color(red: 0.57, green: 0.87, blue: 0.78)

struct ContentView: View {
    var body: some View {
        
        ZStack{
            backgroundColor
//            VStack {
            //USE DUMMY DATA FOR GOAL SCREEN
                Spacer()
            
                TabView {
                    LandingScreenView()
                        .tabItem {
                            Label("Overview", systemImage: "house.fill")
                                
                        }
                        
                    BudgetSummaryView()
                        .tabItem {
                            Label("Budget", systemImage: "list.bullet.clipboard")
                        }
                    GoalSummaryView()
                        .tabItem {
                            Label("Goals", systemImage: "star.fill")
                              
                        }
//                }
                }.accentColor(.purple)
            .padding(.top, 64)
        }.ignoresSafeArea()
            .font(Font.custom("Do Hyeon", size: 24))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
