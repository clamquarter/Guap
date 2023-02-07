import UIKit
import SwiftUI

var startingBalance : Double
var billAmount : Double
var finalBudgetTotal : Double
var subtotal : Double
var bills : [String:Double]
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
    var duedate : Date
}
func budgetcalc(startingBalance:Double, bills:[String:Double]) {
    var subtotal = startingBalance
    for bill in bills{
        subtotal -= bill.value
        print("\(bill.key): \(bill.value)")
        
    }
    print(subtotal)
}
func paydateseperation()
budgetcalc(startingBalance: 1000.00, bills: ["dte":350.00, "rent":200.00])

