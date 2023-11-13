//
//  HelpView.swift
//  numerology
//
//  Created by Alexandr on 2.11.23.
//

import SwiftUI
import SimpleExpandableView

struct HelpView: View {
    var body: some View {
        ScrollView() {
            Card(title: "Общие сведения", content: Text("header_text"))
            Card(title: "ХАРАКТЕР", content: Text("harakter_text"))
            Card(title: "ЭНЕРГИЯ", content: Text("energy_text"))
            Card(title: "ИНТЕРЕС", content: Text("interes_text"))
            Card(title: "ЗДОРОВЬЕ", content: Text("zdorovie_text"))
            Card(title: "ЛОГИКА", content: Text("loigika_text"))
            Card(title: "ТРУД", content: Text("trud_text"))
            Card(title: "УДАЧА", content: Text("udacha_text"))
            Card(title: "ДОЛГ", content: Text("dolg_text"))
            Card(title: "ПАМЯТЬ", content: Text("pamyat_text"))
            Card(title: "ТЕМПЕРАМЕНТР", content: Text("temperament_text"))
            Card(title: "ЦЕЛЬ", content: Text("cell_text"))
            Card(title: "СЕМЬЯ", content: Text("semiya_text"))
            Card(title: "БЫТ", content: Text("bit_text"))
            Card(title: "ПРИВЫЧКИ", content: Text("privichki_text"))
            Card(title: "ЧИСЛО СУДЬБЫ", content: Text("sudba_text"))
        
        }
        .frame(
            minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: .infinity
        )
        .padding(.bottom, 70.00)
        .background(LinearGradient(
            colors: [.blue, .orange],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        ))
    }
}
#Preview {
    HelpView()
}
