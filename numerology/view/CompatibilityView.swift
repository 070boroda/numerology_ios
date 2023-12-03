//
//  CompatibilityView.swift
//  numerology
//
//  Created by Alexandr on 29.10.23.
//

import SwiftUI

struct CompatibilityView: View {
    var counterOneViewModel: CounterViewModel
    var counterTwoViewModel: CounterViewModel
    
    @StateObject var storeVM: StoreVM
    
    var body: some View {
        ScrollView {
            TableCell(counterViewModel: counterOneViewModel, storeVM: storeVM)
            TableCell(counterViewModel: counterTwoViewModel,  storeVM: storeVM)
            
            if (storeVM.purchasedSubscriptions.isEmpty) {
                SwiftUIViewController()
            }
            Spacer()
            Spacer()
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


struct TableCell: View {
    @StateObject var counterViewModel: CounterViewModel
    @StateObject var storeVM: StoreVM
    var body: some View {
        
        VStack(){
            HStack(spacing: 8) {
                VStack{
                    Text("Доп.числа")
                        .font(.custom("AvenirNext-Bold", size: 10))
                        .foregroundColor(.white)
                    Text(counterViewModel.table.dopChisla)
                        .font(.custom("AvenirNext-Bold", size: 16))
                        .foregroundColor(.white)
                }
                .frame(width: screen.width/2.1,
                       height: screen.width/7)
                .background(Color.cyan.opacity(1))
                .cornerRadius(12)
                
                VStack{
                    Text("Число судьбы")
                        .font(.custom("AvenirNext-Bold", size: 10))
                        .foregroundColor(.white)
                    Text(counterViewModel.table.sudba)
                        .font(.custom("AvenirNext-Bold", size: 16))
                        .foregroundColor(.white)
                }
                .frame(width: screen.width/4.4,
                       height: screen.width/7)
                .background(Color.cyan.opacity(1))
                .cornerRadius(12)
                
                VStack{
                    Text("Темперамент")
                        .font(.custom("AvenirNext-Bold", size: 10))
                        .foregroundColor(.white)
                    Text(counterViewModel.table.temperament)
                        .font(.custom("AvenirNext-Bold", size: 16))
                        .foregroundColor(.white)
                }
                .frame(width: screen.width/4.4,
                       height: screen.width/7)
                .background(Color.cyan.opacity(1))
                .cornerRadius(12)
            }
            
            
            SimpleRowCompatibility(firstText: "Характер",
                                   secondText: "Здоровье",
                                   thirtText: "Удача",
                                   fourthText: "Цель",
                                   firstContentText: counterViewModel.table.harakter,
                                   secondContentText: counterViewModel.table.zdorovie,
                                   thirtContentText: counterViewModel.table.udacha,
                                   fourthContentText: counterViewModel.table.cell)
            SimpleRowCompatibility(
                firstText: "Энергия",
                secondText: "Логика",
                thirtText: "Долг",
                fourthText: "Семья",
                firstContentText: counterViewModel.table.energy,
                secondContentText: counterViewModel.table.logic,
                thirtContentText: counterViewModel.table.dolg,
                fourthContentText: counterViewModel.table.semiya)
            SimpleRowCompatibility(
                firstText: "Интерес",
                secondText: "Труд",
                thirtText: "Память",
                fourthText: "Привычки",
                firstContentText: counterViewModel.table.interes,
                secondContentText: counterViewModel.table.trud,
                thirtContentText: counterViewModel.table.pamyat,
                fourthContentText: counterViewModel.table.privichki)
            LastRowCompatibility(secondText:"Быт", secondContentText: counterViewModel.table.bit,
                                 counterViewModel: counterViewModel,
                                 storeVM: storeVM)
            .padding(.bottom, 10)
        }
    }
    
}

struct SimpleRowCompatibility: View {
    
    var firstText = ""
    var secondText = ""
    var thirtText = ""
    var fourthText = ""
    
    var firstContentText = ""
    var secondContentText = ""
    var thirtContentText = ""
    var fourthContentText = ""
    
    var body: some View {
        HStack() {
            VStack{
                Text(firstText)
                    .font(.custom("AvenirNext-Bold", size: 10))
                    .foregroundColor(.white)
                Text(firstContentText)
                    .font(.custom("AvenirNext-Bold", size: 16))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/7)
            .background(Color.cyan.opacity(0.63))
            .cornerRadius(12)
            
            VStack{
                Text(secondText)
                    .font(.custom("AvenirNext-Bold", size: 10))
                    .foregroundColor(.white)
                Text(secondContentText)
                    .font(.custom("AvenirNext-Bold", size: 16))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/7)
            .background(Color.cyan.opacity(0.63))
            .cornerRadius(12)
            
            VStack{
                Text(thirtText)
                    .font(.custom("AvenirNext-Bold", size: 10))
                    .foregroundColor(.white)
                Text(thirtContentText)
                    .font(.custom("AvenirNext-Bold", size: 16))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/7)
            .background(Color.cyan.opacity(0.63))
            .cornerRadius(12)
            
            VStack{
                Text(fourthText)
                    .font(.custom("AvenirNext-Bold", size: 10))
                    .foregroundColor(.white)
                Text(fourthContentText)
                    .font(.custom("AvenirNext-Bold", size: 16))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/7)
            .background(Color.cyan.opacity(1))
            .cornerRadius(12)
        }
    }
}

struct LastRowCompatibility: View {
    
    var secondText = ""
    var secondContentText = ""
    var counterViewModel: CounterViewModel
    @StateObject var storeVM: StoreVM
    
    var body: some View {
        HStack() {
            VStack{
                Text("")
                    .font(.custom("AvenirNext-Bold", size: 10))
                    .foregroundColor(.white)
                Text("")
                    .font(.custom("AvenirNext-Bold", size: 16))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/7)
            .background(Color.cyan.opacity(0))
            .cornerRadius(12)
            
            VStack{
                Text(secondText)
                    .font(.custom("AvenirNext-Bold", size: 10))
                    .foregroundColor(.white)
                Text(secondContentText)
                    .font(.custom("AvenirNext-Bold", size: 16))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                   height: screen.width/7)
            .background(Color.cyan.opacity(0.63))
            .cornerRadius(12)
            
            VStack{
                if (storeVM.purchasedSubscriptions.isEmpty) {
                    Text("Оформите подписку")
                        .font(.custom("AvenirNext-Bold", size: 18))
                        .foregroundColor(.white)
                    
                } else {
                    CalendarCompatibility(counterViewModel: counterViewModel)
                }
                
            }
            .frame(width: screen.width/2.1,
                   height: screen.width/7)
            .background(Color.cyan.opacity(0))
            .cornerRadius(12)
        }
    }
}

struct CalendarCompatibility: View {
    var counterViewModel: CounterViewModel
    @State var selectedDate: Date = Date()
    var body: some View {
        VStack{
            //            Text("Введите дату рождения")
            //                .font(.custom("AvenirNext-Bold", size: 24))
            //                .foregroundColor(.white)
            DatePicker("",
                       selection: Binding(get: {
                self.selectedDate
            }, set: { newVal in
                self.selectedDate = newVal
                counterViewModel.countTable(selectedDate: newVal)
            }),
                       displayedComponents: .date)
            .datePickerStyle(.compact)
            // .datePickerStyle(WheelDatePickerStyle())
            .labelsHidden()
            .background(Color.orange.opacity(0))
            .accentColor(.orange)
            .frame(height: screen.width/6)
            .colorMultiply(.white)
            .colorInvert()
            .environment(\.locale, Locale.init(identifier: "ru"))
        }
    }
    
}

