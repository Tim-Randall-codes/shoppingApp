//
//  ContentView.swift
//  ShoppingApp
//
//  Created by Tim Randall on 17/7/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    @State var toothpasteQuantity = ""
    @State var toothpasteQuantityNum: Int = 0
    @State var tomatoSauceQuantity = ""
    @State var tomatoSauceQuantityNum: Int = 0
    @State var noodlesQuantity = ""
    @State var noodlesQuantityNum = 0
    @StateObject var toothpasteTotal: Total
    @StateObject var tomatoSauceTotal : Total
    @StateObject var noodlesTotal: Total
    var body: some View {
        VStack{
            Text("Grocery Dept")
                .padding()
            Spacer()
            HStack{
                Text("Toothpaste: $2")
                TextField("quantity", text: $toothpasteQuantity)
            }
            HStack{
                Text("Tomato sauce: $3")
                TextField("quantity", text: $tomatoSauceQuantity)
            }
            HStack{
                Text("Noodles: $10")
                TextField("quantity", text: $noodlesQuantity)
            }
            Spacer()
            Button("Next department", action:{
                toothpasteQuantityNum = Int(toothpasteQuantity) ?? 0
                toothpasteTotal.total = 2 * toothpasteQuantityNum
                tomatoSauceQuantityNum = Int(tomatoSauceQuantity) ?? 0
                tomatoSauceTotal.total = 3 * tomatoSauceQuantityNum
                noodlesQuantityNum = Int(noodlesQuantity) ?? 0
                noodlesTotal.total = 10 * noodlesQuantityNum
                viewRouter.currentPage = .page2
            })
        }
        .background(Color.yellow.edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter(), toothpasteTotal: Total(), tomatoSauceTotal: Total(), noodlesTotal: Total())
    }
}
