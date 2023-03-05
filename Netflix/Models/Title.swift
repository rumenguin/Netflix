//
//  Title.swift
//  Netflix
//
//  Created by RUMEN GUIN on 05/03/23.
//

import Foundation

/*
 results =     (
             {
         adult = 0;
         "backdrop_path" = "/3zt7xPU8pn5wpc17OScVDrGgV5X.jpg";
         "first_air_date" = "2013-04-07";
         "genre_ids" =             (
             10765,
             16,
             10759
         );
         id = 1429;
         "media_type" = tv;
         name = "Attack on Titan";
         "origin_country" =             (
             JP
         );
         "original_language" = ja;
         "original_name" = "\U9032\U6483\U306e\U5de8\U4eba";
         overview = "Several hundred years ago, humans were nearly exterminated by Titans. Titans are typically several stories tall, seem to have no intelligence, devour human beings and, worst of all, seem to do it for the pleasure rather than as a food source. A small percentage of humanity survived by walling themselves in a city protected by extremely high walls, even taller than the biggest Titans. Flash forward to the present and the city has not seen a Titan in over 100 years. Teenage boy Eren and his foster sister Mikasa witness something horrific as the city walls are destroyed by a Colossal Titan that appears out of thin air. As the smaller Titans flood the city, the two kids watch in horror as their mother is eaten alive. Eren vows that he will murder every single Titan and take revenge for all of mankind.";
         popularity = "188.798";
         "poster_path" = "/aiy35Evcofzl7hASZZvsFgltHTX.jpg";
         "vote_average" = "8.651";
         "vote_count" = 4979;
     },
 */

struct TrendingTitleResponse: Codable {
    let results: [Title]
}

struct Title: Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
