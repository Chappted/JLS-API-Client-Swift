//
//  Created by Murat Yilmaz on 17.05.18.
//  Copyright © 2018 Chappted. All rights reserved.
//

import Foundation

public enum ManyRelation: Codable {
    case base(ArrayObject)
    case objects([BaseObject])
}

extension ManyRelation {
    public init(from decoder: Decoder) throws {
        do {
            self = .objects(try [BaseObject](from: decoder))
        } catch {
            self = .base(try ArrayObject(from: decoder))
        }
    }

    public func encode(to encoder: Encoder) throws {
        switch self {
        case let .base(base):
            try base.encode(to: encoder)

        case let .objects(objects):
            try objects.encode(to: encoder)
        }
    }
}
