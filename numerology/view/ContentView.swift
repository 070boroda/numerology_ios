//
//  ContentView.swift
//  numerology
//
//  Created by Alexandr on 25.10.23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: Tab = .tablecells
    
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(){
            HStack(spacing: 8) {
                VStack{
                    Text("Доп.числа")
                        .font(.custom("AvenirNext-Bold", size: 12))
                        .foregroundColor(.white)
                    Text("15,6,11,2")
                        .font(.custom("AvenirNext-Bold", size: 18))
                        .foregroundColor(.white)
                }
                .frame(width: screen.width/2.1,
                       height: screen.width/5)
                    .background(Color.cyan.opacity(1))
                    .cornerRadius(12)
                
                VStack{
                    Text("Число судьбы")
                        .font(.custom("AvenirNext-Bold", size: 12))
                        .foregroundColor(.white)
                    Text("8")
                        .font(.custom("AvenirNext-Bold", size: 18))
                        .foregroundColor(.white)
                }
                .frame(width: screen.width/4.4,
                           height: screen.width/5)
                    .background(Color.cyan.opacity(1))
                    .cornerRadius(12)
            
            VStack{
                Text("Темперамент")
                    .font(.custom("AvenirNext-Bold", size: 12))
                    .foregroundColor(.white)
                Text("18")
                    .font(.custom("AvenirNext-Bold", size: 18))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                       height: screen.width/5)
                .background(Color.cyan.opacity(1))
                .cornerRadius(12)
        }
            

            SimpleRow(firstText: "Характер",
                      secondText: "Здоровье",
                      thirtText: "Удача",
                      fourthText: "Цель")
            SimpleRow(
                          firstText: "Энергия",
                          secondText: "Логика",
                          thirtText: "Долг",
                          fourthText: "Семья")
            SimpleRow(
                          firstText: "Интерес",
                          secondText: "Труд",
                          thirtText: "Память",
                          fourthText: "Привычки")
            LastRow(secondText:"Быт")
                .padding(.bottom, 40)
            Calendar()
                .padding(.bottom, 150)
           // NavigationBar(selectedTab: $selectedTab)
            
        }.frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity)
        .background(LinearGradient(
            colors: [.blue, .orange],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        ))
    }
}


struct SimpleRow: View {
    
     var firstText = ""
     var secondText = ""
     var thirtText = ""
     var fourthText = ""
    
    var body: some View {
        HStack() {
            VStack{
                Text(firstText)
                    .font(.custom("AvenirNext-Bold", size: 12))
                    .foregroundColor(.white)
                Text("15")
                    .font(.custom("AvenirNext-Bold", size: 18))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/5)
            .background(Color.cyan.opacity(0.63))
            .cornerRadius(12)
            
            VStack{
                Text(secondText)
                    .font(.custom("AvenirNext-Bold", size: 12))
                    .foregroundColor(.white)
                Text("8")
                    .font(.custom("AvenirNext-Bold", size: 18))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/5)
            .background(Color.cyan.opacity(0.63))
            .cornerRadius(12)
            
            VStack{
                Text(thirtText)
                    .font(.custom("AvenirNext-Bold", size: 12))
                    .foregroundColor(.white)
                Text("12")
                    .font(.custom("AvenirNext-Bold", size: 18))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/5)
            .background(Color.cyan.opacity(0.63))
            .cornerRadius(12)
            
            VStack{
                Text(fourthText)
                    .font(.custom("AvenirNext-Bold", size: 12))
                    .foregroundColor(.white)
                Text("18")
                    .font(.custom("AvenirNext-Bold", size: 18))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/5)
            .background(Color.cyan.opacity(1))
            .cornerRadius(12)
        }
    }
}

struct LastRow: View {
    
     var secondText = ""
    
    var body: some View {
        HStack() {
            VStack{
                Text("")
                    .font(.custom("AvenirNext-Bold", size: 12))
                    .foregroundColor(.white)
                Text("")
                    .font(.custom("AvenirNext-Bold", size: 18))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/5)
            .background(Color.cyan.opacity(0))
            .cornerRadius(12)
            
            VStack{
                Text(secondText)
                    .font(.custom("AvenirNext-Bold", size: 12))
                    .foregroundColor(.white)
                Text("8")
                    .font(.custom("AvenirNext-Bold", size: 18))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/5)
            .background(Color.cyan.opacity(0.63))
            .cornerRadius(12)
            
            VStack{
                Text("")
                    .font(.custom("AvenirNext-Bold", size: 12))
                    .foregroundColor(.white)
                Text("")
                    .font(.custom("AvenirNext-Bold", size: 18))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/5)
            .background(Color.cyan.opacity(0))
            .cornerRadius(12)
            
            VStack{
                Text("")
                    .font(.custom("AvenirNext-Bold", size: 12))
                    .foregroundColor(.white)
                Text("")
                    .font(.custom("AvenirNext-Bold", size: 18))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/5)
            .background(Color.cyan.opacity(0))
            .cornerRadius(12)
        }
    }
}

struct Calendar: View {
    @State var selectedDate = Date()

  var body: some View {
      
      VStack{
          Text("Введите дату рождения")
              .font(.custom("AvenirNext-Bold", size: 24))
              .foregroundColor(.white)
          DatePicker("",
                     selection: $selectedDate,
                     displayedComponents: .date)
          .datePickerStyle(.compact)
          .labelsHidden()
          .background(Color.orange.opacity(0))
          .accentColor(.orange)
          .frame(height: screen.width/6)
        //  .font(Font.system(size: 75, design: .default))
          .colorMultiply(.white)
          .colorInvert()
          
      }
          
    }
}
    

    #Preview {
        ContentView()
    }

