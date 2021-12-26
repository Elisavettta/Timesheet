//
//  SchedTwo.swift
//  AppFinal
//
//  Created by Mac on 13.12.21.
//

import SwiftUI

struct SchedTwo: View {
    public var subjectList: [SchedTwoSubject] = [
        SchedTwoSubject(
            time: "9.00 - 10.20 Верхн.нед.",
            subject: "РС 2/300",
            teacher: "Коваль А.С."),

        SchedTwoSubject(
            time: "9.00 - 10.20 Нижн.нед.",
            subject: "СЦУ 2/303",
            teacher: "Склипус А.С."),
        
        SchedTwoSubject(
            time: "10.40 - 12.00 Верхн.нед.",
            subject: "РС 2/300",
            teacher: "Коваль А.С."),
        
        SchedTwoSubject(
            time: "10.40 - 12.00 Нижн.нед.",
            subject: "СЦУ 2/303",
            teacher: "Склипус А.С."),
        
        SchedTwoSubject(
            time: "12.10-13.30 Верхн.нед.",
            subject: "МТ 2/216",
            teacher: "Четверкина Г.А."),
        
        SchedTwoSubject(
            time: "12.10-13.30 Нижн.нед.",
            subject: "РС 2/210",
            teacher: "Дереченник С.С."),
        
        SchedTwoSubject(
            time: "14.00-15.20 Верхн.нед.",
            subject: "МиСЗИ 2/209",
            teacher: "Хведчук В.И."),
        
        SchedTwoSubject(
            time: "14.00-15.20 Нижн.нед.",
            subject: "РС 2/410а",
            teacher: "КДереченник С.С."),
        
        
        SchedTwoSubject(
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
                Text("Tuesday")
                    .font(.system(size: 25, weight: .heavy))
                    .foregroundColor(Color(hue: 0.52, saturation: 0.561, brightness: 0.903))
            }
            
            NavigationView{
                List(subjectList) { SchedTwoSubject in
                    NavigationLink(
                        destination: OneView(), label: {
                            HStack {
                                Text(SchedTwoSubject.time)
                                Text(SchedTwoSubject.subject)
                                Text(SchedTwoSubject.teacher)
                        }
                    })
                }
            }
        }
    }
}

struct SchedTwoSubject: Identifiable {
    var id = UUID()
    var time: String
    var subject: String
    var teacher: String
}

struct SchedTwo_Previews: PreviewProvider {
    static var previews: some View {
        SchedTwo()
    }
}

struct TwoView: View {
    @State private var text = "Write something..."
    var body: some View{
        TextEditor(text: $text)
            .navigationBarTitle(" ", displayMode: .inline)
    }
}
