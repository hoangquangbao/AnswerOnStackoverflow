//
//  DismissKeyboardOnScrollView.swift
//  AnswerOnStackoverflow
//
//  Created by Quang Bao on 24/02/2023.
//

import SwiftUI

struct DismissKeyboardOnScrollView: View {
    
    @State var username: String = ""
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            
            Text("Username")
                .font(.headline)
            
            TextField("Username", text: $username)
//                .font(.system(size: 15))
//                .padding()
//                .background(.gray.opacity(0.1))
//                .clipShape(RoundedRectangle(cornerRadius: 15))
//                .padding(.horizontal)
            
                .textFieldStyle(PlainTextFieldStyle())
                .disableAutocorrection(true)
                // TODO: add iOS unique view modifiers
                // #if os(iOS)
                // .autocapitalization(.none)
                // .keyboardType(type.toiOSType())
                // #endif
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 10.0)
                            .strokeBorder(Color.white.opacity(0.3),
                                          style: StrokeStyle(lineWidth: 1.0)))
                
        }
        .onAppear{
            UIScrollView.appearance().keyboardDismissMode = .onDrag
        }
    }
}

struct DismissKeyboardOnScrollView_Previews: PreviewProvider {
    static var previews: some View {
        DismissKeyboardOnScrollView()
    }
}
