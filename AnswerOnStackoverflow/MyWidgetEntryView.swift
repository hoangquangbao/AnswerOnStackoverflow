//
//  MyWidgetEntryView.swift
//  AnswerOnStackoverflow
//
//  Created by Quang Bao on 04/03/2023.
//
/*
 Link: https://stackoverflow.com/questions/75635292/custom-format-for-date-timer
 */
import SwiftUI
import WidgetKit

struct MyWidgetEntryView : View {

    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm"
        return formatter
    }()

    var body: some View {
        VStack {
            Text(Self.dateFormatter.string(from: Date()))
                .font(.largeTitle)
            Spacer()
        }
    }
}

struct MyWidgetEntryView_Previews: PreviewProvider {
    static var previews: some View {
        MyWidgetEntryView()
    }
}
