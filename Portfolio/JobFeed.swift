//
//  JobFeed.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

struct JobFeed: View {
    var compName: String
    var date: String
    var imgName:String
    var job: String
    var body: some View {
        VStack{
            Rectangle().fill(Color("lightGray"))
                .frame(height: 7)
                .opacity(0.5)
            FeedHead(name:"Arden Phan", date: date)
            JobBody(compName: compName, date: date, imgName: imgName, job: job)
                .padding(30)
            FeedFoot()
            
            
        }
    }
}

struct JobFeed_Previews: PreviewProvider {
    static var previews: some View {
        JobFeed(compName: "BKStar", date: "2022", imgName: "bkstar", job: "SWE intern")
    }
}

struct JobBody: View {
    var compName: String
    var date: String
    var imgName:String
    var job: String
    var body: some View{
        VStack{
            Image(imgName)
                .resizable()
                .scaledToFit()
                .frame(width: 400)
            Image("job")
                .resizable()
                .frame(width: 70,height:70)
                .background(Circle().fill(.blue))
                .overlay(Circle().stroke(.white, lineWidth: 4))
                .offset(y:-30)
                .padding(.bottom,-30)
            VStack{
                Text("\(job) at \(compName)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    
                Text(date)
                    .font(.subheadline)
                Text("Hanoi")
            }
            .frame(width: 400)
        }
        
        
        
    }
}
