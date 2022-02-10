//
//  ConversionView.swift
//  NeneccoinsMVVM
//
//  Created by Rebecca Mello on 08/02/22.
//

import SwiftUI

struct ConversionView: View {
    // Terminar de implementar
    @State private var implInput: String = ""
    @State var result: Double = 0
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Spacer()
                Button(action: {
                    print("Implementar")
                }, label: {
                    Label("Invert", systemImage: "repeat")
                })
            }
            .padding(.trailing, 16)
            
            VStack {
                NavigationLink(destination: {Color.red},
                               label: {CoinCell(content: "From: Implementar")})
                NavigationLink(destination: {Color.red},
                               label: {CoinCell(content: "To: Implementar")})
                
                TextField("IMPL", text: $implInput)
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
                    Text("IMPL \(result)")
                }
            }
            
        }
        .navigationBarTitle("Neneccoins")
    }
}

struct ConversionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ConversionView()
        }
    }
}
