//
//  DismissKeyboard.swift
//  AnswerOnStackoverflow
//
//  Created by Quang Bao on 20/02/2023.
//

import SwiftUI

////https://stackoverflow.com/questions/75505784/swiftui-bottom-safe-area-does-not-shrink-after-keyboard-was-shown/75506367#75506367

struct DismissKeyboard: View {
  @State private var text = ""
  @FocusState private var nameIsFocused: Bool

  var body: some View {
    NavigationStack {
      ZStack(alignment: .bottom) {
        ScrollView {
          Color.green.opacity(0.2)
            .frame(height: 1000)
        }
        .ignoresSafeArea(.keyboard)
        
        VStack {
          TextField("", text: $text, prompt: Text("Input"))
            .focused($nameIsFocused)
            .textFieldStyle(.roundedBorder)
            .padding()
            
          NavigationLink("Open link") {
            Text("Details view")
          }
          .simultaneousGesture(TapGesture().onEnded({ _ in
              nameIsFocused = false
          }))
        }
        .background { Color.red }
        .background(ignoresSafeAreaEdges: .bottom)
      }
    }
  }
}

struct DismissKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        DismissKeyboard()
    }
}
