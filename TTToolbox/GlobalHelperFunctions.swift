//
//  GlobalHelperFunctions.swift
//  TTToolbox
//
//  Created by Pawel Urbanek on 27/12/2016.
//  Copyright © 2016 Pawel Urbanek. All rights reserved.
//

import Foundation

func delay(seconds: Double, completion: @escaping ()-> Void) {
  DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: completion)
}
