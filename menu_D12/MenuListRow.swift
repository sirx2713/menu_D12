//
//  MenuListRow.swift
//  menu_D12
//
//  Created by Tafadzwa Alexander Razaro on 2024/03/03.
//

import SwiftUI

struct MenuListRow: View {
    
    var item: MenuItem
    var body: some View {
        HStack{
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            Text(item.name).bold()
            Spacer()
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color(.brown)
                .opacity(0.1))
        
    }
    }

#Preview {
    MenuListRow(item: MenuItem(name: "Test Item", price: "$14", imageName: "tako-sushi"))
}
