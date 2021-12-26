
import SwiftUI

struct Tuesdays: View {
    
    public var subjectList: [TuesdaysSubject] = [
        
        TuesdaysSubject(
            time: "9.00 - 10.20 Верхн. нед.",
            subject: "ТП 2/306",
            teacher: "Шульган А.А."),
        
        TuesdaysSubject(
            time: "9.00 - 10.20 Нижн.нед.",
            subject: "ЦОС 2/403",
            teacher: "Кузьмицкий Н.Н."),
        
        TuesdaysSubject(
            time: "10.40 - 12.00 Верхн. нед.",
            subject: "ТП 2/306",
            teacher: "Шульган А.А."),
        
        TuesdaysSubject(
            time: "10.40 - 12.00 Нижн.нед.",
            subject: "ЦОС 2/403",
            teacher: "Кузьмицкий Н.Н."),
        
        TuesdaysSubject(
            time: "12.10 - 13.30 Верхн. нед.",
            subject: "СиБД 2/210",
            teacher: "Коваленко В.Ю."),
        
        TuesdaysSubject(
            time: "12.10 - 13.30 Нижн.нед.",
            subject: "РС 2/210",
            teacher: "Дереченник С.С."),
        
        TuesdaysSubject(
            time: "14.00-15.20 Верхн. нед.",
            subject: "РС 2/410а ",
            teacher: "Дереченник С.С. "),
        
        TuesdaysSubject(
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
                List(subjectList) {TuesdaysSubject in
                    NavigationLink(
                        destination: NotesView(), label: {
                            HStack {
                                Text(TuesdaysSubject.time)
                                Text(TuesdaysSubject.subject)
                                Text(TuesdaysSubject.teacher)
                        }
                    })
                }
            }
        }
    }
}

struct TuesdaysSubject: Identifiable {
    var id = UUID()
    var time: String
    var subject: String
    var teacher: String
}

struct Tuesdays_Previews: PreviewProvider {
    static var previews: some View {
        Tuesdays()
    }
}

struct NoteView: View {
    @State private var text = " "
    var body: some View{
        TextEditor(text: $text)
            .navigationBarTitle("", displayMode: .inline)
    }
}
