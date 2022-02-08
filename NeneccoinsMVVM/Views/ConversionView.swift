//
//  ConversionView.swift
//  NeneccoinsMVVM
//
//  Created by Rebecca Mello on 08/02/22.
//

import SwiftUI

struct ConversionView: View {
    
    @State private var implInput: String = ""
    
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
                        NavigationLink("To: ", destination: {SelectionView()})
                    }
                    
                    TextField("IMPL", text: $implInput)
                        .overlay(VStack{Divider().offset(x: 0, y: 15)})
                        .cornerRadius(10)
                        .padding()
                        .textInputAutocapitalization(.never)
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                    .frame(width: 300, height: 300)
                    
                    VStack {
                        Text("Your result is:")
                            .foregroundColor(.white)
                        Text("IMPL 00.00")
                            .foregroundColor(.white)
                    }
                }

            }
            .navigationBarTitle("Neneccoins")
        }
}

struct ConversionView_Previews: PreviewProvider {
    static var previews: some View {
        ConversionView()
    }
}
