import SwiftUI
import UIKit
import PDFKit

struct Pdfpaa: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ZStack{
                Image("pdfpa")
                frame(width: 900, height: 800)
                Image("pdfpa1")
                    .frame(width: 900, height: 820)
                Image("pdfpa2")
                    .frame(width: 900, height: 750)
            }
        }
    }
}

struct Pdfpaa_Previews: PreviewProvider {
    static var previews: some View {
        Pdfpaa()
    }
}
