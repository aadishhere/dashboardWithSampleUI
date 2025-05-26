//
//  HomeView.swift
//  dashboardWithSampleUI
//
//  Created by Aadish Jain on 14/05/25.
//

import SwiftUI

let usersName: String = "Aadish Jain"

struct HomeView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Hello, \(usersName) 👋")
                        .font(.title2.bold())
                        .foregroundColor(.primary)
                    Text("Here's what's on your plate today.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.horizontal)
                .padding(.top, 90)

                HomeHeaderView(title: "Today")
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 15) {
                        HomeCardView(title: "Morning Meeting", time: "10:00 AM", color: Color("ourBlue"))
                        HomeCardView(title: "Design Review", time: "11:30 AM", color: Color("ourRed"))
                        HomeCardView(title: "Code Review", time: "3:00 PM", color: Color("ourYellow"))
                    }
                    .padding(.horizontal)
                }

                HomeHeaderView(title: "Upcoming")
                VStack(spacing: 15) {
                    HomeRowView(title: "Submit app proposal", date: "Tomorrow", icon: "doc.text", color: Color("ourGreen"))
                    HomeRowView(title: "Submit App Design", date: "Tomorrow", icon: "paintbrush", color: Color("ourViolet"))
                }
                .padding(.horizontal)

                HomeHeaderView(title: "Completed")
                VStack(spacing: 15) {
                    HomeRowView(title: "Nav Enhanced", date: "Today", icon: "checkmark", color: .gray)
                }
                .padding(.horizontal)

                Spacer(minLength: 80)
            }
        }
        .background(Color(.systemBackground))
            
    }
}
