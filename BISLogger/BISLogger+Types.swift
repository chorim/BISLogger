//
//  BISLogger+Types.swift
//  BISLogger
//
//  Created by Insu Byeon on 2020/09/04.
//  Copyright © 2020 Insu Byeon. All rights reserved.
//

import Foundation

public enum LogType: String {
    case critical = "🔥 [CRITICAL]"
    case error = "🚨 [ERROR]"
    case warning = "⚠️ [WARNING]"
    case normal = "✅ [NORMAL]"
    case info = "ℹ️ [INFO]"
}

public enum FormatType {
    /// [LogType] -> Any
    case short
    /// Time: [LogType] -> file:line funcName -> Any
    case medium
    /// Time: [LogType] -> file:line funcName [Thread Name] -> Any
    case full
}

public enum PrintType {
    case print
    case dump
}
