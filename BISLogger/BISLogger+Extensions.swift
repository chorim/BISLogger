//
//  BISLogger+Extensions.swift
//  BISLogger
//
//  Created by Insu Byeon on 2020/09/04.
//  Copyright © 2020 Insu Byeon. All rights reserved.
//

import Foundation

extension DispatchQueue {
    static var currentQueueLabel: String? {
        return String(validatingUTF8: __dispatch_queue_get_label(nil))
    }
}
