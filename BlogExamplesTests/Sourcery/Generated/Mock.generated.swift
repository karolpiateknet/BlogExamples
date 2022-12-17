// Generated using Sourcery 1.8.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// Generated with SwiftyMocky 4.2.0
// Required Sourcery: 1.8.0


import SwiftyMocky
import XCTest
import UIKit
@testable import BlogExamples


// MARK: - FlowController

open class FlowControllerMock: FlowController, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }

    public var parent: FlowController? {
		get {	invocations.append(.p_parent_get); return __p_parent ?? optionalGivenGetterValue(.p_parent_get, "FlowControllerMock - stub value for parent was not defined") }
		set {	invocations.append(.p_parent_set(.value(newValue))); __p_parent = newValue }
	}
	private var __p_parent: (FlowController)?

    public var children: [FlowController] {
		get {	invocations.append(.p_children_get); return __p_children ?? givenGetterValue(.p_children_get, "FlowControllerMock - stub value for children was not defined") }
		set {	invocations.append(.p_children_set(.value(newValue))); __p_children = newValue }
	}
	private var __p_children: ([FlowController])?

    public var navigationController: NavigationController {
		get {	invocations.append(.p_navigationController_get); return __p_navigationController ?? givenGetterValue(.p_navigationController_get, "FlowControllerMock - stub value for navigationController was not defined") }
	}
	private var __p_navigationController: (NavigationController)?

    public var currentViewController: UIViewController? {
		get {	invocations.append(.p_currentViewController_get); return __p_currentViewController ?? optionalGivenGetterValue(.p_currentViewController_get, "FlowControllerMock - stub value for currentViewController was not defined") }
	}
	private var __p_currentViewController: (UIViewController)?

    public var presentation: FlowControllerPresentation {
		get {	invocations.append(.p_presentation_get); return __p_presentation ?? givenGetterValue(.p_presentation_get, "FlowControllerMock - stub value for presentation was not defined") }
	}
	private var __p_presentation: (FlowControllerPresentation)?





    open func present() {
        addInvocation(.m_present)
		let perform = methodPerformValue(.m_present) as? () -> Void
		perform?()
    }

    open func add(flowController: FlowController) {
        addInvocation(.m_add__flowController_flowController(Parameter<FlowController>.value(`flowController`)))
		let perform = methodPerformValue(.m_add__flowController_flowController(Parameter<FlowController>.value(`flowController`))) as? (FlowController) -> Void
		perform?(`flowController`)
    }

    open func removeFlowController() {
        addInvocation(.m_removeFlowController)
		let perform = methodPerformValue(.m_removeFlowController) as? () -> Void
		perform?()
    }


    fileprivate enum MethodType {
        case m_present
        case m_add__flowController_flowController(Parameter<FlowController>)
        case m_removeFlowController
        case p_parent_get
		case p_parent_set(Parameter<FlowController?>)
        case p_children_get
		case p_children_set(Parameter<[FlowController]>)
        case p_navigationController_get
        case p_currentViewController_get
        case p_presentation_get

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_present, .m_present): return .match

            case (.m_add__flowController_flowController(let lhsFlowcontroller), .m_add__flowController_flowController(let rhsFlowcontroller)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsFlowcontroller, rhs: rhsFlowcontroller, with: matcher), lhsFlowcontroller, rhsFlowcontroller, "flowController"))
				return Matcher.ComparisonResult(results)

            case (.m_removeFlowController, .m_removeFlowController): return .match
            case (.p_parent_get,.p_parent_get): return Matcher.ComparisonResult.match
			case (.p_parent_set(let left),.p_parent_set(let right)): return Matcher.ComparisonResult([Matcher.ParameterComparisonResult(Parameter<FlowController?>.compare(lhs: left, rhs: right, with: matcher), left, right, "newValue")])
            case (.p_children_get,.p_children_get): return Matcher.ComparisonResult.match
			case (.p_children_set(let left),.p_children_set(let right)): return Matcher.ComparisonResult([Matcher.ParameterComparisonResult(Parameter<[FlowController]>.compare(lhs: left, rhs: right, with: matcher), left, right, "newValue")])
            case (.p_navigationController_get,.p_navigationController_get): return Matcher.ComparisonResult.match
            case (.p_currentViewController_get,.p_currentViewController_get): return Matcher.ComparisonResult.match
            case (.p_presentation_get,.p_presentation_get): return Matcher.ComparisonResult.match
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case .m_present: return 0
            case let .m_add__flowController_flowController(p0): return p0.intValue
            case .m_removeFlowController: return 0
            case .p_parent_get: return 0
			case .p_parent_set(let newValue): return newValue.intValue
            case .p_children_get: return 0
			case .p_children_set(let newValue): return newValue.intValue
            case .p_navigationController_get: return 0
            case .p_currentViewController_get: return 0
            case .p_presentation_get: return 0
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_present: return ".present()"
            case .m_add__flowController_flowController: return ".add(flowController:)"
            case .m_removeFlowController: return ".removeFlowController()"
            case .p_parent_get: return "[get] .parent"
			case .p_parent_set: return "[set] .parent"
            case .p_children_get: return "[get] .children"
			case .p_children_set: return "[set] .children"
            case .p_navigationController_get: return "[get] .navigationController"
            case .p_currentViewController_get: return "[get] .currentViewController"
            case .p_presentation_get: return "[get] .presentation"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func parent(getter defaultValue: FlowController?...) -> PropertyStub {
            return Given(method: .p_parent_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func children(getter defaultValue: [FlowController]...) -> PropertyStub {
            return Given(method: .p_children_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func navigationController(getter defaultValue: NavigationController...) -> PropertyStub {
            return Given(method: .p_navigationController_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func currentViewController(getter defaultValue: UIViewController?...) -> PropertyStub {
            return Given(method: .p_currentViewController_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func presentation(getter defaultValue: FlowControllerPresentation...) -> PropertyStub {
            return Given(method: .p_presentation_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func present() -> Verify { return Verify(method: .m_present)}
        public static func add(flowController: Parameter<FlowController>) -> Verify { return Verify(method: .m_add__flowController_flowController(`flowController`))}
        public static func removeFlowController() -> Verify { return Verify(method: .m_removeFlowController)}
        public static var parent: Verify { return Verify(method: .p_parent_get) }
		public static func parent(set newValue: Parameter<FlowController?>) -> Verify { return Verify(method: .p_parent_set(newValue)) }
        public static var children: Verify { return Verify(method: .p_children_get) }
		public static func children(set newValue: Parameter<[FlowController]>) -> Verify { return Verify(method: .p_children_set(newValue)) }
        public static var navigationController: Verify { return Verify(method: .p_navigationController_get) }
        public static var currentViewController: Verify { return Verify(method: .p_currentViewController_get) }
        public static var presentation: Verify { return Verify(method: .p_presentation_get) }
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func present(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_present, performs: perform)
        }
        public static func add(flowController: Parameter<FlowController>, perform: @escaping (FlowController) -> Void) -> Perform {
            return Perform(method: .m_add__flowController_flowController(`flowController`), performs: perform)
        }
        public static func removeFlowController(perform: @escaping () -> Void) -> Perform {
            return Perform(method: .m_removeFlowController, performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - MainFlowControllerElementsFactory

open class MainFlowControllerElementsFactoryMock: MainFlowControllerElementsFactory, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }





    open func createLoginFlowController(navigationController: NavigationController, onLoggedIn: @escaping () -> Void) -> FlowController {
        addInvocation(.m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn(Parameter<NavigationController>.value(`navigationController`), Parameter<() -> Void>.value(`onLoggedIn`)))
		let perform = methodPerformValue(.m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn(Parameter<NavigationController>.value(`navigationController`), Parameter<() -> Void>.value(`onLoggedIn`))) as? (NavigationController, @escaping () -> Void) -> Void
		perform?(`navigationController`, `onLoggedIn`)
		var __value: FlowController
		do {
		    __value = try methodReturnValue(.m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn(Parameter<NavigationController>.value(`navigationController`), Parameter<() -> Void>.value(`onLoggedIn`))).casted()
		} catch {
			onFatalFailure("Stub return value not specified for createLoginFlowController(navigationController: NavigationController, onLoggedIn: @escaping () -> Void). Use given")
			Failure("Stub return value not specified for createLoginFlowController(navigationController: NavigationController, onLoggedIn: @escaping () -> Void). Use given")
		}
		return __value
    }

    open func createMainFlowController(navigationController: NavigationController, onLogout: @escaping () -> Void) -> FlowController {
        addInvocation(.m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout(Parameter<NavigationController>.value(`navigationController`), Parameter<() -> Void>.value(`onLogout`)))
		let perform = methodPerformValue(.m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout(Parameter<NavigationController>.value(`navigationController`), Parameter<() -> Void>.value(`onLogout`))) as? (NavigationController, @escaping () -> Void) -> Void
		perform?(`navigationController`, `onLogout`)
		var __value: FlowController
		do {
		    __value = try methodReturnValue(.m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout(Parameter<NavigationController>.value(`navigationController`), Parameter<() -> Void>.value(`onLogout`))).casted()
		} catch {
			onFatalFailure("Stub return value not specified for createMainFlowController(navigationController: NavigationController, onLogout: @escaping () -> Void). Use given")
			Failure("Stub return value not specified for createMainFlowController(navigationController: NavigationController, onLogout: @escaping () -> Void). Use given")
		}
		return __value
    }


    fileprivate enum MethodType {
        case m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn(Parameter<NavigationController>, Parameter<() -> Void>)
        case m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout(Parameter<NavigationController>, Parameter<() -> Void>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn(let lhsNavigationcontroller, let lhsOnloggedin), .m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn(let rhsNavigationcontroller, let rhsOnloggedin)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsNavigationcontroller, rhs: rhsNavigationcontroller, with: matcher), lhsNavigationcontroller, rhsNavigationcontroller, "navigationController"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsOnloggedin, rhs: rhsOnloggedin, with: matcher), lhsOnloggedin, rhsOnloggedin, "onLoggedIn"))
				return Matcher.ComparisonResult(results)

            case (.m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout(let lhsNavigationcontroller, let lhsOnlogout), .m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout(let rhsNavigationcontroller, let rhsOnlogout)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsNavigationcontroller, rhs: rhsNavigationcontroller, with: matcher), lhsNavigationcontroller, rhsNavigationcontroller, "navigationController"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsOnlogout, rhs: rhsOnlogout, with: matcher), lhsOnlogout, rhsOnlogout, "onLogout"))
				return Matcher.ComparisonResult(results)
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn(p0, p1): return p0.intValue + p1.intValue
            case let .m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout(p0, p1): return p0.intValue + p1.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn: return ".createLoginFlowController(navigationController:onLoggedIn:)"
            case .m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout: return ".createMainFlowController(navigationController:onLogout:)"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }


        public static func createLoginFlowController(navigationController: Parameter<NavigationController>, onLoggedIn: Parameter<() -> Void>, willReturn: FlowController...) -> MethodStub {
            return Given(method: .m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn(`navigationController`, `onLoggedIn`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func createMainFlowController(navigationController: Parameter<NavigationController>, onLogout: Parameter<() -> Void>, willReturn: FlowController...) -> MethodStub {
            return Given(method: .m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout(`navigationController`, `onLogout`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        public static func createLoginFlowController(navigationController: Parameter<NavigationController>, onLoggedIn: Parameter<() -> Void>, willProduce: (Stubber<FlowController>) -> Void) -> MethodStub {
            let willReturn: [FlowController] = []
			let given: Given = { return Given(method: .m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn(`navigationController`, `onLoggedIn`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (FlowController).self)
			willProduce(stubber)
			return given
        }
        public static func createMainFlowController(navigationController: Parameter<NavigationController>, onLogout: Parameter<() -> Void>, willProduce: (Stubber<FlowController>) -> Void) -> MethodStub {
            let willReturn: [FlowController] = []
			let given: Given = { return Given(method: .m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout(`navigationController`, `onLogout`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: (FlowController).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func createLoginFlowController(navigationController: Parameter<NavigationController>, onLoggedIn: Parameter<() -> Void>) -> Verify { return Verify(method: .m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn(`navigationController`, `onLoggedIn`))}
        public static func createMainFlowController(navigationController: Parameter<NavigationController>, onLogout: Parameter<() -> Void>) -> Verify { return Verify(method: .m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout(`navigationController`, `onLogout`))}
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func createLoginFlowController(navigationController: Parameter<NavigationController>, onLoggedIn: Parameter<() -> Void>, perform: @escaping (NavigationController, @escaping () -> Void) -> Void) -> Perform {
            return Perform(method: .m_createLoginFlowController__navigationController_navigationControlleronLoggedIn_onLoggedIn(`navigationController`, `onLoggedIn`), performs: perform)
        }
        public static func createMainFlowController(navigationController: Parameter<NavigationController>, onLogout: Parameter<() -> Void>, perform: @escaping (NavigationController, @escaping () -> Void) -> Void) -> Perform {
            return Perform(method: .m_createMainFlowController__navigationController_navigationControlleronLogout_onLogout(`navigationController`, `onLogout`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - NavigationController

open class NavigationControllerMock: NavigationController, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }

    public var viewControllers: [UIViewController] {
		get {	invocations.append(.p_viewControllers_get); return __p_viewControllers ?? givenGetterValue(.p_viewControllers_get, "NavigationControllerMock - stub value for viewControllers was not defined") }
		set {	invocations.append(.p_viewControllers_set(.value(newValue))); __p_viewControllers = newValue }
	}
	private var __p_viewControllers: ([UIViewController])?

    public var modalPresentationStyle: UIModalPresentationStyle {
		get {	invocations.append(.p_modalPresentationStyle_get); return __p_modalPresentationStyle ?? givenGetterValue(.p_modalPresentationStyle_get, "NavigationControllerMock - stub value for modalPresentationStyle was not defined") }
		set {	invocations.append(.p_modalPresentationStyle_set(.value(newValue))); __p_modalPresentationStyle = newValue }
	}
	private var __p_modalPresentationStyle: (UIModalPresentationStyle)?





    open func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?) {
        addInvocation(.m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>.value(`viewControllerToPresent`), Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.value(`completion`)))
		let perform = methodPerformValue(.m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>.value(`viewControllerToPresent`), Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.value(`completion`))) as? (UIViewController, Bool, (() -> Void)?) -> Void
		perform?(`viewControllerToPresent`, `flag`, `completion`)
    }

    open func pushViewController(_ viewController: UIViewController, animated: Bool) {
        addInvocation(.m_pushViewController__viewControlleranimated_animated(Parameter<UIViewController>.value(`viewController`), Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_pushViewController__viewControlleranimated_animated(Parameter<UIViewController>.value(`viewController`), Parameter<Bool>.value(`animated`))) as? (UIViewController, Bool) -> Void
		perform?(`viewController`, `animated`)
    }

    open func present(navigationController: NavigationController, animated flag: Bool, completion: (() -> Void)?) {
        addInvocation(.m_present__navigationController_navigationControlleranimated_flagcompletion_completion(Parameter<NavigationController>.value(`navigationController`), Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.value(`completion`)))
		let perform = methodPerformValue(.m_present__navigationController_navigationControlleranimated_flagcompletion_completion(Parameter<NavigationController>.value(`navigationController`), Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.value(`completion`))) as? (NavigationController, Bool, (() -> Void)?) -> Void
		perform?(`navigationController`, `flag`, `completion`)
    }

    open func push(navigationController: NavigationController, animated: Bool) {
        addInvocation(.m_push__navigationController_navigationControlleranimated_animated(Parameter<NavigationController>.value(`navigationController`), Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_push__navigationController_navigationControlleranimated_animated(Parameter<NavigationController>.value(`navigationController`), Parameter<Bool>.value(`animated`))) as? (NavigationController, Bool) -> Void
		perform?(`navigationController`, `animated`)
    }

    open func setViewControllers(_ viewControllers: [UIViewController], animated: Bool) {
        addInvocation(.m_setViewControllers__viewControllersanimated_animated(Parameter<[UIViewController]>.value(`viewControllers`), Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_setViewControllers__viewControllersanimated_animated(Parameter<[UIViewController]>.value(`viewControllers`), Parameter<Bool>.value(`animated`))) as? ([UIViewController], Bool) -> Void
		perform?(`viewControllers`, `animated`)
    }

    open func dismiss(animated flag: Bool, completion: (() -> Void)?) {
        addInvocation(.m_dismiss__animated_flagcompletion_completion(Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.value(`completion`)))
		let perform = methodPerformValue(.m_dismiss__animated_flagcompletion_completion(Parameter<Bool>.value(`flag`), Parameter<(() -> Void)?>.value(`completion`))) as? (Bool, (() -> Void)?) -> Void
		perform?(`flag`, `completion`)
    }

    @discardableResult
	open func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]? {
        addInvocation(.m_popToViewController__viewControlleranimated_animated(Parameter<UIViewController>.value(`viewController`), Parameter<Bool>.value(`animated`)))
		let perform = methodPerformValue(.m_popToViewController__viewControlleranimated_animated(Parameter<UIViewController>.value(`viewController`), Parameter<Bool>.value(`animated`))) as? (UIViewController, Bool) -> Void
		perform?(`viewController`, `animated`)
		var __value: [UIViewController]? = nil
		do {
		    __value = try methodReturnValue(.m_popToViewController__viewControlleranimated_animated(Parameter<UIViewController>.value(`viewController`), Parameter<Bool>.value(`animated`))).casted()
		} catch {
			// do nothing
		}
		return __value
    }


    fileprivate enum MethodType {
        case m_present__viewControllerToPresentanimated_flagcompletion_completion(Parameter<UIViewController>, Parameter<Bool>, Parameter<(() -> Void)?>)
        case m_pushViewController__viewControlleranimated_animated(Parameter<UIViewController>, Parameter<Bool>)
        case m_present__navigationController_navigationControlleranimated_flagcompletion_completion(Parameter<NavigationController>, Parameter<Bool>, Parameter<(() -> Void)?>)
        case m_push__navigationController_navigationControlleranimated_animated(Parameter<NavigationController>, Parameter<Bool>)
        case m_setViewControllers__viewControllersanimated_animated(Parameter<[UIViewController]>, Parameter<Bool>)
        case m_dismiss__animated_flagcompletion_completion(Parameter<Bool>, Parameter<(() -> Void)?>)
        case m_popToViewController__viewControlleranimated_animated(Parameter<UIViewController>, Parameter<Bool>)
        case p_viewControllers_get
		case p_viewControllers_set(Parameter<[UIViewController]>)
        case p_modalPresentationStyle_get
		case p_modalPresentationStyle_set(Parameter<UIModalPresentationStyle>)

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {
            case (.m_present__viewControllerToPresentanimated_flagcompletion_completion(let lhsViewcontrollertopresent, let lhsFlag, let lhsCompletion), .m_present__viewControllerToPresentanimated_flagcompletion_completion(let rhsViewcontrollertopresent, let rhsFlag, let rhsCompletion)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontrollertopresent, rhs: rhsViewcontrollertopresent, with: matcher), lhsViewcontrollertopresent, rhsViewcontrollertopresent, "_ viewControllerToPresent"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsFlag, rhs: rhsFlag, with: matcher), lhsFlag, rhsFlag, "animated flag"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher), lhsCompletion, rhsCompletion, "completion"))
				return Matcher.ComparisonResult(results)

            case (.m_pushViewController__viewControlleranimated_animated(let lhsViewcontroller, let lhsAnimated), .m_pushViewController__viewControlleranimated_animated(let rhsViewcontroller, let rhsAnimated)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontroller, rhs: rhsViewcontroller, with: matcher), lhsViewcontroller, rhsViewcontroller, "_ viewController"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				return Matcher.ComparisonResult(results)

            case (.m_present__navigationController_navigationControlleranimated_flagcompletion_completion(let lhsNavigationcontroller, let lhsFlag, let lhsCompletion), .m_present__navigationController_navigationControlleranimated_flagcompletion_completion(let rhsNavigationcontroller, let rhsFlag, let rhsCompletion)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsNavigationcontroller, rhs: rhsNavigationcontroller, with: matcher), lhsNavigationcontroller, rhsNavigationcontroller, "navigationController"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsFlag, rhs: rhsFlag, with: matcher), lhsFlag, rhsFlag, "animated flag"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher), lhsCompletion, rhsCompletion, "completion"))
				return Matcher.ComparisonResult(results)

            case (.m_push__navigationController_navigationControlleranimated_animated(let lhsNavigationcontroller, let lhsAnimated), .m_push__navigationController_navigationControlleranimated_animated(let rhsNavigationcontroller, let rhsAnimated)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsNavigationcontroller, rhs: rhsNavigationcontroller, with: matcher), lhsNavigationcontroller, rhsNavigationcontroller, "navigationController"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				return Matcher.ComparisonResult(results)

            case (.m_setViewControllers__viewControllersanimated_animated(let lhsViewcontrollers, let lhsAnimated), .m_setViewControllers__viewControllersanimated_animated(let rhsViewcontrollers, let rhsAnimated)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontrollers, rhs: rhsViewcontrollers, with: matcher), lhsViewcontrollers, rhsViewcontrollers, "_ viewControllers"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				return Matcher.ComparisonResult(results)

            case (.m_dismiss__animated_flagcompletion_completion(let lhsFlag, let lhsCompletion), .m_dismiss__animated_flagcompletion_completion(let rhsFlag, let rhsCompletion)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsFlag, rhs: rhsFlag, with: matcher), lhsFlag, rhsFlag, "animated flag"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsCompletion, rhs: rhsCompletion, with: matcher), lhsCompletion, rhsCompletion, "completion"))
				return Matcher.ComparisonResult(results)

            case (.m_popToViewController__viewControlleranimated_animated(let lhsViewcontroller, let lhsAnimated), .m_popToViewController__viewControlleranimated_animated(let rhsViewcontroller, let rhsAnimated)):
				var results: [Matcher.ParameterComparisonResult] = []
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsViewcontroller, rhs: rhsViewcontroller, with: matcher), lhsViewcontroller, rhsViewcontroller, "_ viewController"))
				results.append(Matcher.ParameterComparisonResult(Parameter.compare(lhs: lhsAnimated, rhs: rhsAnimated, with: matcher), lhsAnimated, rhsAnimated, "animated"))
				return Matcher.ComparisonResult(results)
            case (.p_viewControllers_get,.p_viewControllers_get): return Matcher.ComparisonResult.match
			case (.p_viewControllers_set(let left),.p_viewControllers_set(let right)): return Matcher.ComparisonResult([Matcher.ParameterComparisonResult(Parameter<[UIViewController]>.compare(lhs: left, rhs: right, with: matcher), left, right, "newValue")])
            case (.p_modalPresentationStyle_get,.p_modalPresentationStyle_get): return Matcher.ComparisonResult.match
			case (.p_modalPresentationStyle_set(let left),.p_modalPresentationStyle_set(let right)): return Matcher.ComparisonResult([Matcher.ParameterComparisonResult(Parameter<UIModalPresentationStyle>.compare(lhs: left, rhs: right, with: matcher), left, right, "newValue")])
            default: return .none
            }
        }

        func intValue() -> Int {
            switch self {
            case let .m_present__viewControllerToPresentanimated_flagcompletion_completion(p0, p1, p2): return p0.intValue + p1.intValue + p2.intValue
            case let .m_pushViewController__viewControlleranimated_animated(p0, p1): return p0.intValue + p1.intValue
            case let .m_present__navigationController_navigationControlleranimated_flagcompletion_completion(p0, p1, p2): return p0.intValue + p1.intValue + p2.intValue
            case let .m_push__navigationController_navigationControlleranimated_animated(p0, p1): return p0.intValue + p1.intValue
            case let .m_setViewControllers__viewControllersanimated_animated(p0, p1): return p0.intValue + p1.intValue
            case let .m_dismiss__animated_flagcompletion_completion(p0, p1): return p0.intValue + p1.intValue
            case let .m_popToViewController__viewControlleranimated_animated(p0, p1): return p0.intValue + p1.intValue
            case .p_viewControllers_get: return 0
			case .p_viewControllers_set(let newValue): return newValue.intValue
            case .p_modalPresentationStyle_get: return 0
			case .p_modalPresentationStyle_set(let newValue): return newValue.intValue
            }
        }
        func assertionName() -> String {
            switch self {
            case .m_present__viewControllerToPresentanimated_flagcompletion_completion: return ".present(_:animated:completion:)"
            case .m_pushViewController__viewControlleranimated_animated: return ".pushViewController(_:animated:)"
            case .m_present__navigationController_navigationControlleranimated_flagcompletion_completion: return ".present(navigationController:animated:completion:)"
            case .m_push__navigationController_navigationControlleranimated_animated: return ".push(navigationController:animated:)"
            case .m_setViewControllers__viewControllersanimated_animated: return ".setViewControllers(_:animated:)"
            case .m_dismiss__animated_flagcompletion_completion: return ".dismiss(animated:completion:)"
            case .m_popToViewController__viewControlleranimated_animated: return ".popToViewController(_:animated:)"
            case .p_viewControllers_get: return "[get] .viewControllers"
			case .p_viewControllers_set: return "[set] .viewControllers"
            case .p_modalPresentationStyle_get: return "[get] .modalPresentationStyle"
			case .p_modalPresentationStyle_set: return "[set] .modalPresentationStyle"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func viewControllers(getter defaultValue: [UIViewController]...) -> PropertyStub {
            return Given(method: .p_viewControllers_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }
        public static func modalPresentationStyle(getter defaultValue: UIModalPresentationStyle...) -> PropertyStub {
            return Given(method: .p_modalPresentationStyle_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

        @discardableResult
		public static func popToViewController(_ viewController: Parameter<UIViewController>, animated: Parameter<Bool>, willReturn: [UIViewController]?...) -> MethodStub {
            return Given(method: .m_popToViewController__viewControlleranimated_animated(`viewController`, `animated`), products: willReturn.map({ StubProduct.return($0 as Any) }))
        }
        @discardableResult
		public static func popToViewController(_ viewController: Parameter<UIViewController>, animated: Parameter<Bool>, willProduce: (Stubber<[UIViewController]?>) -> Void) -> MethodStub {
            let willReturn: [[UIViewController]?] = []
			let given: Given = { return Given(method: .m_popToViewController__viewControlleranimated_animated(`viewController`, `animated`), products: willReturn.map({ StubProduct.return($0 as Any) })) }()
			let stubber = given.stub(for: ([UIViewController]?).self)
			willProduce(stubber)
			return given
        }
    }

    public struct Verify {
        fileprivate var method: MethodType

        public static func present(_ viewControllerToPresent: Parameter<UIViewController>, animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>) -> Verify { return Verify(method: .m_present__viewControllerToPresentanimated_flagcompletion_completion(`viewControllerToPresent`, `flag`, `completion`))}
        public static func pushViewController(_ viewController: Parameter<UIViewController>, animated: Parameter<Bool>) -> Verify { return Verify(method: .m_pushViewController__viewControlleranimated_animated(`viewController`, `animated`))}
        public static func present(navigationController: Parameter<NavigationController>, animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>) -> Verify { return Verify(method: .m_present__navigationController_navigationControlleranimated_flagcompletion_completion(`navigationController`, `flag`, `completion`))}
        public static func push(navigationController: Parameter<NavigationController>, animated: Parameter<Bool>) -> Verify { return Verify(method: .m_push__navigationController_navigationControlleranimated_animated(`navigationController`, `animated`))}
        public static func setViewControllers(_ viewControllers: Parameter<[UIViewController]>, animated: Parameter<Bool>) -> Verify { return Verify(method: .m_setViewControllers__viewControllersanimated_animated(`viewControllers`, `animated`))}
        public static func dismiss(animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>) -> Verify { return Verify(method: .m_dismiss__animated_flagcompletion_completion(`flag`, `completion`))}
        @discardableResult
		public static func popToViewController(_ viewController: Parameter<UIViewController>, animated: Parameter<Bool>) -> Verify { return Verify(method: .m_popToViewController__viewControlleranimated_animated(`viewController`, `animated`))}
        public static var viewControllers: Verify { return Verify(method: .p_viewControllers_get) }
		public static func viewControllers(set newValue: Parameter<[UIViewController]>) -> Verify { return Verify(method: .p_viewControllers_set(newValue)) }
        public static var modalPresentationStyle: Verify { return Verify(method: .p_modalPresentationStyle_get) }
		public static func modalPresentationStyle(set newValue: Parameter<UIModalPresentationStyle>) -> Verify { return Verify(method: .p_modalPresentationStyle_set(newValue)) }
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

        public static func present(_ viewControllerToPresent: Parameter<UIViewController>, animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>, perform: @escaping (UIViewController, Bool, (() -> Void)?) -> Void) -> Perform {
            return Perform(method: .m_present__viewControllerToPresentanimated_flagcompletion_completion(`viewControllerToPresent`, `flag`, `completion`), performs: perform)
        }
        public static func pushViewController(_ viewController: Parameter<UIViewController>, animated: Parameter<Bool>, perform: @escaping (UIViewController, Bool) -> Void) -> Perform {
            return Perform(method: .m_pushViewController__viewControlleranimated_animated(`viewController`, `animated`), performs: perform)
        }
        public static func present(navigationController: Parameter<NavigationController>, animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>, perform: @escaping (NavigationController, Bool, (() -> Void)?) -> Void) -> Perform {
            return Perform(method: .m_present__navigationController_navigationControlleranimated_flagcompletion_completion(`navigationController`, `flag`, `completion`), performs: perform)
        }
        public static func push(navigationController: Parameter<NavigationController>, animated: Parameter<Bool>, perform: @escaping (NavigationController, Bool) -> Void) -> Perform {
            return Perform(method: .m_push__navigationController_navigationControlleranimated_animated(`navigationController`, `animated`), performs: perform)
        }
        public static func setViewControllers(_ viewControllers: Parameter<[UIViewController]>, animated: Parameter<Bool>, perform: @escaping ([UIViewController], Bool) -> Void) -> Perform {
            return Perform(method: .m_setViewControllers__viewControllersanimated_animated(`viewControllers`, `animated`), performs: perform)
        }
        public static func dismiss(animated flag: Parameter<Bool>, completion: Parameter<(() -> Void)?>, perform: @escaping (Bool, (() -> Void)?) -> Void) -> Perform {
            return Perform(method: .m_dismiss__animated_flagcompletion_completion(`flag`, `completion`), performs: perform)
        }
        @discardableResult
		public static func popToViewController(_ viewController: Parameter<UIViewController>, animated: Parameter<Bool>, perform: @escaping (UIViewController, Bool) -> Void) -> Perform {
            return Perform(method: .m_popToViewController__viewControlleranimated_animated(`viewController`, `animated`), performs: perform)
        }
    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

// MARK: - UserService

open class UserServiceMock: UserService, Mock {
    public init(sequencing sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst, stubbing stubbingPolicy: StubbingPolicy = .wrap, file: StaticString = #file, line: UInt = #line) {
        SwiftyMockyTestObserver.setup()
        self.sequencingPolicy = sequencingPolicy
        self.stubbingPolicy = stubbingPolicy
        self.file = file
        self.line = line
    }

    var matcher: Matcher = Matcher.default
    var stubbingPolicy: StubbingPolicy = .wrap
    var sequencingPolicy: SequencingPolicy = .lastWrittenResolvedFirst

    private var queue = DispatchQueue(label: "com.swiftymocky.invocations", qos: .userInteractive)
    private var invocations: [MethodType] = []
    private var methodReturnValues: [Given] = []
    private var methodPerformValues: [Perform] = []
    private var file: StaticString?
    private var line: UInt?

    public typealias PropertyStub = Given
    public typealias MethodStub = Given
    public typealias SubscriptStub = Given

    /// Convenience method - call setupMock() to extend debug information when failure occurs
    public func setupMock(file: StaticString = #file, line: UInt = #line) {
        self.file = file
        self.line = line
    }

    /// Clear mock internals. You can specify what to reset (invocations aka verify, givens or performs) or leave it empty to clear all mock internals
    public func resetMock(_ scopes: MockScope...) {
        let scopes: [MockScope] = scopes.isEmpty ? [.invocation, .given, .perform] : scopes
        if scopes.contains(.invocation) { invocations = [] }
        if scopes.contains(.given) { methodReturnValues = [] }
        if scopes.contains(.perform) { methodPerformValues = [] }
    }

    public var isLoggedIn: Bool {
		get {	invocations.append(.p_isLoggedIn_get); return __p_isLoggedIn ?? givenGetterValue(.p_isLoggedIn_get, "UserServiceMock - stub value for isLoggedIn was not defined") }
	}
	private var __p_isLoggedIn: (Bool)?






    fileprivate enum MethodType {
        case p_isLoggedIn_get

        static func compareParameters(lhs: MethodType, rhs: MethodType, matcher: Matcher) -> Matcher.ComparisonResult {
            switch (lhs, rhs) {            case (.p_isLoggedIn_get,.p_isLoggedIn_get): return Matcher.ComparisonResult.match
            }
        }

        func intValue() -> Int {
            switch self {
            case .p_isLoggedIn_get: return 0
            }
        }
        func assertionName() -> String {
            switch self {
            case .p_isLoggedIn_get: return "[get] .isLoggedIn"
            }
        }
    }

    open class Given: StubbedMethod {
        fileprivate var method: MethodType

        private init(method: MethodType, products: [StubProduct]) {
            self.method = method
            super.init(products)
        }

        public static func isLoggedIn(getter defaultValue: Bool...) -> PropertyStub {
            return Given(method: .p_isLoggedIn_get, products: defaultValue.map({ StubProduct.return($0 as Any) }))
        }

    }

    public struct Verify {
        fileprivate var method: MethodType

        public static var isLoggedIn: Verify { return Verify(method: .p_isLoggedIn_get) }
    }

    public struct Perform {
        fileprivate var method: MethodType
        var performs: Any

    }

    public func given(_ method: Given) {
        methodReturnValues.append(method)
    }

    public func perform(_ method: Perform) {
        methodPerformValues.append(method)
        methodPerformValues.sort { $0.method.intValue() < $1.method.intValue() }
    }

    public func verify(_ method: Verify, count: Count = Count.moreOrEqual(to: 1), file: StaticString = #file, line: UInt = #line) {
        let fullMatches = matchingCalls(method, file: file, line: line)
        let success = count.matches(fullMatches)
        let assertionName = method.method.assertionName()
        let feedback: String = {
            guard !success else { return "" }
            return Utils.closestCallsMessage(
                for: self.invocations.map { invocation in
                    matcher.set(file: file, line: line)
                    defer { matcher.clearFileAndLine() }
                    return MethodType.compareParameters(lhs: invocation, rhs: method.method, matcher: matcher)
                },
                name: assertionName
            )
        }()
        MockyAssert(success, "Expected: \(count) invocations of `\(assertionName)`, but was: \(fullMatches).\(feedback)", file: file, line: line)
    }

    private func addInvocation(_ call: MethodType) {
        self.queue.sync { invocations.append(call) }
    }
    private func methodReturnValue(_ method: MethodType) throws -> StubProduct {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let candidates = sequencingPolicy.sorted(methodReturnValues, by: { $0.method.intValue() > $1.method.intValue() })
        let matched = candidates.first(where: { $0.isValid && MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch })
        guard let product = matched?.getProduct(policy: self.stubbingPolicy) else { throw MockError.notStubed }
        return product
    }
    private func methodPerformValue(_ method: MethodType) -> Any? {
        matcher.set(file: self.file, line: self.line)
        defer { matcher.clearFileAndLine() }
        let matched = methodPerformValues.reversed().first { MethodType.compareParameters(lhs: $0.method, rhs: method, matcher: matcher).isFullMatch }
        return matched?.performs
    }
    private func matchingCalls(_ method: MethodType, file: StaticString?, line: UInt?) -> [MethodType] {
        matcher.set(file: file ?? self.file, line: line ?? self.line)
        defer { matcher.clearFileAndLine() }
        return invocations.filter { MethodType.compareParameters(lhs: $0, rhs: method, matcher: matcher).isFullMatch }
    }
    private func matchingCalls(_ method: Verify, file: StaticString?, line: UInt?) -> Int {
        return matchingCalls(method.method, file: file, line: line).count
    }
    private func givenGetterValue<T>(_ method: MethodType, _ message: String) -> T {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            onFatalFailure(message)
            Failure(message)
        }
    }
    private func optionalGivenGetterValue<T>(_ method: MethodType, _ message: String) -> T? {
        do {
            return try methodReturnValue(method).casted()
        } catch {
            return nil
        }
    }
    private func onFatalFailure(_ message: String) {
        guard let file = self.file, let line = self.line else { return } // Let if fail if cannot handle gratefully
        SwiftyMockyTestObserver.handleFatalError(message: message, file: file, line: line)
    }
}

