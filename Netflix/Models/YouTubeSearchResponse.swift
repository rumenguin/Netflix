//
//  YouTubeSearchResponse.swift
//  Netflix
//
//  Created by RUMEN GUIN on 05/03/23.
//

import Foundation
/*
 items =     (
             {
         etag = "jOUSUrLH03Ql_DO2S0xNm6CxFc8";
         id =             {
             kind = "youtube#video";
             videoId = "lrT8QgWO-uw";
         };
         kind = "youtube#searchResult";
     },
             
 */

struct YouTubeSearchResponse: Codable {
    let items: [VideoElement]
}

struct VideoElement: Codable {
    let id: IdVideoElement
}

struct IdVideoElement: Codable {
    let kind: String
    let videoId: String
}
