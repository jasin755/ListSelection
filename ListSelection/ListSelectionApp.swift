import SwiftUI

@main
struct ListSelectionApp: App {
	var body: some Scene {
		WindowGroup {
			ContentView(store: .init(initialState: .init(), reducer: { ContentReducer() }))
		}
	}
}
