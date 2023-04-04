//
//  ContentView.swift
//  Portfolio
//
//  Created by Anh Phan on 4/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .top){
            
            ScrollView(.vertical){
                ProfileView()
            }
            Rectangle()
                .fill(.blue)
                .frame(height: 60).ignoresSafeArea()
        }
        
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





struct ProfileView: View {
    var body: some View {
        VStack{
            Avatar()
            Button()
            SocialView()
            ToolsView(selected: .lang)
            AllFeedView()
            
        }
        
    }
}

struct Avatar: View{
    var body: some View{
        Image("banner")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(height:270)
            .cornerRadius(50)
            .offset(y:-100)
            .padding(.bottom, -100)
        Image("ava")
            .resizable()
            .scaledToFit()
            .frame(width: 180)
            .clipShape(Circle())
            .overlay(Circle().stroke(.blue, lineWidth: 4))
            .offset(y:-120)
            .padding(.bottom, -120)
        Text("Arden Phan")
            .font(.system(size: 30, design: .default))
            .fontWeight(.semibold)
            .foregroundColor(.black)
        
        Text("Software Developer").font(.subheadline)
            .lineLimit(2)
            .foregroundColor(.secondary)
            .padding(.bottom, 10)
    }
}
