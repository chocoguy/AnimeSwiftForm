//
//  Anime.swift
//  AnimeSwiftForm
//
//  Created by Edgar Zarco on 7/11/23.
//

import Foundation
import SwiftData

@Model
final class Anime {
    
    var Id: String //req
    var Title: String //req
    var Episodes: Int //req
    var Season: Int //FK
    var Rating: Float
    var StartedWatching: Date
    var StoppedWatching: Date
    var Status: Int //FK
    var MediaType: Int //FK
    var StartedAiring: Date
    var EndedAiring: Date
    var AnimeDescription: String
    var MALScore: Int
    var MALRanking: Int
    var Review: String
    var AgeRating: Int //FK
    var Genre: String
    var StatusAiring: Int //FK
    var Source: Int //FK
    var Studio: String
    var Poster: String
    var LastWatched: Int
    
    
    init(Id: String,
         Title: String,
         Episodes: Int,
         Season: Int,
         Rating: Float,
         StartedWatching: Date,
         StoppedWatching: Date,
         Status: Int,
         MediaType: Int,
         StartedAiring: Date,
         EndedAiring: Date,
         AnimeDescription: String,
         MALScore: Int,
         MALRanking: Int,
         Review: String,
         AgeRating: Int,
         Genre: String,
         StatusAiring: Int,
         Source: Int,
         Studio: String,
         Poster: String,
         LastWatched: Int
    ) {
        self.Id = Id
        self.Title = Title
        self.Episodes = Episodes
        self.Season = Season
        self.Rating = Rating
        self.StartedWatching = StartedWatching
        self.StoppedWatching = StoppedWatching
        self.Status = Status
        self.MediaType = MediaType
        self.StartedAiring = StartedAiring
        self.EndedAiring = EndedAiring
        self.AnimeDescription = AnimeDescription
        self.MALScore = MALScore
        self.MALRanking = MALRanking
        self.Review = Review
        self.AgeRating = AgeRating
        self.Genre = Genre
        self.StatusAiring = StatusAiring
        self.Source = Source
        self.Studio = Studio
        self.Poster = Poster
        self.LastWatched = LastWatched
    }
}
