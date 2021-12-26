//
//  SchedFive.swift
//  AppFinal
//
//  Created by Mac on 14.12.21.
//

import SwiftUI

struct SchedFive: View {
    public var subjectList: [SchedFiveSubject] = [
        SchedFiveSubject(
        time: "9.00 - 10.20 Верхн.нед.",
        subject: "ПТ 2/109",
        teacher: "Лапич С.В."),
        
        SchedFiveSubject(
        time: "9.00 - 10.20 Нижн.нед.",
        subject: "МТ 2/410а",
        teacher: "Дереченник С.С."),

        SchedFiveSubject(
        time: "10.40 - 12.00",
        subject: "СЦУ 2/409",
        teacher: "Склипус А.С."),

        SchedFiveSubject(
        time: "12.10-13.30 Верхн.нед.",
        subject: "Арх.ЭВМ 2/306",
        teacher: "Четверкина Г.А."),
    
        SchedFiveSubject(
        time: "12.10-13.30 Нижн.нед.",
        subject: " ",
        teacher: " "),
    
        SchedFiveSubject(
        time: "14.00-15.20 Верхн.нед.",
        subject: "Арх.ЭВМ 2/306",
        teacher: "Четверкина Г.А."),
    
        SchedFiveSubject(
        time: "14.00-15.20 Нижн.нед.",
        subject: " ",
        teacher: " "),
    
    
        SchedFiveSubject(
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
                Text("Friday")
                    .font(.system(size: 25, weight: .heavy))
                    .foregroundColor(Color(hue: 0.52, saturation: 0.561, brightness: 0.903))
            }
            
            NavigationView{
                List(subjectList) { SchedFiveSubject in
                    NavigationLink(
                        destination: FiveView(), label: {
                            HStack {
                                Text(SchedFiveSubject.time)
                                Text(SchedFiveSubject.subject)
                                Text(SchedFiveSubject.teacher)
                        }
                    })
                }
            }
        }
    }
}

struct SchedFiveSubject: Identifiable {
    var id = UUID()
    var time: String
    var subject: String
    var teacher: String
}


struct SchedFive_Previews: PreviewProvider {
    static var previews: some View {
        SchedFive()
    }
}

struct FiveView: View {
    @State private var text = "Write something..."
    var body: some View{
        TextEditor(text: $text)
            .navigationBarTitle(" ", displayMode: .inline)
    }
}
