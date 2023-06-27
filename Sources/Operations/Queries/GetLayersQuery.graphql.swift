// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class GetLayersQuery: GraphQLQuery {
  public static let operationName: String = "getLayers"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query getLayers($clientKey: String!, $videoId: String, $videoType: String) {
        getClientVideoLayers(
          input: {clientApiKey: $clientKey, videoId: $videoId, videoType: $videoType}
        ) {
          __typename
          layerId
          source
          selfManaged
          layerType
          name
        }
      }
      """#
    ))

  public var clientKey: String
  public var videoId: GraphQLNullable<String>
  public var videoType: GraphQLNullable<String>

  public init(
    clientKey: String,
    videoId: GraphQLNullable<String>,
    videoType: GraphQLNullable<String>
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
      .field("getClientVideoLayers", [GetClientVideoLayer?]?.self, arguments: ["input": [
        "clientApiKey": .variable("clientKey"),
        "videoId": .variable("videoId"),
        "videoType": .variable("videoType")
      ]]),
    ] }

    ///   Called by Enhance SDK
    public var getClientVideoLayers: [GetClientVideoLayer?]? { __data["getClientVideoLayers"] }

    /// GetClientVideoLayer
    ///
    /// Parent Type: `Layer`
    public struct GetClientVideoLayer: Enhance.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { Enhance.Objects.Layer }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("layerId", String?.self),
        .field("source", String?.self),
        .field("selfManaged", Bool?.self),
        .field("layerType", String?.self),
        .field("name", String?.self),
      ] }

      public var layerId: String? { __data["layerId"] }
      public var source: String? { __data["source"] }
      public var selfManaged: Bool? { __data["selfManaged"] }
      public var layerType: String? { __data["layerType"] }
      public var name: String? { __data["name"] }
    }
  }
}
