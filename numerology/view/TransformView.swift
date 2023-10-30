//
//  TransformView.swift
//  numerology
//
//  Created by Alexandr on 29.10.23.
//

import SwiftUI

struct TransformView: View {
    
    @StateObject var counterViewModel: TransformCounrterViewModel
    
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
                       height: screen.width/5)
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
                       height: screen.width/5)
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
                       height: screen.width/5)
                .background(Color.cyan.opacity(1))
                .cornerRadius(12)
            }
            
            
            SimpleRow(firstText: "Характер",
                      secondText: "Здоровье",
                      thirtText: "Удача",
                      fourthText: "Цель",
                      firstContentText: counterViewModel.table.harakter,
                      secondContentText: counterViewModel.table.zdorovie,
                      thirtContentText: counterViewModel.table.udacha,
                      fourthContentText: counterViewModel.table.cell)
            SimpleRow(
                firstText: "Энергия",
                secondText: "Логика",
                thirtText: "Долг",
                fourthText: "Семья",
                firstContentText: counterViewModel.table.energy,
                secondContentText: counterViewModel.table.logic,
                thirtContentText: counterViewModel.table.dolg,
                fourthContentText: counterViewModel.table.semiya)
            SimpleRow(
                firstText: "Интерес",
                secondText: "Труд",
                thirtText: "Память",
                fourthText: "Привычки",
                firstContentText: counterViewModel.table.interes,
                secondContentText: counterViewModel.table.trud,
                thirtContentText: counterViewModel.table.pamyat,
                fourthContentText: counterViewModel.table.privichki)
            LastRow(secondText:"Быт", secondContentText: counterViewModel.table.bit)
                .padding(.bottom, 40)
//            Calendar(counterViewModel: counterViewModel)
//                .padding(.bottom, 150)
            Text("Трансформация")
                .font(.custom("AvenirNext-Bold", size: 24))
                .foregroundColor(.white)
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


#Preview {
    TransformView(counterViewModel: TransformCounrterViewModel())
}
