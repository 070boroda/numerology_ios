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
            Card(title: "Общие сведения", content: Text("header_text"), height: 250)
            Card(title: "ХАРАКТЕР", content: Text("harakter_text"), height: 580)
            Card(title: "ЭНЕРГИЯ", content: Text("energy_text"), height: 340)
            Card(title: "ИНТЕРЕС", content: Text("interes_text"), height: 370)
            Card(title: "ЗДОРОВЬЕ", content: Text("zdorovie_text"), height: 250)
            Card(title: "ЛОГИКА", content: Text("loigika_text"), height: 500)
            Card(title: "ТРУД", content: Text("trud_text"), height: 250)
            Card(title: "УДАЧА", content: Text("udacha_text"), height: 400)
            Card(title: "ДОЛГ", content: Text("dolg_text"), height: 395)
            Card(title: "ПАМЯТЬ", content: Text("pamyat_text"), height: 400)
            Card(title: "ТЕМПЕРАМЕНТР", content: Text("temperament_text"), height: 500)
            Card(title: "ЦЕЛЬ", content: Text("cell_text"), height: 300)
            Card(title: "СЕМЬЯ", content: Text("semiya_text"), height: 350)
            Card(title: "БЫТ", content: Text("bit_text"), height: 250)
            Card(title: "ПРИВЫЧКИ", content: Text("privichki_text"), height: 150)
            Card(title: "ЧИСЛО СУДЬБЫ", content: Text("sudba_text"), height: 140)
        
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
