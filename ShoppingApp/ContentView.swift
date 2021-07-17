//
//  ContentView.swift
//  ShoppingApp
//
//  Created by Tim Randall on 17/7/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @State var tpq: Int = 0
    @State var tsq: Int = 0
    @State var nq: Int = 0
    @StateObject var toothpasteTotal: Total
    var body: some View {
        VStack{
            Text("Grocery Dept")
                .padding()
            Text("total")
                .padding()
            HStack{
                Text("Toothpaste: $2")
                TextField("quantity", value: $tpq, formatter: NumberFormatter())
            }
            HStack{
                Text("Tomato sauce: $3")
                TextField("quantity", value: $tsq, formatter: NumberFormatter())
            }
            HStack{
                Text("Noodles: $1")
                TextField("quantity", value: $nq, formatter: NumberFormatter())
            }
            Button("Next department", action:{
                viewRouter.currentPage = .page2
                toothpasteTotal.total = 2 * tpq
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter(), toothpasteTotal: Total())
    }
}
