//
//  BudgetSummaryView.swift
//  Guap
//
//  Created by India Doria on 2/7/23.
//

import SwiftUI

//dummy data


//var startingBal: Double = 2500

struct Bill: Identifiable {
    let name: String
    var amount: Double
    var id = UUID()
    var dueDate : Date?
}

class Budget: ObservableObject {
    @Published var bills: [Bill] = [Bill(name: "Rent", amount: 1100), Bill(name: "DTE", amount: 250), Bill(name: "Netflix", amount: 20.99), Bill(name: "T-Mobile", amount: 60), Bill(name: "Car Note", amount: 250.78), Bill(name: "Insurance", amount: 125.50), Bill(name: "DoorDash", amount: 695.73)]

    @Published var salary: Double = 2500
    //@Published var budgetMessage: String = ""
    

    var billRows: [BillRow] {
        var billRows: [BillRow] = []
        var tempSalary = salary
        var budgetMessage = ""
        
        for bill in bills {
            tempSalary -= bill.amount

            billRows.append(BillRow(name: bill.name, amount: bill.amount, subTotal: tempSalary))
        }
        if salary - tempSalary == 0 {
            budgetMessage = "Congrats! Now stick to your budget."

        } else if salary - tempSalary < 0 {
            budgetMessage = "Betta make them pennies work, son...."
        } else {
            budgetMessage = "You must balance out to zero."
        }
        
        return billRows
    }
    
    struct BillRow: Identifiable {
        let name: String
        let amount: Double
        let subTotal: Double
        let id = UUID()
    }
}


struct BudgetSummaryView: View {
    @State var salary: Double = 2500
    @State var budgetMessage = ""
    @StateObject var budget = Budget()
   

//    func budgetBal(startingBal: Double, bills: [Bill]) -> Double {
//        subtotal = salary
//        //budgetMessage = budgetBalCheck(subtotal: subtotal, salary: salary)
//        for bill in bills {
//            subtotal -= bill.amount
//        }
//
//        return subtotal
//    }

    
    func billBuilder(_ bill: Budget.BillRow) -> some View {
        
        return VStack {
            HStack{
                Text("\(bill.name)")
                Spacer()
                Text("\(bill.amount.formatted(.currency(code: "USD")))").foregroundColor(.red)
            }
            Spacer()
            HStack{
                Spacer()
                Text("\(bill.subTotal.formatted(.currency(code: "USD")))")
                
                
            }

        }
        
    }
    
    var body: some View {
        ZStack{
            backgroundColor
            VStack {
                VStack{
                    Text("Next Paydate: ").foregroundColor(Color(red: 0.537, green: 0.264, blue: 0.668)).font(Font.custom("Do Hyeon", size: 24)).shadow(color: .purple, radius: 10).padding(.top, 18)
                    Text("March 5th, 2023")
                }
                
                //Text("Budget Summary").foregroundColor(Color(red: 0.537, green: 0.264, blue: 0.668)).font(Font.custom("Do Hyeon", size: 36)).shadow(color: .purple, radius: 10).padding(.top, 18)
                Spacer()
                
//                Text("Deposit: ").foregroundColor(Color(red: 0.537, green: 0.264, blue: 0.668)).font(Font.custom("Do Hyeon", size: 36)).shadow(color: .purple, radius: 10).padding(.top, 18)
                Spacer()
                Spacer()
                Spacer()

                Text((salary.formatted(.currency(code: "USD"))))
                    .foregroundColor(Color(hue: 0.333, saturation: 0.55, brightness: 0.421)).font(Font.custom("Do Hyeon", size: 36)).shadow(color: .green, radius: 10)
                NavigationView {
                    List(budget.billRows) {
                        bill in
                            billBuilder(bill).listRowBackground(backgroundColor)
                    }.scrollContentBackground(.hidden)
                        .background(backgroundColor)
                    
                }
                

//                Text("\(budgetBal(startingBal: startingBal, bills: bills).formatted(.currency(code: "USD")))")
               Spacer()
                Text("You overspent...🧐")

                Spacer()

            }
        }

    }
}

struct BudgetSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        BudgetSummaryView()
    }
}
