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

		let label = NSTextField(labelWithString: "Hi, Cocoa!")
		label.font = .systemFont(ofSize: 48, weight: .semibold)

		label.translatesAutoresizingMaskIntoConstraints = false
		let contentView = w.contentView!
		contentView.addSubview(label)
		NSLayoutConstraint.activate([
			label.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
			label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
			label.leftAnchor.constraint(greaterThanOrEqualTo: contentView.leftAnchor, constant: 30),
			label.topAnchor.constraint(greaterThanOrEqualTo: contentView.topAnchor, constant: 30),
		])

		w.center()
		w.setFrameAutosaveName("MainWindow")
		return w
	}()

	func applicationOpenUntitledFile(_ sender: NSApplication) -> Bool {
		window.makeKeyAndOrderFront(nil)
		return true
	}
}
