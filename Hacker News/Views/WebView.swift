//
//  WebView.swift
//  Hacker News
//
//  Created by Nataliya Lazouskaya on 23.03.22.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable{
    
    typealias UIViewType = WKWebView
    
    let urlString: String?
    
    func makeUIView(context: Context) -> UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
