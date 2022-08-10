//
//  ContentView.swift
//  ShoppimngApp
//
//  Created by Роман Шабардин on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var  cartManager = CartManager()
    var colums = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colums,  spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard( product: product)
                           .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Sneaker Shop"))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
