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
                Spacer()
                TabView {
                    LandingScreenView()
                        .tabItem {
                            Label("Home", systemImage: "tray.and.arrow.down.fill")
                        }
                    BudgetSummaryView()
                        .tabItem {
                            Label("Budget", systemImage: "tray.and.arrow.up.fill")
                        }
                    GoalSummaryView()
                        .tabItem {
                            Label("Goal", systemImage: "person.crop.circle.fill")
                        }
//                }
            }
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
