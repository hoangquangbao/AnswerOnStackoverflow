//
//  View2.swift
//  AnswerOnStackoverflow
//
//  Created by Quang Bao on 21/02/2023.
//

import SwiftUI

struct View2: View {
    
    @Binding var isShowView2: Bool
        
    var body: some View {
        VStack {
            Text("View 2")
                .font(.system(size: 50, weight: .bold))
                .onTapGesture {
                    isShowView2.toggle()
                }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.yellow)
    }
}
