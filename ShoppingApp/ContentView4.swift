//
//  ContentView4.swift
//  ShoppingApp
//
//  Created by Tim Randall on 17/7/21.
//

import SwiftUI

struct ContentView4: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView4_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4(viewRouter: ViewRouter())
    }
}
