//
//  SchedSix.swift
//  AppFinal
//
//  Created by Mac on 14.12.21.
//

import SwiftUI

struct SchedSix: View {
    public var subjectList: [SchedSixSubject] = [
        SchedSixSubject(
        time: "9.00 - 10.20 Верхн.нед.",
        subject: " ",
        teacher: " "),
        
        SchedSixSubject(
        time: "9.00 - 10.20 Нижн.нед.",
        subject: "ПТ 2/410б",
        teacher: "Лапич С.В."),

        SchedSixSubject(
        time: "10.40 - 12.00",
        subject: "МиМ 2/103",
        teacher: "Петров Д.Ю."),

        SchedSixSubject(
        time: "12.10-13.30",
        subject: " Физическая культура",
        teacher: " "),
    
        SchedSixSubject(
        time: "14.00-15.20.",
        subject: " ",
        teacher: " "),
    
        SchedSixSubject(
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
                Text("Saturday")
                    .font(.system(size: 25, weight: .heavy))
                    .foregroundColor(Color(hue: 0.52, saturation: 0.561, brightness: 0.903))
            }
            
            NavigationView{
                List(subjectList) { SchedSixSubject in
                    NavigationLink(
                        destination: SixView(), label: {
                            HStack {
                                Text(SchedSixSubject.time)
                                Text(SchedSixSubject.subject)
                                Text(SchedSixSubject.teacher)
                        }
                    })
                }
            }
        }
    }
}

struct SchedSixSubject: Identifiable {
    var id = UUID()
    var time: String
    var subject: String
    var teacher: String
}


struct SchedSix_Previews: PreviewProvider {
    static var previews: some View {
        SchedSix()
    }
}

struct SixView: View {
    @State private var text = "Write something..."
    var body: some View{
        TextEditor(text: $text)
            .navigationBarTitle(" ", displayMode: .inline)
    }
}
