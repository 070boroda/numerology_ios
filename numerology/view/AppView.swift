//
//  AppView.swift
//  numerology
//
//  Created by Alexandr on 27.10.23.
//

import SwiftUI

struct AppView: View {
    
    @State var selectedTab = "Расчет"
    
    let tabs = ["Расчет", "Трансформация", "Деградация", "Совместимость", "Значение показателей"]
    let counterViewModel: CounterViewModel
    let counterCompotibilityOneViewModel: CounterViewModel
    let counterCompotibilityTwoViewModel: CounterViewModel
    let transformCounteViewModel: TransformCounrterViewModel
    let degradationCounteViewModel: DegradationCounrterViewModel
    let store: StoreVM
    
    init() {
        UITabBar.appearance().isHidden = true
        counterViewModel = CounterViewModel()
        counterCompotibilityOneViewModel = CounterViewModel()
        counterCompotibilityTwoViewModel = CounterViewModel()
        transformCounteViewModel = TransformCounrterViewModel()
        degradationCounteViewModel = DegradationCounrterViewModel()
        store = StoreVM()
    }
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $selectedTab){
                ContentView(counterViewModel: counterViewModel, storeVM: store)
                .tag("Расчет")
                
                TransformView(counterViewModel: transformCounteViewModel, 
                              degrCounterViewModel: degradationCounteViewModel,
                              storeVM: store
                )
                .tag("Трансформация")
                
                DegradationView(counterViewModel: degradationCounteViewModel, storeVM: store
                )
                .tag("Деградация")
                
                CompatibilityView(counterOneViewModel: counterCompotibilityOneViewModel,
                    counterTwoViewModel: counterCompotibilityTwoViewModel, storeVM: store)
                    .tag("Совместимость")
                
                HelpView()
                    .tag("Значение показателей")
                
                
            }.onChange(of: selectedTab) { val in
                if (val == "Трансформация" && !store.purchasedSubscriptions.isEmpty) {
                    transformCounteViewModel.countTable(selectedDate: counterViewModel.selectedDate)
                    degradationCounteViewModel.countTable(selectedDate: counterViewModel.selectedDate)
                }
//                if (val == "Деградация" && !store.purchasedSubscriptions.isEmpty) {
//                    degradationCounteViewModel.countTable(selectedDate: counterViewModel.selectedDate)
//                }
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
                .padding(.horizontal, 7)
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
                .padding(.horizontal, 7)
                .background(selected == tab ? Color.orange.opacity(90) : Color.orange.opacity(0.10))
                .clipShape(Capsule())
            case "Трансформация":
                Button {
                    withAnimation(.easeIn(duration: 0.3)) {
                        selected = tab
                    }
                } label: {
                    HStack{
                        Image(systemName: "arrow.up")
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
                }.opacity(selected == tab ? 1 : 0.7)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 7)
                    .background(selected == tab ? Color.orange.opacity(90) : Color.orange.opacity(0.10))
                    .clipShape(Capsule())
            case "Деградация":
                Button {
                    withAnimation(.easeIn(duration: 0.3)) {
                        selected = tab
                    }
                } label: {
                    HStack{
                        Image(systemName: "arrow.down")
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
                }.opacity(selected == tab ? 1 : 0.7)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 7)
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
                .padding(.horizontal, 7)
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
