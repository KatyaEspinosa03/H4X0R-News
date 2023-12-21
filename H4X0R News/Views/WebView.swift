//
//  WebView.swift
//  H4X0R News
//
//  Created by Katya Miranda on 23/07/23.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    let urlString: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
             let url = URL(string: safeString)
            let request = URLRequest(url: url!)
                uiView.load(request)
        }
    }
    
    
}
