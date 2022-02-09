//
//  ConversionView.swift
//  NeneccoinsMVVM
//
//  Created by Rebecca Mello on 08/02/22.
//

import SwiftUI

struct ConversionView: View {
    
    @State private var implInput: String = ""
    @State var result: Double = 0
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Spacer()
                Button("Invert") {
                    print("inverter")
                }
                .padding()
            }
            
            List {
                NavigationLink("From: ", destination: {SelectionView()}).listRowBackground(Color(uiColor: .secondarySystemBackground))
                NavigationLink("To: ", destination: {SelectionView()}).listRowBackground(Color(uiColor: .secondarySystemBackground))
                
                TextField("IMPL", text: $implInput)
                    .cornerRadius(6)
                    .overlay(VStack{Divider().offset(x: 0, y: 15)})
                    .keyboardType(.decimalPad)
                    .padding()
                    .listRowBackground(Color(uiColor: .secondarySystemBackground))
            }
            .background(Color.clear.ignoresSafeArea())
            .onAppear {
                // Set the default to clear
                UITableView.appearance().backgroundColor = .clear
            }
            
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
