//
//  FiltersViewController.swift
//  StudyRoomRater
//
//  Created by Wonsang Lee on 11/10/23.
//

import Foundation
import UIKit

protocol FilterDelegate: AnyObject {
    func filtersApplied(filters: [String: String])
}

class FiltersViewController: UIViewController{ //fill this out once we decide on filters
    weak var delegate: FilterDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}
