//
//  Created by Murat Yilmaz on 17.05.18.
//  Copyright © 2018 Chappted. All rights reserved.
//

import Foundation

public struct BaseObject: BaseObjectProtocol {
    public private(set) var typeName: String
    public private(set) var identifier: String

    public init(typeName: String, identifier: String) {
        self.typeName = typeName
        self.identifier = identifier
    }
}
