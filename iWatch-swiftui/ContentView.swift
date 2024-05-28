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
    @State var selectedTab = 0
    var menu = [
        "ALL",
        "CLASSIC",
        "GRAND",
        "FORMAL",
        "ORIGINAL",
        "TREND"
    ]
    
    var watchData = [
        Watch(id: 0, color: "Dark Black", price: "$399.99", image: "black", title: "Classic Black"),
        Watch(id: 1, color: "Rose Gold", price: "$499.99", image: "gold", title: "Grand Gold"),
        Watch(id: 2, color: "Red", price: "$599.99", image: "red", title: "Formal Red"),
        Watch(id: 3, color: "Light Yellow", price: "$699.99", image: "yellow", title: "Original Yellow"),
        Watch(id: 4, color: "White", price: "$799.99", image: "white", title: "Treand White")
    ]
    
    var screenWidth = UIScreen.main.bounds.width
    var screenHeight = UIScreen.main.bounds.height
    
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
                
                //Watch Items
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 25) {
                        ForEach(watchData) { watch in
                            ZStack(alignment: .bottom) {
                                
                                Color("Color")
                                    .frame(height: screenHeight / 3)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 10)
                                    
                                VStack(spacing: 20) {
                                    Image(watch.image)
                                        .resizable()
                                        .frame(width: screenWidth / 1.7)
                                    
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
                //Watch Items Ends
                
                
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
        .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    ContentView()
}



struct Watch: Identifiable, Hashable {
    var id: Int
    var color: String
    var price: String
    var image: String
    var title: String
}


struct CShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 45, height: 45))
        
        return Path(path.cgPath)
    }
}
