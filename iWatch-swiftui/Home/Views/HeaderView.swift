//
//  HeaderView.swift
//  iWatch-swiftui
//
//  Created by Abul Jaleel on 28/05/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("Welcome!")
                Text("Discovery")
                    .font(.title)
                    .fontWeight(.bold)
            }
            .foregroundColor(.black)
            
            Spacer()
            
            Button{} label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    HeaderView()
}
