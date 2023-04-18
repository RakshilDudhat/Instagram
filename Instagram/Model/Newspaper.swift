//
//  Newspaper.swift
//  Instagram
//
//  Created by Rakshil Dudhat on 03/04/23.
//

import Foundation

struct Newspaper: Codable {
    let lccn: String
    let url: String
    let state: State
    let title: String
}

enum State: String, Codable {
    case alabama = "Alabama"
    case alaska = "Alaska"
    case arizona = "Arizona"
    case arkansas = "Arkansas"
    case california = "California"
    case colorado = "Colorado"
    case connecticut = "Connecticut"
    case delaware = "Delaware"
    case districtOfColumbia = "District of Columbia"
    case florida = "Florida"
    case georgia = "Georgia"
    case hawaii = "Hawaii"
    case idaho = "Idaho"
    case illinois = "Illinois"
    case indiana = "Indiana"
    case iowa = "Iowa"
    case kansas = "Kansas"
    case kentucky = "Kentucky"
    case louisiana = "Louisiana"
    case maine = "Maine"
    case maryland = "Maryland"
    case massachusetts = "Massachusetts"
    case michigan = "Michigan"
    case minnesota = "Minnesota"
    case mississippi = "Mississippi"
    case missouri = "Missouri"
    case montana = "Montana"
    case nebraska = "Nebraska"
    case nevada = "Nevada"
    case newJersey = "New Jersey"
    case newMexico = "New Mexico"
    case newYork = "New York"
    case northCarolina = "North Carolina"
    case northDakota = "North Dakota"
    case ohio = "Ohio"
    case oklahoma = "Oklahoma"
    case oregon = "Oregon"
    case pennsylvania = "Pennsylvania"
    case piedmont = "Piedmont"
    case puertoRico = "Puerto Rico"
    case rhodeIsland = "Rhode Island"
    case southCarolina = "South Carolina"
    case southDakota = "South Dakota"
    case tennessee = "Tennessee"
    case texas = "Texas"
    case utah = "Utah"
    case vermont = "Vermont"
    case virginIslands = "Virgin Islands"
    case virginia = "Virginia"
    case washington = "Washington"
    case westVirginia = "West Virginia"
    case wisconsin = "Wisconsin"
    case wyoming = "Wyoming"
}
