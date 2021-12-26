import SwiftUI
import UIKit
import PDFKit


struct PdfMc: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
        VStack {
            Image("swiftuimc")
                .frame(width: 900, height: 800)
            Image("swiftuimc2")
                .frame(width: 900, height: 820)
            Image("swiftuimc1")
                .frame(width: 900, height: 750)
          
        }
            
    }
}
    /*
    class PdfMcs: UIViewController {
        
        let pdfView = PDFView()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.addSubview(pdfView)
            
            let url = Bundle.main.url(forResource: "swiftuimc", withExtension: "pdf")
            let document = PDFDocument(url: url!)
            
            pdfView.document = document
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            pdfView.frame = view.bounds
        }
    }
     */
    
}


struct PdfMc_Previews: PreviewProvider {
    static var previews: some View {
        PdfMc()
    }
}


