import AppKit

let _ = NSApplication.shared
let appDelegate = AppDelegate()
NSApp.delegate = appDelegate
NSApp.run()

class AppDelegate: NSObject, NSApplicationDelegate {
	lazy var window = {
		let w = NSWindow(
			contentRect: .init(x: 0, y: 0, width: 200, height: 100),
			styleMask: [.titled, .closable, .miniaturizable, .resizable],
			backing: .buffered,
			defer: true,
		)
		w.isReleasedWhenClosed = false
		return w
	}()

	func applicationOpenUntitledFile(_ sender: NSApplication) -> Bool {
		window.makeKeyAndOrderFront(nil)
		return true
	}
}
