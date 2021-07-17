//
//  ContentView4.swift
//  ShoppingApp
//
//  Created by Tim Randall on 17/7/21.
//

import SwiftUI

struct ContentView4: View {
    @StateObject var viewRouter: ViewRouter
    @ObservedObject var toothpasteTotal: Total
    @ObservedObject var tomatoSauceTotal: Total
    @ObservedObject var noodlesTotal: Total
    var body: some View {
        VStack{
            Text("Here's your Receipt!")
            Text("Toothpaste total: \(String(toothpasteTotal.total))")
            Text("Tomato sauce total: \(String(tomatoSauceTotal.total))")
            Text("Noodles total: \(String(noodlesTotal.total))")
            Text("Pizza total: \(String(pizzaTotal))")
            Text("Bread total: \(String(breadloafTotal))")
            Text("Pie total: \(String(pieTotal))")
            Text("Pumpkin total: \(String(pumpkinTotal))")
            Text("Corncob total: \(String(corncobTotal)) potato sack total \(String(potatosackTotal))")
            Button("Shop again", action:{
                viewRouter.currentPage = .page1
            })
        }
        .background(Color.yellow.edgesIgnoringSafeArea(.all))
    }
}

struct ContentView4_Previews: PreviewProvider {
    static var previews: some View {
        ContentView4(viewRouter: ViewRouter(), toothpasteTotal: Total(), tomatoSauceTotal: Total(), noodlesTotal: Total())
    }
}
