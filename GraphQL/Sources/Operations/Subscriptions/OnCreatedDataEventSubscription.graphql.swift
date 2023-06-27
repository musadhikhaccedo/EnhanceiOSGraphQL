// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class OnCreatedDataEventSubscription: GraphQLSubscription {
  public static let operationName: String = "onCreatedDataEvent"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      subscription onCreatedDataEvent {
        onCreateDataEvent(clientApiKey: "da2-g3mi77jlsjakvnhvwjg6uy2w7a") {
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

  public init() {}

  public struct Data: Enhance.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { Enhance.Objects.Subscription }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("onCreateDataEvent", OnCreateDataEvent?.self, arguments: ["clientApiKey": "da2-g3mi77jlsjakvnhvwjg6uy2w7a"]),
    ] }

    public var onCreateDataEvent: OnCreateDataEvent? { __data["onCreateDataEvent"] }

    /// OnCreateDataEvent
    ///
    /// Parent Type: `DataEvent`
    public struct OnCreateDataEvent: Enhance.SelectionSet {
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
