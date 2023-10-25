//
//  ContentView.swift
//  numerology
//
//  Created by Alexandr on 25.10.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
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
                    .background(Color.cyan.opacity(0.63))
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
                    .background(Color.cyan.opacity(0.63))
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
                .background(Color.cyan.opacity(0.63))
                .cornerRadius(12)
        }
            
            
            HStack(spacing: 8) {
                VStack{
                    Text("Характер")
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
                    Text("Здоровье")
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
                Text("Удача")
                    .font(.custom("AvenirNext-Bold", size: 12))
                    .foregroundColor(.white)
                Text("18")
                    .font(.custom("AvenirNext-Bold", size: 18))
                    .foregroundColor(.white)
            }
            .frame(width: screen.width/4.4,
                       height: screen.width/5)
                .background(Color.cyan.opacity(0.63))
                .cornerRadius(12)
                
                VStack{
                    Text("Цель")
                        .font(.custom("AvenirNext-Bold", size: 12))
                        .foregroundColor(.white)
                    Text("18")
                        .font(.custom("AvenirNext-Bold", size: 18))
                        .foregroundColor(.white)
                }
                .frame(width: screen.width/4.4,
                           height: screen.width/5)
                    .background(Color.cyan.opacity(0.63))
                    .cornerRadius(12)
        }
            
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
    ContentView()
}
