//
//  HomeView.swift
//  iWatch-swiftui
//
//  Created by Abul Jaleel on 28/05/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.06)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                NavigationBarView()
                
                ScrollView(showsIndicators: false) {
                    VStack {
                        HeaderView()
                        
                        MenuBarView()
                        
                        WatchItemView()
                    }
                }
                BottomBarNavigationView()
                
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    HomeView()
}
