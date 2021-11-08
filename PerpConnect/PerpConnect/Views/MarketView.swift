//
//  MarketView.swift
//  PerpConnect
//
//  Created by Shreyas Papinwar on 04/11/21.
//

import SwiftUI
import SwiftUIWebView

struct MarketView: View {
    var amm: AmmInfo
    
    @State private var action = WebViewAction.idle
    @State private var state = WebViewState.empty
    @State private var address = "https://www.google.com"

    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color.black
                VStack {
                    HStack {
                        Image(amm.symbol)
                            .resizable()
                            .frame(width: 40, height: 40)
                        
                        VStack {
                            Text(amm.symbol)
                                .fontWeight(.semibold)
                                .font(.system(size: 18))
                            Text("Perpetual")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        
                        VStack {
                            Text("Mark Price")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                            Text("20.05")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                                .padding(.top, 5)
                        }
                        .padding(.leading, 40)
                        
                        VStack {
                            Text("Index Price")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                            Text("20.12")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                                .padding(.top, 5)
                        }
                        .padding(.leading, 40)
                        
                        VStack {
                            Text("24h Change")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                            Text("+0.91 %")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                                .foregroundColor(.green)
                                .padding(.top, 5)
                        }
                        .padding(.leading, 40)
                        
                        VStack {
                            Text("Funding Rate")
                                .font(.system(size: 12))
                                .fontWeight(.semibold)
                                .foregroundColor(.gray)
                            Text("-0.0046 %")
                                .fontWeight(.semibold)
                                .font(.system(size: 16))
                                .foregroundColor(.green)
                                .padding(.top, 5)
                        }
                        .padding(.leading, 40)
                        
                        Spacer()
                        
                        Button("") {
                                        if let url = URL(string: address) {
                                            action = .load(URLRequest(url: url))
                                        }
                                    }
                    }
                    .padding(30)
                    
                    HStack {
                        Image("chart")
                            .resizable()
                            .frame(width: geo.size.width * 0.70, height: 450)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.bottom)
                        
                        SetOrderView()
                    }
                    
                    HStack {
                        
                        AllPositions()
                            .frame(width: geo.size.width * 0.70)
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.bottom)
                        
                        Spacer()
                        
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct MarketView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView(amm: AmmInfo(symbol: "PERP", name: "Perpetual Protocol", pair: "PERP/USDC", address: "0xfcAE57DB10356FCf76B6476B21ac14C504a45128"))
    }
}
