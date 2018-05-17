//
//  Created by Murat Yilmaz on 17.05.18.
//  Copyright © 2018 Chappted. All rights reserved.
//

import Foundation

public enum Relation<ObjectType>: Codable where ObjectType: BaseObjectProtocol {
    case base(BaseObjectProtocol)
    case object(ObjectType)
}

extension Relation {
    private enum CodingKeys: String, CodingKey {
        case typeName
        case identifier
    }

    public init(from decoder: Decoder) throws {
        do {
            self = .object(try ObjectType(from: decoder))
        } catch {
            self = .base(try BaseObject(from: decoder))
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case let .base(base):
            try base.encode(to: encoder)

        case let .object(object):
            try object.encode(to: encoder)
        }
    }
}
