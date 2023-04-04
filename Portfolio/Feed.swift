//
//  Tools.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        VStack{
            Rectangle().fill(Color("lightGray"))
                .frame(height: 7)
                .opacity(0.5)
            FeedHead(name: "Arden Phan updated his profile picture", date: "April 1 2020")
            FeedBody()
            
            FeedFoot()
            
        }
        
        
    }
}

struct Feed_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}

struct FeedHead: View {
    var name: String
    var date: String
    var body: some View{
        HStack(spacing: 5){
            Image("ava")
                .resizable()
                .frame(width: 50,height: 50)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
            
            VStack(alignment:.leading, spacing:7){
                Text(name)
                    .fontWeight(.semibold)
                HStack{
                    Text("\(date) ·")
                        .font(.subheadline)
                        .opacity(0.5)
                    Image(systemName: "globe.americas.fill")
                        .opacity(0.5)
                }
            }
            Spacer()
            Text("...")
                .offset(y:-25)
                .font(.title)
        }
        .frame(maxWidth: 400, alignment: .leading)
        .padding(8)
    }
    
}

struct FeedBody: View {
    var body: some View {
        Image("ava")
            .resizable()
            .scaledToFit()
            .frame(width: 300)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(Color("lightGray"), lineWidth: 4)
            }
            .padding(.bottom,30)
    }
    
}

struct FeedFoot: View {
    var body: some View {
        HStack{
            Spacer()
            Group(content: {
                HStack{
                    Image(systemName: "hand.thumbsup")
                    Text("Like")
                }
            })
            Spacer()
            Group(content: {
                HStack{
                    Image(systemName: "message")
                    Text("Comment")
                }
            })
            Spacer()
            Group(content: {
                HStack{
                    Image(systemName: "square.and.arrow.up")
                    Text("Share")
                }
            })
            Spacer()
        }
        .frame(width: 500)
        .padding(0)
    }
}
