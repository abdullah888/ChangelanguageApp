//
//  ContentView.swift
//  ChangelanguageApp
//
//  Created by abdullah on 18/12/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var HomeViewScreen = false
    var body: some View {
        VStack {
                  HomeView()
        }
    }
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
