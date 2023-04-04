//
//  DB.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

struct DBView: View {
    var body: some View {
        VStack(spacing: 10){
            HStack(spacing:-10){
                Card(imgName: "mysql", title: "MySql")
                Card(imgName: "mongodb", title: "MongoDB")
                Card(imgName: "pssql", title: "PostgreSql")
                
                
            }
            HStack(spacing:-10){
                Card(imgName: "css", title: "Cassandra")
                Card(imgName: "redis", title: "Redis")
                Card(imgName: "sqlite", title: "SQLite")
                
                
            }

        }
    }
}

struct DB_Previews: PreviewProvider {
    static var previews: some View {
        DBView()
    }
}
