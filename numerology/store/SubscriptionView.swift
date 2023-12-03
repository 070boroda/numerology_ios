//
//  SubscriptionView.swift
//  numerology
//
//  Created by Alexandr on 20.11.23.
//

import SwiftUI
import StoreKit

struct SubscriptionView: View {
    @EnvironmentObject var storeVM: StoreVM
    @State var isPurchased = false
    
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 30)
            Image("num")
                .resizable()
                .frame(width: 50.0, height: 50.0)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 10)
            Text("Оформить Премиум подписку")
            Text("Нумерология")
            Text("Квадрат Пифагора")
            
            Spacer()
                .frame(height: 40)
            
            HStack{
                ForEach(storeVM.subscriptions) { product in
                    Button("""
                \(product.displayPrice)
                \(product.description)
                """,
                           action: {
                        Task {
                            await buy(product: product)
                        }
                    })
                    .buttonStyle(.borderedProminent)
                }
            }
            
            Text("Вы получаете")
            
            HStack{
                Circle()
                    .fill(.black)
                    .frame(width: 10, height: 5)
                Text("Расчет Деградации")
            }
            HStack{
                Circle()
                    .fill(.black)
                    .frame(width: 10, height: 5)
                Text("Расчет Трансформации")
            }
            HStack{
                Circle()
                    .fill(.black)
                    .frame(width: 10, height: 5)
                Text("Расчет Две матрицы на одном экране")
            }
            HStack{
                Circle()
                    .fill(.black)
                    .frame(width: 10, height: 5)
                Text("Скрываете всю рекламу")
            }
            
            HStack {
                Link("Privacy Policy", destination: URL(string: "https://docs.google.com/document/d/1kMOKznRe8SMN_5oLh6qbvixmPkzxagihttRRiOzqbBs/edit?usp=sharing")!)
                    .font(.system(size: 14))
                
                Button("Restore purchase",
                       action: {
                    Task {
                        await storeVM.updateCustomerProductStatus()
                    }
                }).font(.system(size: 14))
                
                Link("Term of use", destination: URL(string: "https://drive.google.com/file/d/1tTCtQYahgVbiikvpH5AEjxwFLR-mUCAt/view?usp=sharing")!)
                    .font(.system(size: 14))
            }
            Spacer()
                .frame(height: 5)
            
            Text("""
                По премиум подписке вы получаете доступ к расчету
            трансформации, деградации, к расчету на экране двух матриц
            для сравнения, скрывается вся реклама. Подписка имеет
            пробный период и не продлится автоматически, если вы отмените
            подписку в течение 24 часов. Ваш аккаунт автоматически продлит
            подписку, если вы не отмените подписку за 24 часа до окончания
            периода подписки. Вы можете управлять и отменять подписку в
            настройках личного кабинета App Store.
            """)
            .font(.system(size: 8))
            
        
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
    
    func buy(product: Product) async {
        do {
            if try await storeVM.purchase(product) != nil {
                isPurchased = true
            }
        } catch {
            print("purchase failed")
        }
    }
}

struct SubscriptionView_Previews: PreviewProvider {
    static var previews: some View {
        SubscriptionView().environmentObject(StoreVM())
    }
}
