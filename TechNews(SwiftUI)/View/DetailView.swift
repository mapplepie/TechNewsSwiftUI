//
//  DetailView.swift
//  TechNews(SwiftUI)
//
//  Created by Mai Uchida on 2021/11/19.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url : String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

