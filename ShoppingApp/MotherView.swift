//
//  MotherView.swift
//  ShoppingApp
//
//  Created by Tim Randall on 17/7/21.
//

import SwiftUI

struct MotherView: View {
    @StateObject var viewRouter: ViewRouter
    @StateObject var toothpasteTotal: Total
    @StateObject var tomatoSauceTotal: Total
    @StateObject var noodlesTotal: Total
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            ContentView(viewRouter: viewRouter, toothpasteTotal: toothpasteTotal, tomatoSauceTotal: tomatoSauceTotal, noodlesTotal: noodlesTotal)
        case .page2:
            ContentView2(viewRouter: viewRouter)
        case .page3:
            ContentView3(viewRouter: viewRouter)
        case .page4:
            ContentView4(viewRouter: viewRouter, toothpasteTotal: toothpasteTotal, tomatoSauceTotal: tomatoSauceTotal, noodlesTotal: noodlesTotal)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter(), toothpasteTotal: Total(), tomatoSauceTotal: Total(), noodlesTotal: Total())
    }
}
