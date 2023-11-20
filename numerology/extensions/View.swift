//
//  View.swift
//  numerology
//
//  Created by Alexandr on 19.11.23.
//

import SwiftUI

extension View {
    
    func injectIn(controller vc: UIViewController) {
        let controller = UIHostingController(rootView: self)
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        controller.view.backgroundColor = .clear
        vc.view.addSubview(controller.view)
        
        NSLayoutConstraint.activate([
            controller.view.leadingAnchor.constraint(equalTo: vc.view.leadingAnchor),
            controller.view.topAnchor.constraint(equalTo: vc.view.topAnchor),
            controller.view.trailingAnchor.constraint(equalTo: vc.view.trailingAnchor),
            controller.view.bottomAnchor.constraint(equalTo: vc.view.bottomAnchor)
        ])
    }
    
}
