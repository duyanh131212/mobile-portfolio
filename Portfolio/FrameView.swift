//
//  Frame.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        VStack(spacing: 10){
            HStack(spacing:-10){
                Card(imgName: "spring", title: "Spring Boot")
                Card(imgName: "next", title: "NextJs")
                Card(imgName: "react", title: "ReactJs")
                
                
            }
            HStack(spacing:-10){
                Card(imgName: "django", title: "Django")
                Card(imgName: "express", title: "ExpressJs")
                Card(imgName: "fastapi", title: "FastAPI")
                
                
            }

        }
    }
}

struct Frame_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
