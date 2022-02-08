//
//  CoinRepository.swift
//  NeneccoinsMVVM
//
//  Created by Rebecca Mello on 08/02/22.
//

import Foundation

class CoinRepository {
    
    static var shared: CoinRepository = CoinRepository()
    
    private var coins: [Coin] = []
    
    func fetchAllCoins() -> [Coin] {
        []
    }
    
    func fetchInitialData() -> (fromCoin: Coin, toCoin: Coin) {
        (Coin(name: "IMPLEMENTAR FROM", abbreviation: "IMPLF", conversionFactor: 1),
         Coin(name: "IMPLEMENTAR TO", abbreviation: "IMPLT", conversionFactor: 1))
    }
}
