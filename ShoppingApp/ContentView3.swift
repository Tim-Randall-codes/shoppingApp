//
//  ContentView3.swift
//  ShoppingApp
//
//  Created by Tim Randall on 17/7/21.
//

import SwiftUI

struct ContentView3: View {
    @StateObject var viewRouter: ViewRouter
    @State var pumpkinQuantity = ""
    @State var pumpkinQuantityNum = 0
    @State var corncobQuantity = ""
    @State var corncobQuantityNum = 0
    @State var potatosackQuantity = ""
    @State var potatosackQuantityNum = 0
    var body: some View {
        VStack{
            Text("Fruit and Vegetable Dept")
                .padding()
            Spacer()
            HStack{
                Text("pumpkin $7")
                TextField("quantity", text: $pumpkinQuantity)
            }
            HStack{
                Text("corncob $2")
                TextField("quantity", text: $corncobQuantity)
            }
            HStack{
                Text("potato sack $10")
                TextField("quantity", text: $potatosackQuantity)
            }
            Spacer()
            Button("Checkout", action:{
                pumpkinQuantityNum = Int(pumpkinQuantity) ?? 0
                pumpkinTotal = 7 * pumpkinQuantityNum
                corncobQuantityNum = Int(corncobQuantity) ?? 0
                corncobTotal = 2 * corncobQuantityNum
                potatosackQuantityNum = Int(potatosackQuantity) ?? 0
                potatosackTotal = 10 * potatosackQuantityNum
                viewRouter.currentPage = .page4
            })
        }
        .background(Color.yellow.edgesIgnoringSafeArea(.all))
    }
}

struct ContentView3_Previews: PreviewProvider {
    static var previews: some View {
        ContentView3(viewRouter: ViewRouter())
    }
}
