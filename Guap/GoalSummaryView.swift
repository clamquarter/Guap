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
            }
        }
    }
}

struct GoalSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        GoalSummaryView()
    }
}
