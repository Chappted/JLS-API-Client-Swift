//
//  Created by Murat Yilmaz on 17.05.18.
//  Copyright © 2018 Chappted. All rights reserved.
//

import Foundation

public protocol BaseObjectProtocol: Codable {
    var typeName: String { get }
    var identifier: String { get }
}
