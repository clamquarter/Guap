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
                VStack {
                    Text(Date(), style: .date).foregroundColor(Color(red: 0.537, green: 0.264, blue: 0.668)).font(Font.custom("Do Hyeon", size: 36)).shadow(color: .purple, radius: 10).padding(.top, 18)
                    //Text("Overview").foregroundColor(Color(red: 0.537, green: 0.264, blue: 0.668)).font(Font.custom("Do Hyeon", size: 36)).shadow(color: .purple, radius: 10).padding(.top, 18)
                    //Text("Next Payday")
                    
                    //               Text(paySchedule(payCycle:.weekly))
//                    DatePicker ("When's your next payday?", selection: $date, displayedComponents: [.date])
                    
                    Spacer()
                    

                    RingView()
                    
                    Spacer()
                    
                    VStack{
                        Text("Goal Progress")
                        Image("miamitrip")
                    }
                    VStack{
                        Text("Savings Trends")
                        Image("savingstrend").resizable(
                        )
                    }.padding(.top, 56.0)
                }
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
