//
//  ContentView6.swift
//  ShoppingApp
//
//  Created by Tim Randall on 17/7/21.
//

import SwiftUI

struct ContentView6: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView6_Previews: PreviewProvider {
    static var previews: some View {
        ContentView6(viewRouter: ViewRouter())
    }
}
