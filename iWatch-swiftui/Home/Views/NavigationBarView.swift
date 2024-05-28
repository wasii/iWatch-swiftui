//
//  NavigationBarView.swift
//  iWatch-swiftui
//
//  Created by Abul Jaleel on 28/05/2024.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        //Navigation Bar
        HStack {
            Button {} label: {
                Image(systemName: "line.horizontal.3.decrease.circle")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.horizontal)
            }
            
            Spacer()
            
            Button {} label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
                    .padding(.horizontal)
            }
        }
        .padding(.vertical)
        //Navigation Bar Ends
    }
}

#Preview {
    NavigationBarView()
}
