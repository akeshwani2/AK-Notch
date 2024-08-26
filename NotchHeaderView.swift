//
//  NotchHeaderView.swift
//  AK Notch
//
//  Created by Arhaan Keshwani on 08/25/2024.
//

import ColorfulX
import SwiftUI

struct NotchHeaderView: View {
    @StateObject var vm: NotchViewModel

    var body: some View {
        HStack {
            Text(
                vm.contentType == .settings
                    ? "Arhaan Keshwani"
                    : "AK's Notch"
            )
            .contentTransition(.numericText())
            Spacer()
            Image(systemName: "ellipsis")
        }
        .animation(vm.animation, value: vm.contentType)
        .font(.system(.headline, design: .rounded))
    }
}

#Preview {
    NotchHeaderView(vm: .init())
}
