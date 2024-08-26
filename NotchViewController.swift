
//
//  NotchViewController.swift
//  AK Notch
//
//  Created by Arhaan Keshwani on 08/24/2024.
//

import AppKit
import Cocoa
import SwiftUI

class NotchViewController: NSHostingController<NotchView> {
    init(_ vm: NotchViewModel) {
        super.init(rootView: .init(vm: vm))
    }

    @available(*, unavailable)
    required init?(coder _: NSCoder) {
        fatalError()
    }
}
