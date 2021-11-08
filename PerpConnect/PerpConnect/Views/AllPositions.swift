//
//  AllPositions.swift
//  PerpConnect
//
//  Created by Shreyas Papinwar on 08/11/21.
//

import SwiftUI

struct AllPositions: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.white)
                .opacity(0.1)
            
            VStack {
                HStack {
                    Group {
                        ZStack {
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color.white)
                                .opacity(0.8)
                            Text("Positions")
                                .foregroundColor(.black)
                            
                        }
                        .frame(width: 80, height: 35)
                        
                        Text("Trades")
                            .foregroundColor(.gray)
                            .fontWeight(.medium)
                            .padding(.leading)
                        
                        Spacer()
                    }
                    
                }
                .padding()
                
                HStack {
                    Group {
                        Text("ASSET")
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("SIDE")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        Text("SIZE")
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    Group {
                        
                        Text("LEVERAGE")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        Text("ENTRY")
                            .foregroundColor(.gray)
                        
                        Spacer()
                        Text("LIQ PRICE")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        Text("MARGIN")
                            .foregroundColor(.gray)
                        Spacer()
                        
                        Text("PnL")
                            .foregroundColor(.gray)
                    }
                    
                }
                .font(.system(size: 12))
                .padding(.horizontal, 20)
                
                
                Rectangle()
                    .frame(height: 0.5)
                    .opacity(0.5)
                
                HStack {
                    Group {
                        Text("PERP")
                        
                        Spacer()
                        
                        Text("Long")
                            .foregroundColor(.green)
                        Spacer()
                        
                        Text("1.000")
                        Spacer()
                    }
                    Group {
                        
                        Text("1.00 x")
                        Spacer()
                        
                        Text("16.8430")
                        
                        Spacer()
                        Text("     N/A     ")
                        Spacer()
                        
                        Text("16.90")
                        Spacer()
                        
                        Text("+0.96")
                    }
                    
                }
                .font(.system(size: 12))
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                .padding(.top, 5)
                
                HStack {
                    Group {
                        Text("SNX ")
                        
                        Spacer()
                        
                        Text(" Long")
                            .foregroundColor(.green)
                        Spacer()
                        
                        Text("1.434")
                        Spacer()
                    }
                    Group {
                        
                        Text("1.00 x")
                        Spacer()
                        
                        Text("10.4600")
                        
                        Spacer()
                        Text("0.0529233")
                        Spacer()
                        
                        Text("14.93")
                        Spacer()
                        
                        Text("-0.06")
                    }
                    
                }
                .font(.system(size: 12))
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                .padding(.top, 10)
                
                Spacer()
            }
        }
    }
}

struct AllPositions_Previews: PreviewProvider {
    static var previews: some View {
        AllPositions()
    }
}
