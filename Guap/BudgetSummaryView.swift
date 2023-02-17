//
//  BudgetSummaryView.swift
//  Guap
//
//  Created by India Doria on 2/7/23.
//

import SwiftUI

//dummy data
var bills = [bill(billName: "Mortgage", billAmount: 1245), bill(billName: "DTE", billAmount: 180), bill(billName: "Spectrum", billAmount: 49.99), bill(billName: "T-Mobile", billAmount: 35), bill(billName: "Savings", billAmount: 100)]
var salary: Double = 2500
struct bill: Identifiable {
   var billName : String
    var billAmount : Double
    var duedate : Date?
    var id = UUID()
}

func budgetcalc(startingBalance:Double, bills:[bill]) -> Double{
    var subtotal = startingBalance
    for bill in bills{
        subtotal -= bill.billAmount
    }
    return subtotal
}
//

struct BudgetSummaryView: View {
    var body: some View {
        ZStack{
            backgroundColor
            VStack {
                Text(Date(), style: .date)
                Text("Follow your damn budget.")
                Text("Income: $2600")
                NavigationView {
                    List(bills) {
                        bill in
                        HStack{
                            Text("\(bill.billName)")
                            Spacer()
                            Text("$\(bill.billAmount.formatted())")
                        }
                    }.navigationTitle("Incoming Bills")
                        .listStyle(.plain)
                        .background(backgroundColor)
                }
                Text("Ending Balance: $\(budgetcalc(startingBalance:salary, bills: bills).formatted())")


                
            }
        }    }
}

struct BudgetSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetSummaryView()
    }
}
