//
//  AppLink.swift
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import UIKit

class AppLink: AppLinkProtocols {

    
    func openLink(url: String) {
        guard let link = URL(string: url) else { return }
        UIApplication.shared.open(link)
    }
}
