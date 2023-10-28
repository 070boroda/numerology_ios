//
//  NavigationBar.swift
//  numerology
//
//  Created by Alexandr on 26.10.23.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case tablecells
    case accessibility
    case questionmark
}

struct NavigationBar: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue
    }
    var body: some View {
        VStack{
            HStack{
                Spacer()
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(tab == selectedTab ? 1.25 : 1.0 )
                        .foregroundColor(tab == selectedTab ? .blue : .black)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(Color.orange.opacity(0.3))
            .cornerRadius(10)
            .padding()
        }
    }
}

#Preview {
    NavigationBar(selectedTab: .constant(.tablecells))
}
