//
//  HomeCardView.swift
//  dashboardWithSampleUI
//
//  Created by Aadish Jain on 14/05/25.
//

import SwiftUI

struct HomeCardView: View {
    var title: String
    var time: String
    var color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
            Text(time)
                .font(.caption)
                .foregroundColor(.white.opacity(0.85))
        }
        .padding()
        .frame(maxWidth: 200, minHeight: 100)
        .background(color.gradient)
        .cornerRadius(15)
        .shadow(color: color.opacity(0.4), radius: 6, x: 0, y: 4)
    }
}
