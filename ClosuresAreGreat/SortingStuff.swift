//
//  SortingStuff.swift
//  ClosuresAreGreat
//
//  Created by Ron Don Volante on 10/25/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


struct ToyBin {
    
    var ships: [Ship] = []
    var books: [Book] = []
    var bowlingPins: [BowlingPin] = []
    var musicCDs: [MusicCD] = []
    
    // TODO: Implement all of the sort functions (lets organize this toy bin!)
    
    //sortShips
    mutating func sortShips() {
        var newShips:[Ship] = []
        newShips = ships.sorted(by: {
            if $0.name == "Titanic" {
                return true
            } else {
              return $0.age > $1.age
            }
        })
        
        ships = newShips
    }
 
    //sortBooks
    mutating func sortBooks() {
        var newBooks:[Book]
        newBooks = books.sorted(by: {
             $0.name < $1.name
        })
        books = newBooks
    }
    
    //sortBowlingPins
    mutating func sortBowlingPins() {
        let newBowlingPins:[BowlingPin]
        newBowlingPins = bowlingPins.sorted(by: {
           $0.color.rawValue < $1.color.rawValue
        })
        bowlingPins = newBowlingPins
    }
    
    //sortMusicCDs()
    mutating func sortMusicCDs() {
        let newMusicCDS = musicCDs.sorted(by: {
            if $0.name == "Drake"  { return true } else
            { return $0.name < $1.name }
        } )
        
        musicCDs = newMusicCDS
    }
    
    //changeColorOfAllPins(to:)
    mutating func changeColorOfAllPins(to newColor:Color) {
            let newBowlingPins = bowlingPins.map({ (x:BowlingPin)->BowlingPin in
            var newBowlingPin:BowlingPin = x
                newBowlingPin.color = newColor
            return newBowlingPin
        })
       bowlingPins = newBowlingPins
    }
    
    
}


struct Ship {
    var name: String
    var age: Int
}


struct Book {
    var name: String
    var year: Int
    var author: String
}


struct BowlingPin {
    var name: String
    var film: String
    var color: Color
}


extension BowlingPin {
    mutating func changeColor(to color: Color) {
        self.color = color
    }
}


enum Color: Int {
    case red, orange, yellow, green, blue, indigo, violet
}

struct MusicCD {
    var name: String
    var year: Int
    var songs: [String]
}
