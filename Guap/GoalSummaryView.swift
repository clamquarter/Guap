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
                Text(Date(), style: .date)
                Text("Manage your goals.")
                Image("starGoalProgress")
                Spacer()
                Spacer()
                Spacer()
                ProgressView(value: 0.46)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
                Text("$550 / $1,200 Saved")
                
            }
        }
    }
}

struct GoalSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        GoalSummaryView()
    }
}
