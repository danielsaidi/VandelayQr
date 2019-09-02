//
//  QrCodeImportMethod.swift
//  VandelayQr
//
//  Created by Daniel Saidi on 2018-10-02.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

import Vandelay

public extension ImportMethod {

    /**
     This property extends the `ImportMethod` enum with a QR
     specific method.
    */
    static var qrCode: ImportMethod {
        return .custom(name: "qr")
    }
}
