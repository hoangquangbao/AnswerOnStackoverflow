//
//  AlignSwiftView.swift
//  AnswerOnStackoverflow
//
//  Created by Quang Bao on 23/02/2023.
//
//https://stackoverflow.com/questions/75497296/how-can-i-make-an-sf-symbol-horizontally-align-centered-in-swiftui/75497598#75497598

import SwiftUI

struct AlignSwiftView: View {
    var body: some View {
        GeometryReader { g in
           Image(systemName: "a.square")
               .font(.system(size: g.size.width))
               .position(x: g.size.width / 2, y: g.size.width / 2)
        }
    }
}

struct AlignSwiftView_Previews: PreviewProvider {
    static var previews: some View {
        AlignSwiftView()
    }
}
