import ComposableArchitecture
import Foundation

struct ItemReducer: Reducer {
	@ObservableState
	struct State: Equatable, Identifiable {
		var id: String
		var name: String
	}

	enum Action {}

	func reduce(into state: inout State, action: Action) -> Effect<Action> {
		return .none
	}
}
