//
//  UpdatesManager.swift
//  Ice
//

import SwiftUI

/// Manager for app updates (disabled — self-built fork).
@MainActor
final class UpdatesManager: NSObject, ObservableObject {
    @Published var canCheckForUpdates = false
    @Published var lastUpdateCheckDate: Date?

    private(set) weak var appState: AppState?

    var automaticallyChecksForUpdates: Bool {
        get { false }
        set { }
    }

    var automaticallyDownloadsUpdates: Bool {
        get { false }
        set { }
    }

    init(appState: AppState) {
        self.appState = appState
        super.init()
    }

    func performSetup() { }

    @objc func checkForUpdates() { }
}

// MARK: UpdatesManager: BindingExposable
extension UpdatesManager: BindingExposable { }
