//
//  WatchItemView.swift
//  iWatch-swiftui
//
//  Created by Abul Jaleel on 28/05/2024.
//

import SwiftUI

struct WatchItemView: View {
    
    
    
    var screenWidth = UIScreen.main.bounds.width
    var screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 25) {
                ForEach(Watch.watchDetails()) { watch in
                    ZStack(alignment: .bottom) {
                        
                        Color("Color")
                            .frame(height: screenHeight / 3)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 10)
                            
                        VStack(spacing: 20) {
                            Image(watch.image)
                                .resizable()
                                .frame(width: screenWidth / 1.7, height: 375)
                                .rotationEffect(.degrees(30))
                                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 10)
                            
                            HStack {
                                VStack(alignment: .leading, spacing: 10) {
                                    Text(watch.title)
                                    
                                    Text("Apple Watch")
                                        .fontWeight(.bold)
                                        .font(.title)
                                }
                                .foregroundColor(.white)
                                
                                Spacer(minLength: 0)
                                
                                
                                Button {} label: {
                                    Image(systemName: "plus")
                                        .font(.title3)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color("Color1"))
                                        .clipShape(Circle())
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom)
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 25)
        }
    }
}

#Preview {
    WatchItemView()
}


struct Watch: Identifiable, Hashable {
    var id: Int
    var color: String
    var price: String
    var image: String
    var title: String
    
    
    static func watchDetails() -> [Watch] {
        return  [
            Watch(id: 0, color: "Dark Black", price: "$399.99", image: "black", title: "Classic Black"),
            Watch(id: 1, color: "Rose Gold", price: "$499.99", image: "gold", title: "Grand Gold"),
            Watch(id: 2, color: "Red", price: "$599.99", image: "red", title: "Formal Red"),
            Watch(id: 3, color: "Light Yellow", price: "$699.99", image: "yellow", title: "Original Yellow"),
            Watch(id: 4, color: "White", price: "$799.99", image: "white", title: "Treand White")
        ]
    }
}
