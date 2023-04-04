//
//  Cloud.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

struct CloudView: View {
    var body: some View {
        VStack(spacing: 10){
            HStack(spacing:-10){
                Card(imgName: "aws", title: "AWS")
                Card(imgName: "ggl", title: "Google Cloud")
                Card(imgName: "azure", title: "MS Azure")
                
                
            }
            HStack(spacing:-10){
                Card(imgName: "firebase", title: "Firebase")
                Card(imgName: "docker", title: "Docker")
                Card(imgName: "k8", title: "Kubernetes")
                
                
            }

        }
    }
}

struct Cloud_Previews: PreviewProvider {
    static var previews: some View {
        CloudView()
    }
}
