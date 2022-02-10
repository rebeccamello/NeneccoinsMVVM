//
//  SelectionView.swift
//  NeneccoinsMVVM
//
//  Created by Rebecca Mello on 08/02/22.
//

import SwiftUI

struct SelectionView: View {
    var title: String
    
    var body: some View {
        List {
            ForEach(0..<6) { coin in
                Button {
                    // implementar dismiss
                } label: {
                    HStack {
                        Text("IMPLEMENTAR")
                            .foregroundColor(Color.primary)
                        Spacer()
                    }
                }
            }
                .listStyle(.insetGrouped)
        }
        .navigationBarTitle(title)
    }
}

struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView(title: "To")
    }
}
