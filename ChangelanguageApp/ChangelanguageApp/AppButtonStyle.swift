//
//  AppButtonStyle.swift
//  ChangelanguageApp
//
//  Created by abdullah on 18/12/1444 AH.
//

import SwiftUI

struct AppButtonStyle: PrimitiveButtonStyle {

  func makeBody(configuration: PrimitiveButtonStyleConfiguration) -> some View {
    AppButton(configuration: configuration)
  }
    
  struct AppButton: View {
    @State var focused: Bool = false
    let configuration: PrimitiveButtonStyle.Configuration
    var body: some View {
        VStack{
            Image("LG")
                .resizable()
                .scaledToFill()
                .frame(width: 35 , height: 35)
                .background(.black)
        }
      .scaleEffect(focused ? 1.1 : 1.0)
      .padding()
      .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
        .onChanged { _ in
            self.focused = true
        }
        .onEnded { _ in
            self.focused = false
            configuration.trigger()
        })
    }
  }
}
