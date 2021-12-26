
import SwiftUI

struct Thursday: View {
    public var subjectList: [ThursdaySubject] = [
        ThursdaySubject(
            time: "9.00 - 10.20 Верхн. нед.",
            subject: "СЦУ 2/303",
            teacher: "Склипус А.С."),
        
        ThursdaySubject(
            time: "9.00 - 10.20 Нижн.нед.",
            subject: "СиБД 2/403",
            teacher: "Коваленко В.Ю."),
        
        ThursdaySubject(
            time: "10.40 - 12.00 Верхн. нед.",
            subject: "СЦУ 2/303",
            teacher: "Склипус А.С."),
        
        ThursdaySubject(
            time: "10.40 - 12.00 Нижн.нед.",
            subject: "СиБД 2/403",
            teacher: "Коваленко В.Ю."),
        
        ThursdaySubject(
            time: "12.10-13.30",
            subject: "СиБЗ 2/103",
            teacher: "Коваленко В.Ю."),
        
        ThursdaySubject(
            time: "14.00-15.20 Верхн.нед.",
            subject: "ОиКСиС 2/103 ",
            teacher: "Лапич С.В."),
        
        ThursdaySubject(
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
                List(subjectList) { ThursdaySubject in
                    NavigationLink(
                        destination: NotesView(), label: {
                            HStack {
                                Text(ThursdaySubject.time)
                                Text(ThursdaySubject.subject)
                                Text(ThursdaySubject.teacher)
                        }
                    })
                }
            }
        }
    }
}

struct ThursdaySubject: Identifiable {
    var id = UUID()
    var time: String
    var subject: String
    var teacher: String
}

struct Thursday_Previews: PreviewProvider {
    static var previews: some View {
        Thursday()
    }
}

struct NoveView: View {
    @State private var text = " "
    var body: some View{
        TextEditor(text: $text)
            .navigationBarTitle("", displayMode: .inline)
    }
}

