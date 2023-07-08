//
//  HomeView.swift
//  ChangelanguageApp
//
//  Created by abdullah on 18/12/1444 AH.
//

import SwiftUI
import LanguageManagerSwiftUI

struct HomeView: View {
    @EnvironmentObject var languageSettings: LanguageSettings
    var body: some View {
        NavigationStack{
            ZStack{
                Color.black.edgesIgnoringSafeArea(.all)
                VStack {
                    
                    HStack{
                        Text("Information page")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                        Spacer()
                        
                        if languageSettings.selectedLanguage == .en {
                            HStack{
                                Button("") {
                                    languageSettings.selectedLanguage = .ar
                                }
                            }
                        } else if languageSettings.selectedLanguage == .ar {
                            HStack{
                                Button("") {
                                    languageSettings.selectedLanguage = .en
                                }
                            }
                        }
                  }
                    
                    Image("IMG")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width - 10 , height: 300)
                        .cornerRadius(8)
                  Text("About the application!")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                  Text("How to use")
                    .padding()
                    .foregroundColor(.white)
                    Spacer()
                }
                .buttonStyle(AppButtonStyle())
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
