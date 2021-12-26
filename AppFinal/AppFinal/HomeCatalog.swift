import SwiftUI

struct HomeCatalog : View {

    @State var monday = false
    @State var tuesday = false
    @State var wednesday = false
    @State var thursday = false
    @State var friday = false
    @State var saturday = false
    @State var pdfmc = false
    
    @Environment(\.presentationMode) var present
    var body : some View {
        
            ZStack {
        
                Image("")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
              
                VStack {
                    
                   ZStack {
                
                       VStack{
                           // present
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
                            //
                           Text("МС - 5")
                            .font(.title)
                            .padding(3)
                            Divider()
                    }
                }
                   .padding([.horizontal,.top])
                    
                    ScrollView(.vertical, showsIndicators: false){
                        
                    Spacer(minLength: -10) //расположение верхней границы
                    
                    VStack{
                        
                        //модель monday
                        
                        HStack(alignment: .top) {
                            
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Monday")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                        Text("  9.00 - 10.20 ОиКСиС. 2/103    (Лапич С.В.)")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black.opacity(0.6))
                        
                        Button(action: {monday.toggle()}) {
                            HStack(spacing: 10){
                                Text("Find out")
                                    .fontWeight(.heavy)
                                
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 14, weight: .heavy)) //  указатель find out
                            }
                            .foregroundColor(.black)
                        }
                    }
                            
                            Image("50461") // стикеры
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 100)
                        }
                        .padding()
                        .background(Color(hue: 0.52, saturation: 0.561, brightness: 0.903))
                        .cornerRadius(30)
                        .padding(.bottom,30)
                        .padding(.top,30)
                        
                        //модель tuesday
                        
                        Spacer(minLength: -38) //расположение верхней границы
                        
                        HStack(alignment: .top) {
                            
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Tuesday")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                        Text("  9.00 - 10.20 ТП. 2/306                 (Шульган А.А.)")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black.opacity(0.6))
                        
                        Button(action: {tuesday.toggle()}) {
                            HStack(spacing: 10){
                                Text("Find out")
                                    .fontWeight(.heavy)
                                
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 14, weight: .heavy)) //  указатель find out
                            }
                            .foregroundColor(.black)
                        }
                    }
                            Image("4307") // стикеры
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 100)
                        }
            
                        .padding()
                        .background(Color(hue: 0.067, saturation: 0.726, brightness: 0.95))
                        .cornerRadius(30)
                        .padding(.bottom,30)
                        .padding(.top,30)
                    }
                        //модель Wednesday
                        
                        Spacer(minLength: -38) //расположение верхней границы
                        
                        HStack(alignment: .top) {
                            
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Wednesday")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                        Text("  9.00  -  10.20 Физическая        культура             ")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black.opacity(0.6))
                        
                        Button(action:{wednesday.toggle() }) {
                            HStack(spacing: 10){
                                Text("Find out")
                                    .fontWeight(.heavy)
                                
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 14, weight: .heavy)) //  указатель find out
                            }
                            .foregroundColor(.black)
                        }
                    }
                            
                            Image("89098") // стикеры
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 100)
                        }
                        .padding()
                        .background(Color(hue: 0.605, saturation: 0.616, brightness: 0.943))
                        .cornerRadius(30)
                        .padding(.bottom,30)
                        .padding(.top,30)
                        
                        //модель Thursday
                        
                        Spacer(minLength: -38) //расположение верхней границы
                        
                        HStack(alignment: .top) {
                            
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Thursday")
                            .font(.title)
                            .fontWeight(.heavy)
                            .foregroundColor(.white)
                        
                        Text("  9.00 - 10.20 СЦУ 2/303             (Склипус А.С.)")
                            .fontWeight(.heavy)
                            .foregroundColor(Color.black.opacity(0.6))
                        
                        Button(action: {thursday.toggle()}) {
                            HStack(spacing: 10){
                                Text("Find out")
                                    .fontWeight(.heavy)
                                
                                Image(systemName: "chevron.right")
                                    .font(.system(size: 14, weight: .heavy)) //  указатель find out
                            }
                            .foregroundColor(.black)
                        }
                    }
                            Image("1-3359-512-9") // стикеры
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(height: 100)
                        }
            
                        .padding()
                        .background(Color(hue: 0.08, saturation: 0.552, brightness: 0.959))
                        .cornerRadius(30)
                        .padding(.bottom,30)
                        .padding(.top,30)
                
                    //модель Friday
                    
                    Spacer(minLength: -38) //расположение верхней границы
                    
                    HStack(alignment: .top) {
                        
                VStack(alignment: .leading, spacing: 10) {
                    Text("Friday")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("  9.00 - 10.20  СЦУ 2/404          (Склипус А.С.)")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Button(action: {friday.toggle()}) {
                        HStack(spacing: 10){
                            Text("Find out")
                                .fontWeight(.heavy)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 14, weight: .heavy)) //  указатель find out
                        }
                        .foregroundColor(.black)
                    }
                }
                        
                        Image("5789") // стикеры
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 100)
                    }
                    .padding()
                    .background(Color(hue: 0.162, saturation: 0.713, brightness: 0.925))
                    .cornerRadius(30)
                    .padding(.bottom,30)
                    .padding(.top,30)
        
                    //модель Saturday
                  
                    Spacer(minLength: -20) //расположение верхней границы
                    
                    HStack(alignment: .top) {
                        
                VStack(alignment: .leading, spacing: 10) {
                    Text("Saturday")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("9.00 - 10.20  СЦУ   2/404         (Склипус А.С.)")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Button(action: {saturday.toggle()}) {
                        HStack(spacing: 10){
                            Text("Find out")
                                .fontWeight(.heavy)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 14, weight: .heavy)) //  указатель find out
                        }
                        .foregroundColor(.black)
                    }
                }
                        
                        Image("4739") // стикеры
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 100)
                        
                    }
                    .padding()
                    .background(Color(hue: 0.882, saturation: 0.478, brightness: 0.899))
                    .cornerRadius(30)
                    .padding(.bottom,30)
                    .padding(.top,30)
                    .padding(.top)
                      
                }
// тут была button
                    Button(action: {pdfmc.toggle()}) {
                        HStack(spacing: 10){
                            Text("PDF")
                                .fontWeight(.heavy)
                            
                        //    Image(systemName: "chevron.right")
                                .font(.system(size: 14, weight: .heavy)) //  указатель find out
                        }
                        .foregroundColor(.black)
                    }
                }
            }
            .fullScreenCover(isPresented: $monday) {
              Monday()
        }
           .fullScreenCover(isPresented: $tuesday) {
              Tuesdays()
        }
            .fullScreenCover(isPresented: $wednesday) {
                Wednesday()
        }
            .fullScreenCover(isPresented: $thursday) {
                Thursday()
        }
            .fullScreenCover(isPresented: $friday) {
                Friday()
        }
            .fullScreenCover(isPresented: $saturday) {
                Saturday()
        }
            .fullScreenCover(isPresented: $pdfmc) {
                PdfMc()
        }
        
    }

}

struct HomeCatalog_Previews: PreviewProvider {
    static var previews: some View {
        HomeCatalog()
    }
}
