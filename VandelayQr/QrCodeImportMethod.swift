//
//  QrCodeImportMethod.swift
//  VandelayQr
//
//  Created by Daniel Saidi on 2018-10-02.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

import Vandelay

public extension ImportMethod {
    
    public static var qrCode: ImportMethod {
        return .custom(name: "qr")
    }
}
