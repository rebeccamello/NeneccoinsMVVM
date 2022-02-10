//
//  CoinCell.swift
//  NeneccoinsMVVM
//
//  Created by Rebecca Mello on 10/02/22.
//

import SwiftUI

struct CoinCell: View {
    
    var content: String
    
    var body: some View {
        VStack {
            HStack {
                Text(content)
                    .foregroundColor(.primary)
                Spacer()
                Image(systemName: "chevron.right")
            }
            Divider()
        }
        .padding(.vertical, 4)
        .padding(.horizontal, 8)
        
    }
}
