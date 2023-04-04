//
//  Social.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

struct SocialView: View {
    var body: some View {
        VStack{
            HStack{
                Image("edu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 20)
                
                Text("Studies at Case Western Reserve University")
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            HStack{
                Image("Linkedin")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 20)
                
                
                Link("Linkedin", destination: URL(string: "https://www.linkedin.com/in/anhphan1303/")!)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
            HStack{
                Image("Github")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 20)
                
                Link("Github", destination: URL(string: "https://github.com/duyanh131212")!)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            HStack{
                Text("...")
                    .fontWeight(.black)
                    .frame(width: 20,height: 20).padding(.top, -9)
                
                Text("See More")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            Divider()
        }.frame(width: 400)
        
    }
}

struct Social_Previews: PreviewProvider {
    static var previews: some View {
        SocialView()
    }
}
