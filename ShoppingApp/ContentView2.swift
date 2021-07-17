//
//  ContentView2.swift
//  ShoppingApp
//
//  Created by Tim Randall on 17/7/21.
//

import SwiftUI

struct ContentView2: View {
    @StateObject var viewRouter: ViewRouter
    @State var pizzaQuantity = ""
    @State var pizzaQuantityNum = 0
    @State var breadloafQuantity = ""
    @State var breadloafQuantityNum = 0
    @State var pieQuantity = ""
    @State var pieQuantityNum = 0
    var body: some View {
        VStack{
            Text("Bakery Dept")
                .padding()
            Spacer()
            HStack{
                Text("Pizza $5")
                TextField("quantity", text: $pizzaQuantity)
            }
            HStack{
                Text("Loaf of bread $2")
                TextField("quantity", text: $breadloafQuantity)
            }
            HStack{
                Text("Pie $6")
                TextField("quantity", text: $pieQuantity)
            }
            Spacer()
            Button("Next Dept", action:{
                pizzaQuantityNum = Int(pizzaQuantity) ?? 0
                pizzaTotal = 5 * pizzaQuantityNum
                breadloafQuantityNum = Int(breadloafQuantity) ?? 0
                breadloafTotal = 2 * breadloafQuantityNum
                pieQuantityNum = Int(pieQuantity) ?? 0
                pieTotal = 6 * pieQuantityNum
                viewRouter.currentPage = .page3
            })
        }
        .background(Color.yellow.edgesIgnoringSafeArea(.all))
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2(viewRouter: ViewRouter())
    }
}
