import AppKit

let _ = NSApplication.shared
let appDelegate = AppDelegate()
NSApp.delegate = appDelegate
NSApp.run()

class AppDelegate: NSObject, NSApplicationDelegate {
	func applicationWillTerminate(_ notification: Notification) {
		print("terminating!")
	}
}
