//
//  ContentView5.swift
//  ShoppingApp
//
//  Created by Tim Randall on 17/7/21.
//

import SwiftUI

struct ContentView5: View {
    @StateObject var viewRouter: ViewRouter
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView5_Previews: PreviewProvider {
    static var previews: some View {
        ContentView5(viewRouter: ViewRouter())
    }
}
