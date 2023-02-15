//
//  LandingScreenView.swift
//  Guap
//
//  Created by India Doria on 2/7/23.
//

import Foundation
import SwiftUI

struct LandingScreenView: View {
    @State var date = Date()
    @State var payday = ""
    var body: some View {
        ZStack{
            backgroundColor
            ScrollView {
                Text(Date(), style: .date)
                Text("Next Payday")
                
 //               Text(paySchedule(payCycle:.weekly))
                DatePicker ("When's your next payday?", selection: $date, displayedComponents: [.date])
            }
        }
        
    }
}
enum PayCycle {
    case weekly, biweekly
    

}
func paySchedule (payCycle: PayCycle) -> Int{
    

switch payCycle {
case .weekly:
    return 7
case .biweekly:
    return 14
default:
    return 0
    
//case .semimonthly:

//case .monthly:
}
}
struct LandingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LandingScreenView()
    }
}
