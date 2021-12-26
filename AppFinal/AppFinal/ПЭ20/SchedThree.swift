//
//  SchedThree.swift
//  AppFinal
//
//  Created by Mac on 14.12.21.
//

import SwiftUI

struct SchedThree: View {
    public var subjectList: [SchedThreeSubject] = [
        SchedThreeSubject(
            time: "9.00 - 10.20",
            subject: "Физическая культура",
            teacher: " "),
        
        SchedThreeSubject(
            time: "10.40 - 12.00",
            subject: "РС 2/210",
            teacher: "Дереченник С.С."),
        
        SchedThreeSubject(
            time: "12.10-13.30",
            subject: "Арх. ЭВМ 2/103",
            teacher: "Ртищева М.В."),

        SchedThreeSubject(
            time: "14.00-15.20 Верхн.нед.",
            subject: "Арх. ЭВМ 2/103",
            teacher: "Ртищева М.В."),
        
        SchedThreeSubject(
            time: "14.00-15.20 Нижн.нед.",
            subject: "МиМ 2/216 ",
            teacher: "Петров Д.Ю."),
        
        SchedThreeSubject(
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
                Text("Wednesday")
                    .font(.system(size: 25, weight: .heavy))
                    .foregroundColor(Color(hue: 0.52, saturation: 0.561, brightness: 0.903))
            }
            
            NavigationView{
                List(subjectList) { SchedThreeSubject in
                    NavigationLink(
                        destination: ThreeView(), label: {
                            HStack {
                                Text(SchedThreeSubject.time)
                                Text(SchedThreeSubject.subject)
                                Text(SchedThreeSubject.teacher)
                        }
                    })
                }
            }
        }
    }
}

struct SchedThreeSubject: Identifiable {
    var id = UUID()
    var time: String
    var subject: String
    var teacher: String
}

struct SchedThree_Previews: PreviewProvider {
    static var previews: some View {
        SchedThree()
    }
}

struct ThreeView: View {
    @State private var text = "Write something..."
    var body: some View{
        TextEditor(text: $text)
            .navigationBarTitle(" ", displayMode: .inline)
    }
}
