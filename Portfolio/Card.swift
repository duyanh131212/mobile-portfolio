//
//  Card.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

struct Card: View {
    var imgName:String
    var title:String
    var body: some View {
        VStack(spacing: 0){
            Image(imgName).resizable()
                .scaledToFit()
                .frame(width: 120, height: 100)
                .background(Rectangle().fill(.white))
            Divider()
            Text(title)
                .fontWeight(.bold)
                .frame(width: 150, height: 40)
                .background(Rectangle().fill(.white))
        }.mask(Rectangle()
            .cornerRadius(10)
            .frame(width: 120))
        .shadow(radius: 5)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(imgName: "", title: "")
    }
}
