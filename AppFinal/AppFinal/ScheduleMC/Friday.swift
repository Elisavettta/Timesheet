
import SwiftUI

struct Friday: View {
    public var subjectList: [FridaySubject] = [
        FridaySubject(
            time: "9.00 - 10.20",
            subject: "СЦУ 2/404",
            teacher: "Склипус А.С."),
        
        FridaySubject(
            time: "10.40 - 12.00",
            subject: "ЦОС 2/103",
            teacher: "Кузьмицкий Н.Н."),
        
        FridaySubject(
            time: "12.10-13.30 Верхн.нед.",
            subject: "ММТИиУ 2/300",
            teacher: "Дереченик С.С."),
        
        FridaySubject(
            time: "12.10-13.30 Нижн.нед.",
            subject: "ВМС 2/303",
            teacher: "Ткачева А.В."),
        
        FridaySubject(
            time: "14.00-15.20 Верхн.нед.",
            subject: "ММТИиУ 2/300",
            teacher: "Дереченик С.С."),
        
        FridaySubject(
            time: "14.00-15.20 Нижн.нед.",
            subject: "ВМС 2/303",
            teacher: "Ткачева А.В."),
        
        FridaySubject(
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
                List(subjectList) { FridaySubject in
                    NavigationLink(
                        destination: NotesView(), label: {
                            HStack {
                                Text(FridaySubject.time)
                                Text(FridaySubject.subject)
                                Text(FridaySubject.teacher)
                        }
                    })
                }
            }
        }
    }
}

struct FridaySubject: Identifiable {
    var id = UUID()
    var time: String
    var subject: String
    var teacher: String
}

struct Friday_Previews: PreviewProvider {
    static var previews: some View {
        Friday()
    }
}

struct NovView: View {
    @State private var text = " "
    var body: some View{
        TextEditor(text: $text)
            .navigationBarTitle("", displayMode: .inline)
    }
}
