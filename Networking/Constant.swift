//
//  Constant.swift
//  DataAccessDynamic
//
//  Created by Hai Sombo on 7/2/24.
//

import Foundation

typealias Completion                = ()                -> Void
typealias Completion_Int            = (Int)             -> Void
typealias Completion_Bool           = (Bool)            -> Void
typealias Completion_NSError        = (NSError?)        -> Void
typealias Completion_String         = (String)          -> Void
typealias Completion_String_Error   = (String, Error?)  -> Void

public enum ContentType {
    case Json
    case FormData
}



public enum UploadResponse {
    case progress(percentage: Double)
    case response(data: Data?)
}
public enum XAppVersion : String {
    case base = "20210705"
    
}
public enum UserDefaultKey : String {
    case appLang                        = "appLang"
    case userId                         = "userId"
    case groupId                        = "groupId"
    case password                       = "password"
    case isAutoLogin                    = "isAutoLogin"
    case authorization                  = "Authorization"
    case refreshToken                   = "Refresh-Token"
    case pushNotification               = "pushNotification"
    case approvalDetailsNotification    = "approvalDetailsNotification"
    case paymentNotification            = "paymentNotification"
    case departmentApprovalNotification = "departmentApprovalNotification"
    case referenceReminder              = "referenceReminder"
    case notificationTimeoutSettings    = "notificationTimeoutSettings"
    case marketingPushNotification      = "marketingPushNotification"
}

public enum NotifyKey : String {
    case reloadLocalize          = "reloadLocalize"
}
