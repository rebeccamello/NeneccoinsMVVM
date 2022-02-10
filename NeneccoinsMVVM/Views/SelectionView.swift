//
//  SelectionView.swift
//  NeneccoinsMVVM
//
//  Created by Rebecca Mello on 08/02/22.
//

import SwiftUI

struct SelectionView: View {
    
    @Environment (\.dismiss) private var dismiss
    
    @Binding var selectedCoin: Coin
    @ObservedObject var selectionViewModel: SelectionViewModel
    
    var title: String
    
    var body: some View {
        List {
            ForEach(selectionViewModel.coins, id: \.name) { coin in
                Button {
                    selectedCoin = coin
                    dismiss()
                } label: {
                    HStack {
                        Text(coin.name)
                            .foregroundColor(Color.primary)
                        Spacer()
                    }
                }
            }
                .listStyle(.insetGrouped)
        }
        .navigationBarTitle(title)
        .onAppear {
            selectionViewModel.fetchAllCoins()
        }
    }
}

struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView(selectedCoin: .constant(Coin(name: "oi", abbreviation: "REB", conversionFactor: 12)), selectionViewModel: SelectionViewModel(), title: "To")
    }
}
