//
//  ProductCard.swift
//  ShoppimngApp
//
//  Created by Роман Шабардин on 07/08/2022.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    
    var product: Product
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                Text(product.name)
                    .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "heart.fill")
                    .font(.system(size: 30))
                    .padding(4)
                    .foregroundColor(.white)
               //     .background(.black)
               //     .cornerRadius(50)
                    .padding(5)
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[0])
            .environmentObject(CartManager())
    }
}
