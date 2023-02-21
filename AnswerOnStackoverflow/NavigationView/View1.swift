//
//  View1.swift
//  AnswerOnStackoverflow
//
//  Created by Quang Bao on 21/02/2023.
//

//https://stackoverflow.com/questions/75512163/how-to-change-views-without-navigation/75516244#75516244

import SwiftUI

struct View1: View {
    
    @State var isShowView2: Bool = false
    
    var body: some View {
        
        //MARK: -- SHEET
//        VStack {
//            Button {
//                isShowView2.toggle()
//            } label: {
//                Text("View 1")
//                    .font(.system(size: 50, weight: .bold))
//            }
//            .sheet(isPresented: $isShowView2) {
//                View2(isShowView2: $isShowView2)
//            }
//        }

        //MARK: -- FULLSCREENCOVER
//        VStack {
//            Button {
//                isShowView2.toggle()
//            } label: {
//                Text("View 1")
//                    .font(.system(size: 50, weight: .bold))
//            }
//            .fullScreenCover(isPresented: $isShowView2) {
//                View2(isShowView2: $isShowView2)
//            }
//        }

        //MARK: -- TRANSITION
//        ZStack {
//            Button {
//                isShowView2.toggle()
//            } label: {
//                Text("View 1")
//                    .font(.system(size: 50, weight: .bold))
//            }
//
//            if isShowView2 {
//                View2(isShowView2: $isShowView2)
//                    .transition(.move(edge: .bottom))
//                    .animation(.spring())
//            }
//        }

        //MARK: -- OVERLAY
        VStack {
            Button {
                isShowView2.toggle()
            } label: {
                Text("View 1")
                    .font(.system(size: 50, weight: .bold))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay {
            if isShowView2 {
                View2(isShowView2: $isShowView2)
                    .transition(.move(edge: .bottom))
                    .animation(.spring())
            }
        }
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
