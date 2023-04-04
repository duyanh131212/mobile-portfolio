//
//  PrjFeed.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

struct PrjFeed: View {
    var imgName:String
    var desc:String
    var url: String
    var date:String
    var detail: String
    var body: some View {
        VStack{
            Rectangle().fill(Color("lightGray"))
                .frame(height: 7)
                .opacity(0.5)
            FeedHead(name: "Arden Phan", date: date)
            
            PrjBody(imgName: imgName, desc:desc, url: url, detail: detail).padding(20)
            FeedFoot()
            
            
        }    }
}

struct PrjFeed_Previews: PreviewProvider {
    static var previews: some View {
        PrjFeed(imgName: "fb", desc:"Fullstack Facebook Clone", url: "dsadsad", date:" today", detail: "sadasd")
    }
}

struct PrjBody:View{
    var imgName:String
    var desc:String
    var url: String
    var detail: String
    var body:some View{
        VStack{
            Image(imgName)
                .resizable()
                .scaledToFit()
                .frame(width: 400)
            Image("prj")
                .renderingMode(.template)
                .resizable()
                .frame(width: 50,height:50)
                .foregroundColor(.white)
                .background(Circle().fill(.blue))
                .overlay(Circle().stroke(.white, lineWidth: 2))
                .offset(y:-20)
                .padding(.bottom,-20)
            
            Link(desc, destination: URL(string:url)!)
            Text(detail)
                .font(.subheadline)
                .padding(.top,4)
        }
        .frame(width: 400)
    }
}
