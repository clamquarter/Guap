//
//  LandingScreenView.swift
//  Guap
//
//  Created by India Doria on 2/7/23.
//

import Foundation
import SwiftUI

struct LandingScreenView: View {
    var body: some View {
        ZStack{
            backgroundColor
            ScrollView {
                Text(Date(), style: .date)
                Text("Welcome to Guap.")
            }
        }
        
    }
}
