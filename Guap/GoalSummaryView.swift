//
//  GoalSummaryView.swift
//  Guap
//
//  Created by India Doria on 2/7/23.
//

import SwiftUI

struct GoalSummaryView: View {
    var body: some View {
        ZStack{
            backgroundColor
            ScrollView {
                Spacer()
                Text("Miami Trip Fund").foregroundColor(Color(red: 0.537, green: 0.264, blue: 0.668)).font(Font.custom("Do Hyeon", size: 36)).shadow(color: .purple, radius: 10).padding(.top, 18)
                Image("starGoalProgress")
                Spacer()
                Spacer()
                Spacer()
                ProgressView(value: 0.46)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
                Text("$1,500 / $3,000 Saved")
                
            }
        }
    }
}

struct GoalSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        GoalSummaryView()
    }
}
