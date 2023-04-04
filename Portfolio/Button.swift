//
//  Button.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

struct Button: View {
    var body: some View {
        HStack{
            Link("Add Friend", destination: URL(string: "https://www.facebook.com/duyanh.phan.585112")! )
                .frame(width: 290,height: 40)
                .background(Color("buttonColor"), in: Rectangle())
                .cornerRadius(9)
                .foregroundColor(.white)
            Image(systemName: "message.fill")
                .frame(width: 45, height: 40)
                .background(Color("lightGray"))
                .foregroundColor(Color("Gray"))
                .cornerRadius(9)
            Text("...")
                .frame(width: 45, height: 40)
                .background(Color("lightGray"))
                .foregroundColor(Color("Gray"))
                .cornerRadius(9)
        }
        .padding(.bottom,10)
    }
}

struct Button_Previews: PreviewProvider {
    static var previews: some View {
        Button()
    }
}
