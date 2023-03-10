//
//  RingView.swift
//  Guap
//
//  Created by Rheyya Hollins on 2/19/23.
//

import SwiftUI

struct RingView: View {
    @State var percentage1: Double = 0
    @State var percentage2: Double = 0
    @State var percentage3: Double = 0
    @State private var isShowPopover = false
    @State var ringText = ""

    
    var body: some View {
        ZStack {
            Ring(lineWidth: 30,
                 backgroundColor: Color(red: 0.989, green: 0.17, blue: 0.331, opacity: 0.343),
                 foregroundColor: Color(red: 0.998, green: 0.174, blue: 0.335),
                 percentage: percentage1
            )
            .frame(width: 150, height: 150)
            .onTapGesture {
                self.percentage1 = 20
                //isShowPopover.toggle()
            }
            
            Ring(lineWidth: 40,
                 backgroundColor: Color(red: 0.471, green: 1.0, blue: 0.265, opacity: 0.337),
                 foregroundColor: Color(red: 0.471, green: 1.0, blue: 0.265),
                 percentage: percentage2
            )
            .frame(width: 220, height: 220)
            .onTapGesture {
                self.percentage2 = 50
                //ringText = "green ring test."
//                isShowPopover.toggle()

            }
//            .modifier(Popup(isPresented: isShowPopover,
//                             content: {
//                //Text(ringText)
//            }))
            
            Ring(lineWidth: 40,
                 backgroundColor: Color(red: 0.537, green: 0.268, blue: 0.668, opacity: 0.363),
                 foregroundColor: Color(red: 0.537, green: 0.268, blue: 0.668),
                 percentage: percentage3
            )
            .frame(width: 300, height: 300)
            .onTapGesture {
                self.percentage3 = 80
                isShowPopover.toggle()

            }.modifier(Popup(isPresented: isShowPopover,
                             content: {
                Text("20%")
                    .padding(.top, 120.0)
                Text("80%").padding(.top, 260.0)
                Text("50%").padding(.top, 180.0)

            }))
        
        }
    }
}
struct RingView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
