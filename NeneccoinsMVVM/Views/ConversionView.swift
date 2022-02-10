//
//  ConversionView.swift
//  NeneccoinsMVVM
//
//  Created by Rebecca Mello on 08/02/22.
//

import SwiftUI

struct ConversionView: View {
    // Terminar de implementar
    @ObservedObject var conversionViewModel: ConversionViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Spacer()
                Button(action: {
                    conversionViewModel.invert()
                }, label: {
                    Label("Invert", systemImage: "repeat")
                })
            }
            .padding(.trailing, 16)
            
            VStack {
                
                NavigationLink {
                    SelectionView(selectedCoin: $conversionViewModel.fromCoin, selectionViewModel: SelectionViewModel(), title: "From")
                } label: {
                    CoinCell(content: "From: \(conversionViewModel.fromCoin.name)")
                }
                
                NavigationLink {
                    SelectionView(selectedCoin: $conversionViewModel.toCoin, selectionViewModel: SelectionViewModel(), title: "To")
                } label: {
                    CoinCell(content: "To: \(conversionViewModel.toCoin.name)")
                }
                
                TextField(conversionViewModel.fromCoin.abbreviation, text: $conversionViewModel.inputedValue)
                    .onChange(of: conversionViewModel.inputedValue, perform: { newValue in
                        conversionViewModel.calculate()
                    })
                    .cornerRadius(6)
                    .keyboardType(.decimalPad)
                    .padding()
            }
            .padding()
            .background(Color(uiColor: .secondarySystemBackground))
            .cornerRadius(10)
            .padding(.horizontal, 16)
            .padding(.bottom, 16)
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
                    .frame(width: 300, height: 300)
                
                VStack {
                    Text("Your result is:")
                    Text("\(conversionViewModel.toCoin.abbreviation) \(conversionViewModel.result)")
                }
            }
            
        }
        .onAppear(perform: {
            conversionViewModel.calculate()
        })
        .navigationBarTitle("Neneccoins")
    }
}

struct ConversionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ConversionView(conversionViewModel:
                            ConversionViewModel(fromCoin:
                                                    Coin(name: "coin1",
                                                         abbreviation: "LFK",
                                                         conversionFactor: 10),
                                                toCoin: Coin(name: "lasd",
                                                             abbreviation: "COD", conversionFactor: 1)))
        }
    }
}
