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
                    Section {
                        NavigationLink("From: ", destination: {SelectionView()})
                            .foregroundColor(.white)
                        NavigationLink("To: ", destination: {SelectionView()})
                            .foregroundColor(.white)
                        
                        TextField("IMPL", text: $implInput)
                            .cornerRadius(6)
                            .overlay(VStack{Divider().offset(x: 0, y: 15)})
                            
                            .padding()
                    }
                    .listRowBackground(Color.gray)
                    
                    
                }
                .background(Color.clear.ignoresSafeArea())
                .onAppear {
                    // Set the default to clear
                    UITableView.appearance().backgroundColor = .clear
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                    .frame(width: 300, height: 300)
                    
                    VStack {
                        Text("Your result is:")
                            .foregroundColor(.white)
                        Text("IMPL \(result)")
                            .foregroundColor(.white)
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
