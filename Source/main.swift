import AppKit

let _ = NSApplication.shared
let appDelegate = AppDelegate()
NSApp.delegate = appDelegate
NSApp.run()

class AppDelegate: NSObject, NSApplicationDelegate {
	var window: NSWindow! = nil

	func applicationDidFinishLaunching(_ notification: Notification) {
		window = NSWindow(
			contentRect: .init(x: 0, y: 0, width: 200, height: 100),
			styleMask: [.titled, .closable, .miniaturizable, .resizable],
			backing: .buffered,
			defer: true,
		)
		window.makeKeyAndOrderFront(nil)
	}
}
