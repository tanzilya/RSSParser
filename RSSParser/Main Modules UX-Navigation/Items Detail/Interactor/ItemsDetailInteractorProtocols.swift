//
//  ItemsDetailInteractorProtocols.swift
//  RSSParser
//
//  Created by Tanzilya Yakshimbetova on 12/1/19.
//  Copyright © 2019 kwork-test. All rights reserved.
//

import UIKit

//MARK: - *** ItemsDetailInteractorInput ***

protocol ItemsDetailInteractorInput {
}

//MARK: - *** ItemsDetailInteractorOutput ***

protocol ItemsDetailInteractorOutput: class {
    func dataReady(item: NSManagedObject)
}
