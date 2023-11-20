//
//  AdsBanner.swift
//  numerology
//
//  Created by Alexandr on 19.11.23.
//

import SwiftUI
import YandexMobileAds

struct SwiftUIViewController: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> InlineBannerViewController {
        return InlineBannerViewController()
    }
    
    func updateUIViewController(_ uiViewController: InlineBannerViewController, context: Context) {
        
    }
    
}
