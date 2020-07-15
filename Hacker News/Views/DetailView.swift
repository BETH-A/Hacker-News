//
//  DetailView.swift
//  Hacker News
//
//  Created by Mary Arnold on 7/14/20.
//  Copyright © 2020 Beth Arnold. All rights reserved.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}

