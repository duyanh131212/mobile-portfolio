//
//  AllFeed.swift
//  Portfolio
//
//  Created by Anh Phan on 4/3/23.
//

import SwiftUI

struct AllFeedView: View {
    var body: some View {
        VStack{
            JobFeed(compName: "BKStar", date: "2022", imgName: "bkstar", job:"Software Engineer Intern")
            JobFeed(compName: "Tekco", date: "2021", imgName: "tekco", job: "Software Engineer Intern")
            JobFeed(compName: "Case Western Reserve University", date: "2021", imgName: "cwru", job:"Peer Tutor")
            PrjFeed(imgName: "vnindex", desc: "Realtime Stock Dashboard", url: "https://github.com/duyanh131212/vnindex-stock-watcher", date: "2022",detail: "A real-time extension VNINDEX stocks data watch-board with detail information and personalized list of stocks -- ReactJs, Firebase, ExpressJs, MongoDB")
            PrjFeed(imgName: "fb", desc: "Fullstack Facebook Clone", url: "https://github.com/duyanh131212/facebook-clone", date: "2022",detail: "Built Facebook Clone with responsive UI, account authorization/authentication, session login, profile page and functional news feed -- ReactJs, Redux, ExpressJs, MongoDB")
            PrjFeed(imgName: "admin", desc: "Fullstack Admin Dashboard", url: "https://github.com/duyanh131212/admin-dashboard", date: "2021",detail: "Built a interactive and responsive dashboard that used as a demo -- ReactJs, MUI")
            Feed()
        }
        
        
    }
}

struct AllFeed_Previews: PreviewProvider {
    static var previews: some View {
        AllFeedView()
    }
}
