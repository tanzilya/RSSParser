//
//  ItemsDetailRouter.swift
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import UIKit

class ItemsDetailRouter: ItemsDetailRouterInput {
    func didTapedOnOpenWebSite(url: String) {
        let appLink = AppLink()
        appLink.openLink(url: url)
    }

}
