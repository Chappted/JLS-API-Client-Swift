// swiftlint:disable file_header
import Foundation
import JLSAPIClient

// API Model Declaration

struct Challenge: BaseObjectProtocol {
    var typeName: String
    var identifier: String
    var name: String
}

struct Company: BaseObjectProtocol {
    var typeName: String
    var identifier: String
    var name: String
}

struct CompanyDepartment: BaseObjectProtocol {
    var typeName: String
    var identifier: String
    var name: String
    var company: Relation<Company>
    var members: ManyRelation
}

struct User: BaseObjectProtocol {
    var typeName: String
    var identifier: String
    var firstName: String
    var lastName: String
    var createdChallenges: ManyRelation
    var department: Relation<CompanyDepartment>
}

// API Model Instantiation

var user = User(
    typeName: "User",
    identifier: "783",
    firstName: "John",
    lastName: "Appleseed",
    createdChallenges: .base(ArrayObject(typeName: "Challenge", count: 4)),
    department: .base(BaseObject(typeName: "Department", identifier: "3"))
)

var userWithIncludes = User(
    typeName: "User",
    identifier: "783",
    firstName: "John",
    lastName: "Appleseed",
    createdChallenges: .objects([
        BaseObject(typeName: "Challenge", identifier: "72"),
        BaseObject(typeName: "Challenge", identifier: "73"),
        BaseObject(typeName: "Challenge", identifier: "74")
    ]),
    department: .object(
        CompanyDepartment(
            typeName: "CompanyDepartment",
            identifier: "3",
            name: "iOS Development",
            company: .base(BaseObject(typeName: "Company", identifier: "75")),
            members: .base(ArrayObject(typeName: "User", count: 3))
        )
    )
)

// Relation Access Expressions

if case let .base(challenges) = user.createdChallenges {
    print(challenges)
}

if case let .base(department) = user.department {
    print(department)
}

if case let .objects(challenges) = userWithIncludes.createdChallenges {
    challenges.forEach { challenge in
        print(challenge)
    }
}

if case let .object(department) = userWithIncludes.department {
    print(department)
}
