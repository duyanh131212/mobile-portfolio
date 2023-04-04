//
//  Lang.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

enum Tool:String, CaseIterable {
    case lang = "Language"
    case frame = "Framework"
    case cloud = "Cloud"
    case db = "Database"
}

struct ToolsView: View {
    @State var selected: Tool = .lang
    
    var body: some View {
        
        VStack{
            Text("Tools")
                .font(.system(size: 23, weight: .bold,design: .default))
                .frame(maxWidth: 400,alignment: .leading)
                
            
            Picker("pick a side", selection: $selected){
                ForEach(Tool.allCases,id: \.self){
                    Text($0.rawValue)
                }
            }
            .pickerStyle(.segmented)
            .padding()
            .frame(width: 430)
            
            VStack(spacing: 20){
                switch selected {
                case .lang:
                    LangView()
                case .frame:
                    FrameView()
                case .cloud:
                    CloudView()
                case .db:
                    DBView()
                }
                SeeAll()
                Divider()
            }.frame(width: 420)
                .padding()
        }
        
        
        
        
    }
}





struct Tools_Previews: PreviewProvider {
    static var previews: some View {
        ToolsView(selected: .lang)
    }
}


struct SeeAll: View {
    var body: some View {
        Text("See All Tools")
            .background(Rectangle().fill(Color("lightGray")).cornerRadius(5).frame(width: 400, height: 40))
            .padding(.vertical)
    }
}


struct All: View{
    var body: some View{
        Text("dsadsadsasdadsa")
    }
}
