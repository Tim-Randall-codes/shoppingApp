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
    var body: some View {
        switch viewRouter.currentPage {
        case .page1:
            ContentView(viewRouter: viewRouter, toothpasteTotal: toothpasteTotal)
        case .page2:
            ContentView2(viewRouter: viewRouter)
        case .page3:
            ContentView3(viewRouter: viewRouter)
        case .page4:
            ContentView4(viewRouter: viewRouter)
        case .page5:
            ContentView5(viewRouter: viewRouter)
        case .page6:
            ContentView6(viewRouter: viewRouter)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter(), toothpasteTotal: Total())
    }
}
