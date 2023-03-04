//
//  ListViewBootCamp.swift
//  AnswerOnStackoverflow
//
//  Created by Quang Bao on 23/02/2023.
//

import SwiftUI

struct ListViewBootCamp: View {
    
    var body: some View {
        VStack(spacing: 0) {
            Text("HELLO")
                .frame(maxWidth: .infinity)
                .background(.green)
            
            List{
                ForEach(1...3, id: \.self) {order in
                    
                    Text("hello")
                        .padding(.top, 5)
                        .padding(.bottom, 10)
                        .padding(.leading, 15)
                        .padding(.trailing, 20)
//                        .padding(.horizontal)
//                        .padding(.vertical)
                }
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct ListViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListViewBootCamp()
    }
}
