import ComposableArchitecture
import Foundation
import SwiftUI

struct ItemView: View {
	let store: StoreOf<ItemReducer>

	var body: some View {
		WithPerceptionTracking {
			HStack {
				Text("Name:")
				Text(store.name)
			}
		}
	}
}
