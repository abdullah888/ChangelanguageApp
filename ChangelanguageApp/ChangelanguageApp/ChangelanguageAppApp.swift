//
//  ChangelanguageAppApp.swift
//  ChangelanguageApp
//
//  Created by abdullah on 18/12/1444 AH.
//

import SwiftUI
import LanguageManagerSwiftUI


@main
struct ChangelanguageAppApp: App {
    var body: some Scene {
        WindowGroup {
            LanguageManagerView(.deviceLanguage) {
                ContentView()
            }.transition(.slide)
           
        }
    }
}
