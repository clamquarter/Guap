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
            VStack {
                Spacer()
                LandingScreenView()
            }
            .padding(.top, 64)
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
