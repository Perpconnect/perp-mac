//
//  AmmInfo.swift
//  PerpConnect
//
//  Created by Shreyas Papinwar on 08/11/21.
//


import Foundation

struct AmmInfo: Hashable {
    var id = UUID()
    var symbol: String
    var name: String
    var pair: String
    var address: String
}

