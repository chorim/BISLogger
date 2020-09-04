//
//  BISLogger.swift
//  BISLogger
//
//  Created by Insu Byeon on 2020/09/04.
//  Copyright © 2020 Insu Byeon. All rights reserved.
//

// https://github.com/ElonPark/EPLogger/blob/master/EPLogger/Classes/EPLogger.swift
// 위 링크에 있는 Logger를 입맛대로 짬

import Foundation

public struct BISLogger {
    
    public static var threadName: String {
        if let threadName = Thread.current.name, !threadName.isEmpty {
            return threadName
        } else if let queueName = DispatchQueue.currentQueueLabel, !queueName.isEmpty {
            return queueName
        } else {
            return String(format: "%p", Thread.current)
        }
    }
    public static var formatType: FormatType = .medium
    public static var printType: PrintType = .print
    public static var separator = " ▷ "
    
    private static let internalQueue = DispatchQueue(label: "party.insu.BISLogger")
    private static var time: String {
        let now = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS"
        let dateNow = dateFormatter.string(from: now)
        
        return dateNow
    }
    
    
    // fileprivate static var level: LogType = .normal
    
    private init() {}
    
    
}
