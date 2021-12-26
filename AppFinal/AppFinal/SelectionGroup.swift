import SwiftUI

struct SelectionGroup: View {
    
    @State var mc5 = false
    @State var group = false
    
    var body : some View {
     
        ZStack {
    
            Image("")
                .resizable()
                .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 1.0))
                .edgesIgnoringSafeArea(.all)
          
            VStack {
                
               ZStack {
            
                   VStack{
                        
                        Text("Schedule")
                           .font(.title)
                }
            }
               .padding([.horizontal,.top])
                
                ScrollView(.vertical, showsIndicators: false){
                    
                    Spacer(minLength: 90) //расположение верхней границы
                
                VStack{
                    
                    //модель monday
                    
                    HStack(alignment: .top) {
                        
                VStack(alignment: .leading, spacing: 10) {
                    Text("МС - 5                            ")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text(" ")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Button(action: {mc5.toggle() }) {
                        HStack(spacing: 10){
                            Text("Find out")
                                .fontWeight(.heavy)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 14, weight: .heavy)) //  указатель find out
                        }
                        .foregroundColor(.black)
                    }
                }
                        Image("15584") // стикеры
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 100)
                    }
                    .padding()
                    .background(Color(hue: 0.073, saturation: 0.727, brightness: 0.944))
                    .cornerRadius(30)
                    .padding(.bottom,30)
                    .padding(.top,30)
                    
                    //модель tuesday
                    
                    Spacer(minLength: -38) //расположение верхней границы
                    
                    HStack(alignment: .top) {
                        
                VStack(alignment: .leading, spacing: 10) {
                    Text("ПЭ - 20                         ")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text(" ")
                        .fontWeight(.heavy)
                        .foregroundColor(Color.black.opacity(0.6))
                    
                    Button(action: {group.toggle()}) {
                        HStack(spacing: 10){
                            Text("Find out")
                                .fontWeight(.heavy)
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 14, weight: .heavy)) //  указатель find out
                        }
                        .foregroundColor(.black)
                    }
                }
                        Image("3948") // стикеры
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(height: 100)
                    }
                    .padding()
                    .background(Color(hue: 0.502, saturation: 0.786, brightness: 0.894))
                    .cornerRadius(30)
                    .padding(.bottom,30)
                    .padding(.top,30)
                }
                    Button(action: {
                                    UserDefaults.standard.set(false, forKey: "status")
                        NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                        
                    }) {
                        
                      Text("Home")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color(hue: 0.785, saturation: 0.108, brightness: 0.959, opacity: 0.792))
                    }
                    .cornerRadius(20)
                    .clipShape(Capsule())
                    .padding()
                }
            }
                .fullScreenCover(isPresented: $mc5) {
                  HomeCatalog()
            }
                .fullScreenCover(isPresented: $group) {
                  CatalogP20()
            }
        }
    }
}


struct SelectionGroup_Previews: PreviewProvider {
    static var previews: some View {
        SelectionGroup()
    }
}
