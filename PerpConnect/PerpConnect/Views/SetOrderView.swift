//
//  SetOrderView.swift
//  PerpConnect
//
//  Created by Shreyas Papinwar on 08/11/21.
//

import SwiftUI
import Foundation

struct SetOrderView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 50)
                            .fill(Color.green)
                        Text("Long")
                            .font(.system(size: 18))
                            .foregroundColor(.black)
                            .padding(5)
                    }
                    .frame(width: 75, height: 30)
                
                    ZStack {
                        Text("Short")
                            .foregroundColor(.red)
                            .font(.system(size: 18))
                            .padding(.leading)
                    }
                    
                    Spacer()
                }
                .padding()
                
                HStack {
                    Text("Amount")
                        .foregroundColor(.gray)
                        .font(.system(size: 13))
                        .fontWeight(.semibold)
                        .padding(.leading, 15)
                    
                    
                    Spacer()
                }
                
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.white)
                            .opacity(0.2)
                        HStack {
                            Image("PERP")
                                .resizable()
                                .frame(width: 20, height: 20)
                            
                            Text("PERP")
                                .foregroundColor(.gray)
                                .font(.system(size: 14))
                            
                            Spacer()
                            
                            Text("21")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                        }
                        .padding(10)
                    }
                }
                .frame(height: 25)
                .padding(.trailing, 30)
                .padding(.leading, 20)
                .padding(.top, 15)
                
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.white)
                            .opacity(0.2)
                        HStack {
                            Image(systemName: "dollarsign.circle.fill")
                                .resizable()
                                .frame(width: 20, height: 20)
                            
                            Text("USD")
                                .foregroundColor(.gray)
                                .font(.system(size: 14))
                            
                            Spacer()
                            
                            Text("422.52")
                                .foregroundColor(.white)
                                .font(.system(size: 14))
                        }
                        .padding(10)
                    }
                }
                .frame(height: 20)
                .padding(.trailing, 30)
                .padding(.leading, 20)
                .padding(.top, 15)
                
                HStack {
                    Text("Transaction Details")
                        .foregroundColor(.gray)
                        .font(.system(size: 13))
                        .fontWeight(.semibold)
                        .padding(.leading, 15)
                    
                    
                    Spacer()
                }
                .padding(.top)
                
                HStack {
                    Text("Entry Price")
                        .foregroundColor(Color.white)
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                        .padding(.leading, 15)
                        .opacity(0.3)
                    
                    
                    Spacer()
                    
                    Text("20.12")
                        .foregroundColor(.white)
                        .padding(.trailing, 25)
                }
                .padding(.top)
                HStack {
                    Text("Liquidation Price")
                        .foregroundColor(Color.white)
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                        .padding(.leading, 15)
                        .opacity(0.3)
                    
                    Spacer()
                    
                    Text("0.00")
                        .foregroundColor(.white)
                        .padding(.trailing, 25)
                }
                .padding(.top)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 50)
                        .foregroundColor(.green)
                    
                    Text("Trade")
                        .font(.system(size: 16))
                        .foregroundColor(.black)
                }
                .frame(height: 30)
                .padding()
                
                Spacer()
            }
        }
    }
}

struct SetOrderView_Previews: PreviewProvider {
    static var previews: some View {
        SetOrderView()
    }
}
