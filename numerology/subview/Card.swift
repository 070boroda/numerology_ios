//
//  Card.swift
//  numerology
//
//  Created by Alexandr on 5.11.23.
//

import SwiftUI
import SimpleExpandableView

struct Card: View {
    var title: String
    var content: Text
    var height: Int
    var body: some View {
        ExpandableView(
            headerSize: CGSize(width: 370.0, height: 50.0),
            cardSize: CGSize(width: 370, height: height), header: {
                Text(title)
                    .font(.title2)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(LinearGradient(colors: [.blue, .cyan], startPoint: .top, endPoint: .bottom))
            }, content: {
                VStack {
                    content
                        .padding(.leading, 5.0)
                        
                }
                .foregroundColor(.white)
            })
        .cardBackgroundColor(.cyan)
        .shadow(shadowRadius: 0.0)
        .listRowSeparator(.hidden)
        .frame(maxWidth: .infinity) // align center
        .padding(.vertical, 5.0)
    }
}


