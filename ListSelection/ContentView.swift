import ComposableArchitecture
import SwiftUI

struct ContentView: View {
	@Perception.Bindable var store: StoreOf<ContentReducer>

	var body: some View {
		WithPerceptionTracking {
			List(selection: $store.selection) {
				ForEach(store.scope(state: \.items, action: \.item)) {
					ItemView(store: $0)
				}
			}
		}
	}
}
