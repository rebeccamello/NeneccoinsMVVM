//
//  ContentView.swift
//  NeneccoinsMVVM
//
//  Created by Rebecca Mello on 08/02/22.
//

import SwiftUI

struct ContentView: View {
    
    let initialState = CoinRepository.shared.fetchInitialData()
    
    var body: some View {
        NavigationView {
            ConversionView(conversionViewModel: ConversionViewModel(fromCoin: initialState.fromCoin, toCoin: initialState.toCoin))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
