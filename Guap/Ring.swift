//
//  Ring.swift
//  Guap
//
//  Created by Rheyya Hollins on 2/19/23.
//
import SwiftUI

struct Ring: View {
    let lineWidth: CGFloat
    let backgroundColor: Color
    let foregroundColor: Color
    let percentage: Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                // Track
                RingShape ()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth))
                    .fill(backgroundColor)
                // Animated Ring
                RingShape ()
                    .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                    .fill(foregroundColor)
            }
            .animation(Animation.easeIn(duration: 1))
        }
       
    }
}

