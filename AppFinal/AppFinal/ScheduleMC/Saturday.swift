
import SwiftUI

struct Saturday: View {
    public var subjectList: [SaturdaySubject] = [
        SaturdaySubject(
            time: "9.00 - 10.20 Верхн. нед.",
            subject: "РС 2/300",
            teacher: "Коваль А.С."),
        
        SaturdaySubject(
            time: "9.00 - 10.20 Нижн.нед.",
            subject: "ОИКСиС 2/403",
            teacher: "Луцюк П.Н."),
        
        SaturdaySubject(
            time: "10.40 - 12.00 Верхн. нед.",
            subject: "РС 2/300",
            teacher: "Коваль А.С."),
        
        SaturdaySubject(
            time: "10.40 - 12.00 Нижн.нед.",
            subject: "ОИКСиС 2/403",
            teacher: "Луцюк П.Н."),
        
        SaturdaySubject(
            time: "12.10-13.30",
            subject: "Физическая культура",
            teacher: " "),
        
        SaturdaySubject(
            time: "14.00-15.20",
            subject: " ",
            teacher: " "),
        
        SaturdaySubject(
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
                List(subjectList) { SaturdaySubject in
                    NavigationLink(
                        destination: NotesView(), label: {
                            HStack {
                                Text(SaturdaySubject.time)
                                Text(SaturdaySubject.subject)
                                Text(SaturdaySubject.teacher)
                        }
                    })
                }
            }
        }
    }
}

struct SaturdaySubject: Identifiable {
    var id = UUID()
    var time: String
    var subject: String
    var teacher: String
}

struct Saturday_Previews: PreviewProvider {
    static var previews: some View {
        Saturday()
    }
}

struct NoveeView: View {
    @State private var text = " "
    var body: some View{
        TextEditor(text: $text)
            .navigationBarTitle("", displayMode: .inline)
    }
}
