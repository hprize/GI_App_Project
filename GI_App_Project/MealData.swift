//
//  MealData.swift
//  GI_App_Project
//
//  Created by 이준후 on 2023/05/23.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let welcome = try? JSONDecoder().decode(Welcome.self, from: jsonData)

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let object: String
    let results: [Result]
    let hasMore: Bool
    let type: ObjectEnum
    let page: Page

    static let defaultWelcome: Welcome = Welcome(object: "dummyObject",
                                                        results: [
                                                            Result(object: .page,
                                                                   id: "dummyID",
                                                                   createdTime: .the20230523T004300000Z,
                                                                   lastEditedTime: "dummyLastEditedTime",
                                                                   createdBy: TedBy(object: .user, id: "dummyCreatedByID"),
                                                                   lastEditedBy: TedBy(object: .user, id: "dummyLastEditedByID"),
                                                                   parent: Parent(type: .databaseID, databaseID: "dummyDatabaseID"),
                                                                   archived: false,
                                                                   properties: Properties(menu1: Menu(id: .gRP, type: .richText, richText: [
                                                                    Title(type: .text, text: TitleText(content: "text"), annotations: Annotations(bold: true, italic: false, strikethrough: false, underline: false, code: false, color: .colorDefault), plainText: "text")]),
                                                                   menu5: Menu(id: .gRP, type: .richText, richText: [
                                                                    Title(type: .text, text: TitleText(content: "text"), annotations: Annotations(bold: true, italic: false, strikethrough: false, underline: false, code: false, color: .colorDefault), plainText: "text")]),
                                                                   menu2: Menu(id: .gRP, type: .richText, richText: [
                                                                    Title(type: .text, text: TitleText(content: "text"), annotations: Annotations(bold: true, italic: false, strikethrough: false, underline: false, code: false, color: .colorDefault), plainText: "text")]),
                                                                   menu3: Menu(id: .gRP, type: .richText, richText: [
                                                                    Title(type: .text, text: TitleText(content: "text"), annotations: Annotations(bold: true, italic: false, strikethrough: false, underline: false, code: false, color: .colorDefault), plainText: "text")]),
                                                                   menu4: Menu(id: .gRP, type: .richText, richText: [
                                                                    Title(type: .text, text: TitleText(content: "text"), annotations: Annotations(bold: true, italic: false, strikethrough: false, underline: false, code: false, color: .colorDefault), plainText: "text")]),
                                                                   dayTime: DayTime(id: .title, type: .title, title: [
                                                                    Title(type: .text, text: TitleText(content: "text"), annotations: Annotations(bold: true, italic: false, strikethrough: false, underline: false, code: false, color: .colorDefault), plainText: "text")])),
                                                            url: "dummyURL")
                                                        ],
                                                 hasMore: false,
                                                 type: .page,
                                                 page: Page())

    enum CodingKeys: String, CodingKey {
        case object, results
        case hasMore = "has_more"
        case type, page
    }
}

// MARK: - Page
struct Page: Codable {
}

// MARK: - Result
struct Result: Codable {
    let object: ObjectEnum
    let id: String
    let createdTime: CreatedTime
    let lastEditedTime: String
    let createdBy, lastEditedBy: TedBy
    let parent: Parent
    let archived: Bool
    let properties: Properties
    let url: String

    enum CodingKeys: String, CodingKey {
        case object, id
        case createdTime = "created_time"
        case lastEditedTime = "last_edited_time"
        case createdBy = "created_by"
        case lastEditedBy = "last_edited_by"
        case parent, archived, properties, url
    }
}

// MARK: - TedBy
struct TedBy: Codable {
    let object: Object
    let id: String
}

enum Object: String, Codable {
    case user = "user"
}

enum CreatedTime: String, Codable {
    case the20230523T004300000Z = "2023-05-23T00:43:00.000Z"
    case the20230523T004400000Z = "2023-05-23T00:44:00.000Z"
    case the20230523T010800000Z = "2023-05-23T01:08:00.000Z"
}

enum ObjectEnum: String, Codable {
    case page = "page"
}

// MARK: - Parent
struct Parent: Codable {
    let type: ParentType
    let databaseID: String

    enum CodingKeys: String, CodingKey {
        case type
        case databaseID = "database_id"
    }
}

enum ParentType: String, Codable {
    case databaseID = "database_id"
}

// MARK: - Properties
struct Properties: Codable {
    let menu1, menu5, menu2, menu3: Menu
    let menu4: Menu
    let dayTime: DayTime

    enum CodingKeys: String, CodingKey {
        case menu1 = "Menu_1"
        case menu5 = "Menu_5"
        case menu2 = "Menu_2"
        case menu3 = "Menu_3"
        case menu4 = "Menu_4"
        case dayTime = "Day_Time"
    }
}

// MARK: - DayTime
struct DayTime: Codable {
    let id, type: TypeEnum
    let title: [Title]
}

enum TypeEnum: String, Codable {
    case title = "title"
}

// MARK: - Title
struct Title: Codable {
    let type: TitleType
    let text: TitleText
    let annotations: Annotations
    let plainText: String

    enum CodingKeys: String, CodingKey {
        case type, text, annotations
        case plainText = "plain_text"
    }
}

// MARK: - Annotations
struct Annotations: Codable {
    let bold, italic, strikethrough, underline: Bool
    let code: Bool
    let color: AnnotationsColor
}

enum AnnotationsColor: String, Codable {
    case colorDefault = "default"
}

// MARK: - Text
struct TitleText: Codable {
    let content: String
}

enum TitleType: String, Codable {
    case text = "text"
}

// MARK: - Menu
struct Menu: Codable {
    let id: Menu1_ID
    let type: Menu1_Type
    let richText: [Title]

    enum CodingKeys: String, CodingKey {
        case id, type
        case richText = "rich_text"
    }
}

enum Menu1_ID: String, Codable {
    case gRP = "gR~P"
    case lhL = "~LhL"
    case the7DNmJ = "%7DNmJ"
    case xl7DW = "Xl%7Dw"
    case zysr = "zysr"
}

enum Menu1_Type: String, Codable {
    case richText = "rich_text"
}
