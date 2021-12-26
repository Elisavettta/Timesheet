
import SwiftUI

struct Wednesday: View {
    public var subjectList: [WednesdaySubject] = [
        
        WednesdaySubject(
            time: "9.00 - 10.20",
            subject: "Физическая культура",
            teacher: " "),
        
        WednesdaySubject(
            time: "10.40 - 12.00",
            subject: "РС 2/210",
            teacher: "Дереченник С.С."),
        
        WednesdaySubject(
            time: "12.10 - 13.30",
            subject: "ММТиУ 2/104",
            teacher: "Дереченник С.С."),
        
        WednesdaySubject(
            time: "14.00 - 15.20",
            subject: "ТП 2/402",
            teacher: "Дереченник С.С."),
        
        WednesdaySubject(
            time: "15.30 - 16.50",
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
                List(subjectList) {WednesdaySubject in
                    NavigationLink(
                        destination: NotesView(), label: {
                            HStack {
                                Text(WednesdaySubject.time)
                                Text(WednesdaySubject.subject)
                               
                                Text(WednesdaySubject.teacher)
                        }
                    })
                }
            }
        }
    }
}

struct WednesdaySubject: Identifiable {
    var id = UUID()
    var time: String
    var subject: String
    var teacher: String
}

struct Wednesday_Previews: PreviewProvider {
    static var previews: some View {
        Wednesday()
    }
}

struct NotView: View {
    @State private var text = " "
    var body: some View{
        TextEditor(text: $text)
            .navigationBarTitle("", displayMode: .inline)
    }
}
