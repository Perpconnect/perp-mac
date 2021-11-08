//
//  ContentView.swift
//  PerpConnect
//
//  Created by Shreyas Papinwar on 04/11/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
                    SideBar()
                .navigationTitle("Perp Connect")
                }.toolbar {
                    ToolbarItem(placement: .navigation) {
                        Button(action: toggleSidebar, label: { // 1
                            Image(systemName: "sidebar.leading")
                        })
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    private func toggleSidebar() {
        #if os(iOS)
        #else
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
