//
//  SelectionView.swift
//  NeneccoinsMVVM
//
//  Created by Rebecca Mello on 08/02/22.
//

import SwiftUI

struct SelectionView: View {
    @Environment(\.dismiss) private var dismiss
    let coins = ["Rebeccoins", "Chevisccoins", "Bahiaccoins", "Nathccoins", "Carolccoins"]
//    @Binding var selectedCoin: String
    
    var body: some View {
        List {
            ForEach(0..<5) { coin in
                Button {
//                    self.selectedCoin = self.coins[coin]
                    self.dismiss()
                } label: {
                    HStack {
                        Text(coins[coin])
                            .foregroundColor(Color.primary)
                        Spacer()
                    }
                }
            }.listRowBackground(Color(uiColor: .secondarySystemBackground))
        }
    }
}

struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
}
