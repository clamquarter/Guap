//
//  ContentView.swift
//  Guap
//
//  Created by India Doria on 2/7/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        ScrollView {
            Text(Date(), style: .date)
            
            Text("Welcome to Guap.")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
