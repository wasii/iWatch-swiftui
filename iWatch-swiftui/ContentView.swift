//
//  ContentView.swift
//  iWatch-swiftui
//
//  Created by Abul Jaleel on 28/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView()
    }
}

struct HomeView: View {
    
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
        ZStack {
            Color.black.opacity(0.06)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
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
                
                //Header
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
                //Header Ends
                
                
                //MENU BAR
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
                //MENU BAR ENDS
                
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
