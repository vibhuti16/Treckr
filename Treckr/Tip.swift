//
//  Tip.swift
//  Treckr
//
//  Created by Hasmukh Shah on 09/08/22.
//

import Foundation

struct Tip : Decodable{
    let text : String
    let children : [Tip]?
    
}
