//
//  Lang.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

struct LangView: View {
    var body: some View {
        VStack(spacing:10){
            HStack(spacing:-10){
                Card(imgName: "java", title: "Java")
                Card(imgName: "js", title: "Javascript")
                Card(imgName: "py", title: "Python")
                
            }
            HStack(spacing:-10){
                
                Card(imgName: "rust", title: "Rust")
                Card(imgName: "swift", title: "Swift")
                Card(imgName: "sql", title: "SQL")
                
                
            }
        }
        
    }
}

struct Lang_Previews: PreviewProvider {
    static var previews: some View {
        LangView()
    }
}



