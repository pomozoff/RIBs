//___FILEHEADER___

import RIBs

// MARK: - Dependency

protocol ___VARIABLE_productName___Dependency: Dependency {
    // TODO: Make sure to convert the variable into lower-camelcase.
    var ownerViewControllable: ___VARIABLE_productName___ViewControllable { get }
    // TODO: Declare the set of dependencies required by this RIB, but won't be
    // created by this RIB.
}

final class ___VARIABLE_productName___Component: Component<___VARIABLE_productName___Dependency> {
    fileprivate var ownerViewControllable: ___VARIABLE_productName___ViewControllable {
        return dependency.ownerViewControllable
    }

    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
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

        let interactor = ___VARIABLE_productName___Interactor()
        interactor.listener = listener

        return ___VARIABLE_productName___Router(
            interactor: interactor,
            viewControllable: component.ownerViewControllable
        )
    }
}

// MARK: - Private

private extension ___VARIABLE_productName___Builder {}
