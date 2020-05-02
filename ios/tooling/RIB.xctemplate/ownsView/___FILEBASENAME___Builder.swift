//___FILEHEADER___

import RIBs
import UIKit

// MARK: - Dependency

protocol ___VARIABLE_productName___Dependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class ___VARIABLE_productName___Component: Component<___VARIABLE_productName___Dependency> {
    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
    fileprivate lazy var name = "___VARIABLE_productName___ViewController"
    fileprivate lazy var viewController = UIStoryboard(
        name: name,
        bundle: bundle
    ).instantiateInitialViewController() as! ___VARIABLE_productName___ViewController

    private lazy var bundle = Bundle(for: Self.self)
}

// MARK: - Builder

protocol ___VARIABLE_productName___Buildable: Buildable {
    func build(with listener: ___VARIABLE_productName___Listener) -> ___VARIABLE_productName___Routing
}

final class ___VARIABLE_productName___Builder: Builder<___VARIABLE_productName___Dependency> {}

// MARK: - ___VARIABLE_productName___Buildable

extension ___VARIABLE_productName___Builder: ___VARIABLE_productName___Buildable {
    func build(with listener: ___VARIABLE_productName___Listener) -> ___VARIABLE_productName___Routing {
        let component = ___VARIABLE_productName___Component(dependency: dependency)

        let interactor = ___VARIABLE_productName___Interactor(presenter: component.viewController)
        interactor.listener = listener

        return ___VARIABLE_productName___Router(
            interactor: interactor,
            viewController: component.viewController
        )
    }
}

// MARK: - Private

private extension ___VARIABLE_productName___Builder {}
