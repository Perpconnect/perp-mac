//
//  SideBar.swift
//  PerpConnect
//
//  Created by Shreyas Papinwar on 08/11/21.
//

import SwiftUI

struct SideBar: View {
    
    var body: some View {
        
            VStack {
                HStack {
                    Image("PERP")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .padding()
                    Spacer()
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 24))
                        .padding()
                    
                    
                }
                List {
                    Label("Overview", systemImage: "binoculars.fill")
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray)
                        .opacity(0.5)
                    
                    
                    ForEach(amms, id: \.self) { amm in
                        NavigationLink(destination: MarketView(amm: amm)) {
                            HStack {
                                Image(amm.symbol)
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                
                                Text(amm.symbol)
                                    .fontWeight(.medium)
                                    .padding(.leading, 5)
                            }
                            .padding(.horizontal, 5)
                            .padding(.vertical)
                        }
                    }
                }
            }

    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
