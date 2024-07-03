//
//  MyDefefaults.swift
//  DataAccessDynamic
//
//  Created by Hai Sombo on 7/2/24.
//

import Foundation

struct MyNotify {
    
    static func send(name: NotifyKey) {
        NotificationCenter.default.post(name: Notification.Name(name.rawValue), object: nil)
    }
    
    static func send(name: NotifyKey, object: AnyObject) {
        print(object, "obj")
        NotificationCenter.default.post(name: Notification.Name(name.rawValue), object: object)
    }
    
    static func listen(_ me: Any, selector: Selector, name: NotifyKey) {
        NotificationCenter.default.addObserver(me, selector: selector, name: Notification.Name(name.rawValue), object: nil)
    }
    
    static func listen(name: NotifyKey, completion: @escaping Completion) {
        NotificationCenter.default.addObserver(forName: Notification.Name(name.rawValue), object: nil, queue: nil) { _ in
            completion()
        }
    }
    
    static func listen(name: NotifyKey, completion: @escaping (AnyObject) -> Void) {
        NotificationCenter.default.addObserver(forName: Notification.Name(name.rawValue), object: nil, queue: nil) { sender in
            completion(sender.object as AnyObject)
        }
    }
    
    static func remove(_ me: Any, name: String) {
        NotificationCenter.default.removeObserver(me, name: NSNotification.Name(rawValue: name), object: nil)
    }
}

struct MyDefaults {
    
    static func set(key: UserDefaultKey, value: Any?) {
        UserDefaults.standard.set(value, forKey: key.rawValue)
    }
    
    static func get(key: UserDefaultKey) -> Any? {
        return UserDefaults.standard.object(forKey: key.rawValue)
    }
    
    static func bool(key: UserDefaultKey) -> Bool {
        return UserDefaults.standard.bool(forKey: key.rawValue)
    }
    
    static func int(key: UserDefaultKey) -> Int {
        return UserDefaults.standard.integer(forKey: key.rawValue)
    }
    
    static func float(key: UserDefaultKey) -> Float {
        return UserDefaults.standard.float(forKey: key.rawValue)
    }
    
    static func double(key: UserDefaultKey) -> Double {
        return UserDefaults.standard.double(forKey: key.rawValue)
    }
    
    static func string(key: UserDefaultKey) -> String {
        return UserDefaults.standard.string(forKey: key.rawValue) ?? ""
    }
    
    static func dic(key: UserDefaultKey) -> [String: Any] {
        return UserDefaults.standard.dictionary(forKey: key.rawValue) ?? [:]
    }
    
    static func data(key: UserDefaultKey) -> Data {
        return UserDefaults.standard.data(forKey: key.rawValue) ?? Data()
    }
    
    static func array(key: UserDefaultKey) -> [Any] {
        return UserDefaults.standard.array(forKey: key.rawValue) ?? []
    }
    
    static func url(key: UserDefaultKey) -> URL? {
        return UserDefaults.standard.url(forKey: key.rawValue)
    }
}
