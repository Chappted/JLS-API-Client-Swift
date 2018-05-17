//
//  Created by Murat Yilmaz on 17.05.18.
//  Copyright © 2018 Chappted. All rights reserved.
//

import Foundation

public struct ArrayObject: Codable {
    public private(set) var typeName: String
    public private(set) var count: Int

    public init(typeName: String, count: Int) {
        self.typeName = typeName
        self.count = count
    }
}
