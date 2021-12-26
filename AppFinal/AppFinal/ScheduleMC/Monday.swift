
import SwiftUI

struct Monday: View {
    
    @Environment(\.managedObjectContext) var context
    
    public var subjectList: [MondaySubject] = [
        MondaySubject(
            time: "9.00 - 10.20",
            subject: "ОИКСиС 2/103",
            teacher: "Лапич С.В."),
        
        MondaySubject(
            time: "10.40 - 12.00",
            subject: "ВМС 2/401а",
            teacher: "Лапич С.В."),
        
        MondaySubject(
            time: "12.10-13.30 Нижн.нед.",
            subject: "ММТИиУ 2/410б",
            teacher: "Дереченник С.С."),
        
        MondaySubject(
            time: "14.00-15.20",
            subject: " ",
            teacher: " "),
        
        MondaySubject(
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
                List(subjectList) { MondaySubject in
                    NavigationLink(
                        destination: NotesView(), label: {
                            HStack {
                                Text(MondaySubject.time)
                                Text(MondaySubject.subject)
                                Text(MondaySubject.teacher)
                        }
                    })
                }
            }
        }
    }
}

struct MondaySubject: Identifiable {
    var id = UUID()
    var time: String
    var subject: String
    var teacher: String
}

struct Monday_Previews: PreviewProvider {
    static var previews: some View {
        Monday()
    }
}

struct NotesView: View {
    @State var text: String = ""
    var body: some View{
        HStack{
          TextField("Enter new item...", text: $text)
            Button(action: {
                if !text.isEmpty {
            //        let newItem = ToDoList(context: context)
            //        newItem.createdAt = Date()
                }
                do {
               //     try context.save()
                }
                catch{
                    print(error)
                }
                
            }, label: {
               Text("Save")
            })
                
                
            }
        .padding()
        Spacer()
        }
        
    //    TextEditor(text: $text)
     //       .navigationBarTitle(" ", displayMode: .inline)
        //TextField("Type something...", text: $viewModel.text)
    }


