//
//  HomeRowView.swift
//  dashboardWithSampleUI
//
//  Created by Aadish Jain on 14/05/25.
//

import SwiftUI

struct HomeRowView: View {
    var title: String
    var date: String
    var icon: String
    var color: Color

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: icon)
                .foregroundColor(.white)
                .padding(10)
                .background(color)
                .clipShape(Circle())

            VStack(alignment: .leading) {
                Text(title)
                    .font(.headline)
                Text(date)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(15)
    }
}
