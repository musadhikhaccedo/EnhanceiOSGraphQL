// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetDataEventsQuery: GraphQLQuery {
  public static let operationName: String = "getDataEvents"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query getDataEvents($clientKey: String!, $videoId: String!, $videoType: String!) {
        getDataEventsByVideoIdType(
          apiKey: $clientKey
          videoId: $videoId
          videoType: $videoType
        ) {
          __typename
          id
          videoId
          videoType
          entityId
          entityType
          contentPosition
          eventDateTime
          layerId
          createdAt
          info
        }
      }
      """#
    ))

  public var clientKey: String
  public var videoId: String
  public var videoType: String

  public init(
    clientKey: String,
    videoId: String,
    videoType: String
  ) {
    self.clientKey = clientKey
    self.videoId = videoId
    self.videoType = videoType
  }

  public var __variables: Variables? { [
    "clientKey": clientKey,
    "videoId": videoId,
    "videoType": videoType
  ] }

  public struct Data: Enhance.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { Enhance.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("getDataEventsByVideoIdType", [GetDataEventsByVideoIdType?]?.self, arguments: [
        "apiKey": .variable("clientKey"),
        "videoId": .variable("videoId"),
        "videoType": .variable("videoType")
      ]),
    ] }

    public var getDataEventsByVideoIdType: [GetDataEventsByVideoIdType?]? { __data["getDataEventsByVideoIdType"] }

    /// GetDataEventsByVideoIdType
    ///
    /// Parent Type: `DataEvent`
    public struct GetDataEventsByVideoIdType: Enhance.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { Enhance.Objects.DataEvent }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", Enhance.ID.self),
        .field("videoId", String?.self),
        .field("videoType", String?.self),
        .field("entityId", String?.self),
        .field("entityType", String?.self),
        .field("contentPosition", Int?.self),
        .field("eventDateTime", Enhance.AWSDateTime?.self),
        .field("layerId", String?.self),
        .field("createdAt", Enhance.AWSDateTime?.self),
        .field("info", Enhance.AWSJSON?.self),
      ] }

      public var id: Enhance.ID { __data["id"] }
      public var videoId: String? { __data["videoId"] }
      public var videoType: String? { __data["videoType"] }
      public var entityId: String? { __data["entityId"] }
      public var entityType: String? { __data["entityType"] }
      public var contentPosition: Int? { __data["contentPosition"] }
      public var eventDateTime: Enhance.AWSDateTime? { __data["eventDateTime"] }
      public var layerId: String? { __data["layerId"] }
      public var createdAt: Enhance.AWSDateTime? { __data["createdAt"] }
      public var info: Enhance.AWSJSON? { __data["info"] }
    }
  }
}
