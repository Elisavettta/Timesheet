//
//  SchedFour.swift
//  AppFinal
//
//  Created by Mac on 14.12.21.
//

import SwiftUI

struct SchedFour: View {
    public var subjectList: [SchedFourSubject] = [
        SchedFourSubject(
        time: "9.00 - 10.20",
        subject: "МиМЗИ 2/409",
        teacher: "Хведчук В.И."),

        SchedFourSubject(
        time: "10.40 - 12.00",
        subject: "МТ 2/209",
        teacher: "Дереченник С.С."),

        SchedFourSubject(
        time: "12.10-13.30 Верхн.нед.",
        subject: "МТ 2/306",
        teacher: "Четверкина Г.А."),
    
        SchedFourSubject(
        time: "12.10-13.30 Нижн.нед.",
        subject: "ПТ 2/403",
        teacher: "Коваль А.С."),
    
        SchedFourSubject(
        time: "14.00-15.20 Верхн.нед.",
        subject: "МТ 2/306",
        teacher: "Четверкина Г.А."),
    
        SchedFourSubject(
        time: "14.00-15.20 Нижн.нед.",
        subject: "ПТ 2/403",
        teacher: "Коваль А.С."),
    
    
        SchedFourSubject(
        time: "15.30-16.50",
        subject: " ",
        teacher: " "),
]

    @Environment(\.presentationMode) var present
    var body: some View {
        VStack{
            HStack{
                
                Button(action: {present.wrappedValue.dismiss()})
                {
                    Image(systemName: "chevron.left" )
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(Color.black.opacity(0.6))
                }
                Spacer(minLength: 0)
            }
            .padding([.horizontal,.top])
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Thursday")
                    .font(.system(size: 25, weight: .heavy))
                    .foregroundColor(Color(hue: 0.52, saturation: 0.561, brightness: 0.903))
            }
            
            NavigationView{
                List(subjectList) { SchedFourSubject in
                    NavigationLink(
                        destination: ThreeView(), label: {
                            HStack {
                                Text(SchedFourSubject.time)
                                Text(SchedFourSubject.subject)
                                Text(SchedFourSubject.teacher)
                        }
                    })
                }
            }
        }
    }
}

struct SchedFourSubject: Identifiable {
    var id = UUID()
    var time: String
    var subject: String
    var teacher: String
}

struct SchedFour_Previews: PreviewProvider {
    static var previews: some View {
        SchedFour()
    }
}

struct FourView: View {
    @State private var text = "Write something..."
    var body: some View{
        TextEditor(text: $text)
            .navigationBarTitle(" ", displayMode: .inline)
    }
}
