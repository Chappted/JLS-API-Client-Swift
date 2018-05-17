//
//  Created by Murat Yilmaz on 17.05.18.
//  Copyright © 2018 Chappted. All rights reserved.
//

import Foundation

public protocol ErrorObjectProtocol: Codable {
    var message: String { get }
    var pointer: String { get }
}
