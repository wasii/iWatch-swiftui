//
//  BottomBarNavigationView.swift
//  iWatch-swiftui
//
//  Created by Abul Jaleel on 28/05/2024.
//

import SwiftUI

struct BottomBarNavigationView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        HStack {
            Button{
                selectedTab = 0
            } label: {
                Image(systemName: "suit.heart.fill")
                    .font(.title)
                    .foregroundColor(selectedTab == 0 ? .black : .black.opacity(0.25))
            }
            
            Spacer(minLength: 0)
            
            Button{
                selectedTab = 1
            } label: {
                Image(systemName: "safari")
                    .font(.title)
                    .foregroundColor(selectedTab == 1 ? .black : .black.opacity(0.25))
            }
            
            Spacer(minLength: 0)
            
            Button{
                selectedTab = 2
            } label: {
                Image(systemName: "person.circle")
                    .font(.title)
                    .foregroundColor(selectedTab == 2 ? .black : .black.opacity(0.25))
            }
        }
        .padding(.horizontal, 30)
        .padding(.top)
        .padding(.bottom)
        .background(Color.white)
        .clipShape(CShape())
    }
}

#Preview {
    BottomBarNavigationView()
}

struct CShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 45, height: 45))
        
        return Path(path.cgPath)
    }
}
