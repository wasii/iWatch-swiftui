//
//  DetailedView.swift
//  iWatch-swiftui
//
//  Created by Abul Jaleel on 28/05/2024.
//

import SwiftUI

struct DetailedView: View {
    
    @State var txt = ""
    @State var index = 0
    var detail: Watch = Watch.watchDetails()[1]
    
    var body: some View {
        ZStack {
            Color("Color").edgesIgnoringSafeArea(.all)
            
            
            VStack {
                //Navigation Bar
                HStack {
                    Button{} label: {
                        Image(systemName: "line.horizontal.3.decrease.circle")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                    }
                    Spacer()
                    Button{} label: {
                        Image(systemName: "cart")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.horizontal)
                    }
                }
                .padding(.vertical)
                
                
                //Search Bar
                HStack(spacing: 15) {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.gray)
                    
                    TextField("Want to search anything", text: $txt)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(8)
                .padding(.horizontal)
                
                
                //name of watch
                HStack {
                    VStack(alignment: .leading, spacing: 10) {
                        Text(detail.title)
                        Text("Apple Watch Series 5")
                            .font(.title)
                            .fontWeight(.bold)
                        
                    }
                    .foregroundColor(.white)
                    Spacer()
                }
                .padding(.vertical)
                .padding(.horizontal)
                
                
                //color and price
                HStack(alignment: .top) {
                    //color and price
                    VStack(alignment: .leading, spacing: 20) {
                        VStack(alignment: .leading) {
                            Text("Color")
                                .foregroundColor(.gray.opacity(0.6))
                            
                            Text(detail.color)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("Price")
                                .foregroundColor(.gray.opacity(0.6))
                            
                            Text(detail.price)
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                    }
                    .offset(y: 40)
                    Spacer()
                    
                    Image(detail.image)
                        .resizable()
                        .frame(width: UIScreen.main.bounds.size.width / 2, height: UIScreen.main.bounds.height / 2.8)
                        .rotationEffect(.init(degrees: 10))
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 10)
                }
                .padding(.horizontal)
                .padding(.bottom, -50)
                .zIndex(1.0)
                
                
                
                //scrollView
                ZStack(alignment: .topLeading) {
                    VStack {
                        ScrollView(.init(), showsIndicators: false) {
                            VStack {
                                HStack(spacing: 0) {
                                    Button {
                                        index = 0
                                    } label: {
                                        Text("Details")
                                            .foregroundStyle(index == 0 ? Color.white : Color.black.opacity(0.5))
                                            .padding(.vertical, 10)
                                            .padding(.horizontal, 25)
                                            .background(index == 0 ? Color("Color1") : Color.clear)
                                            .cornerRadius(8.0)
                                    }
                                    
                                    Button {
                                        index = 1
                                    } label: {
                                        Text("Descriptions")
                                            .foregroundStyle(index == 1 ? Color.white : Color.black.opacity(0.5))
                                            .padding(.vertical, 10)
                                            .padding(.horizontal, 25)
                                            .background(index == 1 ? Color("Color1") : Color.clear)
                                            .cornerRadius(8.0)
                                    }
                                }
                                
                                if index == 0 {
                                    HStack(spacing: 20) {
                                        VStack(spacing: 2) {
                                            Text("15mm")
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .foregroundStyle(Color.black.opacity(0.8))
                                            
                                            Text("Strip Width")
                                                .foregroundStyle(Color.black.opacity(0.4))
                                        }
                                        VStack(spacing: 2) {
                                            Text("Leather")
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .foregroundStyle(Color.black.opacity(0.8))
                                            
                                            Text("Strip material")
                                                .foregroundStyle(Color.black.opacity(0.4))
                                        }
                                        VStack(spacing: 2) {
                                            Text("50mm")
                                                .font(.title)
                                                .fontWeight(.bold)
                                                .foregroundStyle(Color.black.opacity(0.8))
                                            
                                            Text("Water resist")
                                                .foregroundStyle(Color.black.opacity(0.4))
                                        }
                                    }
                                } else {
                                    Text("The Apple Watch Series 5 features a new always-on display, built in compass for advanced navigation features, and a titanium case option.")
                                        .foregroundStyle(Color.black)
                                }

                            }
                            .padding(.horizontal, 25)
                        }
                        .padding(.top, 50)
                        
                        HStack {
                            Button {} label: {
                                Text("Add to cart")
                                    .foregroundStyle(Color.white)
                                    .padding(.vertical)
                                    .frame(width: UIScreen.main.bounds.width / 2)
                                    .background(Color("Color1"))
                                    .cornerRadius(10.0)
                            }
                            .shadow(radius: 5)
                            
                            Spacer(minLength: 0)
                            
                            Button{} label: {
                                Image(systemName: "xmark")
                                    .font(.title)
                                    .foregroundStyle(Color.black.opacity(0.8))
                                    .padding(.horizontal)
                            }
                        }
                        .padding(.top, 10)
                        .padding(.bottom)
                        .padding(.horizontal)
                    }
                    .background(Color.white)
                    .clipShape(CShape())
                    
                    Button {} label: {
                        Image(systemName: "plus")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("Color1"))
                            .clipShape(Circle())
                    }
                    .padding(.leading, 30)
                    .offset(y: -30)
                }
                
                Spacer()
                
                
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}



struct DetailedView_Preview: PreviewProvider {
    static var previews: some View {
        DetailedView(detail: Watch.watchDetails()[1])
    }
}

