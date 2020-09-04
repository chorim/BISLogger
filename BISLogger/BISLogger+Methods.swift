//
//  BISLogger+Methods.swift
//  BISLogger
//
//  Created by Insu Byeon on 2020/09/04.
//  Copyright © 2020 Insu Byeon. All rights reserved.
//

import Foundation

extension BISLogger {
    
    public static func config(
        formatType: FormatType = .medium,
        separator: String = "▷"
    ) {
        self.formatType = formatType
        self.separator = " \(separator) "
    }
    
    private static func logString(
        fileName: String,
        line: UInt,
        funcName: String,
        level: LogType = .normal) -> String {
        switch formatType {
        case .short:
            return "\(level.rawValue)"
        case .medium:
            return "\(level.rawValue)\(self.separator)\(fileName):\(line) \(funcName)\(self.separator)"
        case .full:
            return "\(level.rawValue)\(self.separator)\(fileName):\(line) \(funcName)\(self.separator)[\(self.threadName)]\(self.separator)"
        }
    }
    
    private static func printLog(_ str: String) {
        switch printType {
        case .print:
            print(str)
        case .dump:
            dump(str)
        }
    }
    
    public static func critical(_ output: Any, _ fileName: String = #file, _ line: UInt = #line, _ funcName: String = #function) {
        let log = self.logString(fileName: fileName, line: line, funcName: funcName, level: .critical)
        printLog("\(log)\(output)")
    }
    
    public static func error(_ output: Any, _ fileName: String = #file, _ line: UInt = #line, _ funcName: String = #function) {
        let log = self.logString(fileName: fileName, line: line, funcName: funcName, level: .error)
        printLog("\(log)\(output)")
    }
    
    public static func warning(_ output: Any, _ fileName: String = #file, _ line: UInt = #line, _ funcName: String = #function) {
        let log = self.logString(fileName: fileName, line: line, funcName: funcName, level: .warning)
        printLog("\(log)\(output)")
    }
    
    public static func normal(_ output: Any, _ fileName: String = #file, _ line: UInt = #line, _ funcName: String = #function) {
        let log = self.logString(fileName: fileName, line: line, funcName: funcName, level: .normal)
        printLog("\(log)\(output)")
    }
    
    public static func info(_ output: Any, _ fileName: String = #file, _ line: UInt = #line, _ funcName: String = #function) {
        let log = self.logString(fileName: fileName, line: line, funcName: funcName, level: .info)
        printLog("\(log)\(output)")
    }
}
