//
//  BudgetSummaryView.swift
//  Guap
//
//  Created by India Doria on 2/7/23.
//

import SwiftUI

struct BudgetSummaryView: View {
    var body: some View {
        ZStack{
            backgroundColor
            ScrollView {
                Text(Date(), style: .date)
                Text("Follow your damn budget.")
            }
        }    }
}

struct BudgetSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetSummaryView()
    }
}
