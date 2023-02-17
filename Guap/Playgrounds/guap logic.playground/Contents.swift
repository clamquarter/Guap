import UIKit
import SwiftUI

var startingBalance : Double
var billAmount : Double
var finalBudgetTotal : Double
var subtotal : Double
var paydate : Date

struct paydategenorator{
    var lastpaydate : Date
    var payfrecuency : String
    var dayofPayment : String
}
struct profile {
    var id = UUID()
    var name : String
    var username : String
    var password : String
    var email : String
    
}
struct bill {
   var billName : String
    var billAmount : Double
    var duedate : Date?
}
func budgetcalc(startingBalance:Double, bills:[bill]) {
    var subtotal = startingBalance
    for bill in bills{
        subtotal -= bill.billAmount        
    }
}
//func paydateseperation() {
//    budgetcalc(startingBalance: 1000.00, bills: [bill(billName: "dte", billAmount: 200)])
//}

var bills = [bill(billName: "Mortgage", billAmount: 1245), bill(billName: "DTE", billAmount: 180), bill(billName: "Spectrum", billAmount: 49.99), bill(billName: "T-Mobile", billAmount: 35), bill(billName: "Savings", billAmount: 100)]

