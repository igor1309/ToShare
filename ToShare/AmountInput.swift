//
//  AmountInput.swift
//
//  Created by Igor Malyarov on 16.07.2019.
//  Copyright © 2019 Igor Malyarov. All rights reserved.
//

import SwiftUI

struct AmountInput : View {
    @Binding var amount: Int
    
    //    let copy: Int { amount.value }
    //    var copy: Int { $amount.value }
    
    //    @State private var copy: Int
    
    var body: some View {
        
        let copy = amount
        
        return VStack {
            Text("Copy: \(String(copy))")
            
            Text("Copy == amount: \(String(copy == amount))")
            
            Text(String(amount))
                .font(.system(size: 60))
                .fontWeight(.semibold)
            
            Button("Increase value") {
                self.amount = self.amount * 10
            }
            
        }
    }
}

struct showAmountInput : View {
    @State var shouldSave = false
    @State var amount = 5555
    
    var body: some View {
        NavigationView {
            AmountInput(amount: $amount)
        }
    }
}

#if DEBUG
struct AmountInput_Previews : PreviewProvider {
    static var previews: some View {
        showAmountInput()
    }
}
#endif
