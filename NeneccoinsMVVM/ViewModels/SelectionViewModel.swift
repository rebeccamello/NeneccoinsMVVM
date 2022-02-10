//
//  SelectionViewModel.swift
//  NeneccoinsMVVM
//
//  Created by Marcos Chevis on 10/02/22.
//

import Foundation

class SelectionViewModel: ObservableObject {
    
    @Published var coins: [Coin]
    
    init() {
        self.coins = []
    }
    
    func fetchAllCoins() {
        let coins = CoinRepository.shared.fetchAllCoins()
        self.coins = coins
    }
}
