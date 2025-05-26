//
//  HomeHeaderView.swift
//  dashboardWithSampleUI
//
//  Created by Aadish Jain on 14/05/25.
//

import SwiftUI

struct HomeHeaderView: View {
    var title: String

    var body: some View {
        Text(title)
            .font(.headline)
            .padding(.horizontal)
            .padding(.top, 10)
    }
}
