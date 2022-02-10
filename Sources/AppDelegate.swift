//
//  AppDelegate.swift
//  gitmojiBar
//
//  Created by Fernando on 2022/02/10.
//

import Cocoa
import Then
import LaunchAtLogin

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    private var statusItem: NSStatusItem?
    
    private let menu = NSMenu().then {
        $0.title = ""
    }
    
    private let settingMenuItem = NSMenuItem().then {
        $0.title = Localized.setting
        $0.action = #selector(onSettingClick)
        $0.keyEquivalent = "s"
    }
    
    private let quitMenuItem = NSMenuItem().then {
          $0.title = Localized.quit
          $0.action = #selector(onQuitClick)
          $0.tag = 5
          $0.keyEquivalent = "q"
    }
    
    private let logo = NSImage(named: "statusbar")?.then {
        $0.size = NSSize(width: 16, height: 16)
    }
    
    func applicationDidFinishLaunching(_: Notification) {
        setupUI()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        destroyStatusItem()
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    // MARK: Setup UI
    
    private func setupUI() {
        
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        statusItem?.button?.image = logo
        statusItem?.menu = menu
        
        menu.addItem(settingMenuItem)
        menu.addItem(.separator())
        
        Gitmoji.allCases.forEach { item in
            
            let title = "\(item.emoji) - \(item.description)"
            
            let gitmojiItem = NSMenuItem(title: title, action: #selector(onTap(sender:)), keyEquivalent: "")
            gitmojiItem.setAccessibilityIdentifier(item.emoji)
            menu.addItem(gitmojiItem)
        }
        
        menu.addItem(.separator())
        menu.addItem(quitMenuItem)
    }
    
    private func updateUI() {
        
    }
    
    private func destroyStatusItem() {
         statusItem = nil
    }
    
    private func showNotification(emoji: String) {
        let notification = NSUserNotification()
        notification.title = Localized.notificationTitle
        notification.subtitle = "\(emoji)"
        NSUserNotificationCenter.default.deliver(notification)
    }
    
    @objc func onTap(sender: NSMenuItem) {
        print(sender.accessibilityIdentifier())
        
        let emoji = sender.accessibilityIdentifier()
        let pasteboard = NSPasteboard.general
        pasteboard.declareTypes([.string], owner: nil)
        pasteboard.setString(emoji, forType: .string)
        showNotification(emoji:emoji)
    }
    
    @objc func setupLauchToggle() {
        LaunchAtLogin.isEnabled.toggle()
    }
    
    private func showSettingAlert() {
        let alert = NSAlert()
        
        alert.messageText = Localized.settingTitle
        let button = NSButton(checkboxWithTitle: Localized.autoLaunch, target: nil, action: #selector(setupLauchToggle))
        button.state = LaunchAtLogin.isEnabled ? .on : .off
        alert.accessoryView = button
        
        if alert.runModal() == .alertFirstButtonReturn {
            return
        }
    }
    
    // MARK: Click events
    
    @objc func onSettingClick() {
        showSettingAlert()
    }

    @objc func onQuitClick() {
        NSApplication.shared.terminate(self)
    }
}

