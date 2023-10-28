//
//  AppView.swift
//  numerology
//
//  Created by Alexandr on 27.10.23.
//

import SwiftUI

struct AppView: View {
    
    @State var selectedTab = "Расчет"
    let tabs = ["Расчет", "Совместимость", "Значение показателей"]
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab){
                ContentView().tag("Расчет")
                CompobilitiView().tag("Совместимость")
                Text("Значение показателей").tag("Значение показателей")
            }
            
            HStack{
                ForEach(tabs, id: \.self) { tab in
                    Spacer()
                    TabBarItem(tab: tab, selected: $selectedTab)
                    Spacer()
                }
            }.padding(.top, 20)
                .padding(.bottom, 5)
                .frame(maxWidth: .infinity)
                .background(Color.orange.opacity(0.10))
        }
    }
}
    
struct TabBarItem: View {
    
    @State var tab:String
    @Binding var selected: String
    
    var body: some View {
        
        ZStack{
            switch tab {
            case "Расчет":
                Button {
                    withAnimation(.easeIn(duration: 0.3)) {
                        selected = tab
                    }
                } label: {
                    HStack{
                        Image(systemName: "tablecells")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .scaleEffect(selected == tab ? 1.25 : 1.0 )
                        if (selected == tab) {
                            Text(tab)
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                        }
                    }
                }
                .opacity(selected == tab ? 1 : 0.7)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .background(selected == tab ? Color.orange.opacity(90) : Color.orange.opacity(0.10))
                .clipShape(Capsule())
                
            case "Совместимость":
                Button {
                    withAnimation(.easeIn(duration: 0.3)) {
                        selected = tab
                    }
                } label: {
                    HStack{
                        Image(systemName: "person.line.dotted.person")
                            .resizable()
                            .frame(width: 30, height: 20)
                            .foregroundColor(.white)
                            .scaleEffect(selected == tab ? 1.25 : 1.0 )
                        if (selected == tab) {
                            Text(tab)
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                        }
                    }
                }
                .opacity(selected == tab ? 1 : 0.7)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .background(selected == tab ? Color.orange.opacity(90) : Color.orange.opacity(0.10))
                .clipShape(Capsule())
            case "Значение показателей":
                Button {
                    withAnimation(.easeIn(duration: 0.3)) {
                        selected = tab
                    }
                } label: {
                    HStack{
                        Image(systemName: "questionmark.app")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                            .scaleEffect(selected == tab ? 1.25 : 1.0 )
                        if (selected == tab) {
                            Text(tab)
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                        }
                    }
                }
                .opacity(selected == tab ? 1 : 0.7)
                .padding(.vertical, 10)
                .padding(.horizontal, 15)
                .background(selected == tab ? Color.orange.opacity(90) : Color.orange.opacity(0.10))
                .clipShape(Capsule())
            default:
                Button {
                    selected = tab
                } label: {
                    Image(systemName: "questionmark.app")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                        .scaleEffect(selected == tab ? 1.25 : 1.0 )
                    Text(tab)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                }
                .padding(.vertical, 5)
                .padding(.horizontal, 17)
                .background(Color.orange.opacity(90))
                .clipShape(Capsule())
            }
        }
    }
}

#Preview {
    AppView()
}
