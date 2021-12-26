
import SwiftUI

struct SchedOne: View {
        public var subjectList: [SchedOneSubject] = [
            SchedOneSubject(
                time: "9.00 - 10.20 Верхн.нед.",
                subject: "МиСЗИ 2/300",
                teacher: "Хведчук В.И."),
            
            SchedOneSubject(
                time: "9.00 - 10.20 Нижн.нед.",
                subject: "МиМ 2/303",
                teacher: "Коваль А.С."),
            
            SchedOneSubject(
                time: "10.40 - 12.00 Верхн.нед.",
                subject: "МиСЗИ 2/300",
                teacher: "Хведчук В.И."),
            
            SchedOneSubject(
                time: "10.40 - 12.00 Нижн.нед.",
                subject: "МиМ 2/303",
                teacher: "Коваль А.С."),
            
            SchedOneSubject(
                time: "12.10-13.30 Верхн.нед.",
                subject: "МиМ 2/108",
                teacher: "Петров Д.О."),
            
            SchedOneSubject(
                time: "14.00-15.20",
                subject: " ",
                teacher: " "),
            
            SchedOneSubject(
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
                    Text("Monday")
                        .font(.system(size: 25, weight: .heavy))
                        .foregroundColor(Color(hue: 0.52, saturation: 0.561, brightness: 0.903))
                }
                
                NavigationView{
                    List(subjectList) { SchedOneSubject in
                        NavigationLink(
                            destination: OneView(), label: {
                                HStack {
                                    Text(SchedOneSubject.time)
                                    Text(SchedOneSubject.subject)
                                    Text(SchedOneSubject.teacher)
                            }
                        })
                    }
                }
            }
        }
    }

    struct SchedOneSubject: Identifiable {
        var id = UUID()
        var time: String
        var subject: String
        var teacher: String
    }

struct SchedOne_Previews: PreviewProvider {
    static var previews: some View {
        SchedOne()
    }
}

struct OneView: View {
    @State private var text = "Write something..."
    var body: some View{
        TextEditor(text: $text)
            .navigationBarTitle(" ", displayMode: .inline)
        //TextField("Type something...", text: $viewModel.text)
    }
}
