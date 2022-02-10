//
//  ConversionViewModel.swift
//  NeneccoinsMVVM
//
//  Created by Marcos Chevis on 10/02/22.
//

import Foundation

class ConversionViewModel: ObservableObject {
    
    @Published var fromCoin: Coin
    @Published var toCoin: Coin
    @Published var inputedValue: String
    @Published var result: String
    
    init(fromCoin: Coin, toCoin: Coin) {
        self.fromCoin = fromCoin
        self.toCoin = toCoin
        self.inputedValue = "0"
        self.result = ""
    }
    
    func calculate() {
        let stringValue = inputedValue.replacingOccurrences(of: ",", with: ".")
        
        guard let value = Double(stringValue) else {
            self.result = "Error"
            return
        }
        
        let conversionFactor = fromCoin.conversionFactor/toCoin.conversionFactor
        
        let result = value*conversionFactor
        
        self.result = String(result)
        
    }
    
    func invert() {
        let aux = fromCoin
        fromCoin = toCoin
        toCoin = aux
        calculate()
    }
    
}
