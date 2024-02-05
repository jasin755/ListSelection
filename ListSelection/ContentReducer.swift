import ComposableArchitecture
import Foundation

struct ContentReducer: Reducer {
	@ObservableState
	struct State: Equatable {
		var selection: Set<ItemReducer.State.ID> = []
		var items: IdentifiedArrayOf<ItemReducer.State> = [
			.init(id: "a", name: "A"),
			.init(id: "b", name: "B"),
		]
	}

	@CasePathable
	enum Action: BindableAction {
		case item(IdentifiedActionOf<ItemReducer>)
		case binding(BindingAction<State>)
	}

	var body: some ReducerOf<Self> {
		BindingReducer()
		Reduce { _, action in

			switch action {
			case .binding(\.selection):
				print("selection triggered")
				return .none
			case .binding:
				print("binding triggered")
				return .none
			case .item:
				print("item triggered")
				return .none
			}
		}
	}
}
