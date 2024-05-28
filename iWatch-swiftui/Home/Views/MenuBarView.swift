//
//  MenuBarView.swift
//  iWatch-swiftui
//
//  Created by Abul Jaleel on 28/05/2024.
//

import SwiftUI

struct MenuBarView: View {
   
    @State var selectedItem = "ALL"
    var menu = [
        "ALL",
        "CLASSIC",
        "GRAND",
        "FORMAL",
        "ORIGINAL",
        "TREND"
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 25) {
                ForEach(menu, id: \.self) { item in
                    Button {
                        selectedItem = item
                    } label: {
                        Text(item)
                            .foregroundColor(selectedItem == item ? Color("Color1") : Color("Color").opacity(0.3))
                            .fontWeight(selectedItem == item ? .semibold : .regular)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    MenuBarView()
}
