import SwiftUI

struct CatalogP20: View {
    
    @State var one = false
    @State var two = false
    @State var three = false
    @State var four = false
    @State var five = false
    @State var six = false
    
    @Environment(\.presentationMode) var present
    var body: some View {
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
                       Text("ПЭ - 20")
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
                    
                    Text("  9.00 - 10.20 МиСЗИ. 2/300    (Хведчук В.И.)")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Button(action: {one.toggle()}) {
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
                    
                    Text("  9.00 - 10.20 ЗС. 2/300               (Коваль А.С.)")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Button(action: {two.toggle()}) {
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
                    
                    Text("  9.00  -  10.20 Физическая      культура           ")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Button(action:{three.toggle() }) {
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
                    
                    Text("  9.00 - 10.20 МиСЗИ 2/409     (Хведчук В.И.)")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Button(action: {four.toggle()}) {
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
                
                Text("  9.00 - 10.20  ПТ 2/109              (Лапич С.В.)")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black.opacity(0.6))
                
                Button(action: {five.toggle()}) {
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
                
                Text("9.00 - 10.20  ПТ   2/410б           (Лапич С.В.)")
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black.opacity(0.6))
                
                Button(action: {six.toggle()}) {
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
                //кнопка
                Button(action: { }) {
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
    
        .fullScreenCover(isPresented: $one) {
          SchedOne()
    }
       .fullScreenCover(isPresented: $two) {
          SchedTwo()
    }
        .fullScreenCover(isPresented: $three) {
           SchedThree()
    }
        .fullScreenCover(isPresented: $four) {
            SchedFour()
    }
        .fullScreenCover(isPresented: $five) {
            SchedFive()
    }
        .fullScreenCover(isPresented: $six) {
            Saturday()
    }

    }
}


struct CatalogP20_Previews: PreviewProvider {
    static var previews: some View {
        CatalogP20()
    }
}
