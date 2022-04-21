//
//  NotificationService.swift
//  MyNetmeraNotificationServiceExtension
//
//  Created by Elif Yürektürk on 20.04.2022.
//

import UserNotifications
import NetmeraNotificationServiceExtension

class NotificationService : NetmeraNotificationServiceExtension {

    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (_ contentToDeliver: UNNotificationContent) -> Void) {
        super.didReceive(request, withContentHandler: contentHandler)
    }

    override func serviceExtensionTimeWillExpire() {
        super.serviceExtensionTimeWillExpire()
    }

}
