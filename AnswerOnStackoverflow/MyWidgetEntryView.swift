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

    //Option1
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "h:mm"
        return formatter
    }()

    //Option2
    let hoursMinutes = Date().formatted(date: .omitted, time: .shortened)
    
    var body: some View {
        VStack {
            //Option1
            Text(Self.dateFormatter.string(from: Date()))
            //Option2
            Text("\(hoursMinutes)")
            Spacer()
        }
        .font(.largeTitle)
    }
}

struct MyWidgetEntryView_Previews: PreviewProvider {
    static var previews: some View {
        MyWidgetEntryView()
    }
}
