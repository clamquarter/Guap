//
//  BudgetSummaryView.swift
//  Guap
//
//  Created by India Doria on 2/7/23.
//

import SwiftUI

//dummy data


var startingBal: Double = 2500

struct Bill: Identifiable {
    let name: String
    var amount: Double
    var id = UUID()
    var dueDate : Date?
}

var bills = [Bill(name: "Rent", amount: 1100), Bill(name: "DTE", amount: 250), Bill(name: "Netflix", amount: 20.99), Bill(name: "T-Mobile", amount: 60), Bill(name: "Car Note", amount: 250.78), Bill(name: "Insurance", amount: 125.50)]

func budgetBal(startingBal: Double, bills: [Bill]) -> Double {
    subtotal = startingBal
    for bill in bills {
        subtotal -= bill.amount
    }
    return subtotal
}


func calcSubtotal(billAmt: Double) -> Double {
    startingBal -= billAmt
    return startingBal
}

var subtotal: Double = 2500


struct BudgetSummaryView: View {
    @State var salary: Double = 2500
    
    func billBuilder(_ bill: Bill) -> some View {
        startingBal -= bill.amount / 2
        
        return VStack {
            HStack{
                Text("\(bill.name)")
                Spacer()
                Text("\(bill.amount.formatted(.currency(code: "USD")))").foregroundColor(.red)
            }
            Spacer()
            HStack{
                Spacer()
                Text("\(startingBal.formatted(.currency(code: "USD")))")
            }
        }
    }
    
    var body: some View {
        ZStack{
            backgroundColor
            VStack {
                Text(Date(), style: .date)
                Spacer()
                
                Text("Deposit: \(salary.formatted(.currency(code: "USD")))")
                NavigationView {
                    List(bills) {
                        bill in
                        billBuilder(bill)
                    }.navigationTitle("Incoming Bills")
                    
                }
                Text("\(budgetBal(startingBal: startingBal, bills: bills).formatted(.currency(code: "USD")))")
            }
        }    }
}

struct BudgetSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetSummaryView()
    }
}
