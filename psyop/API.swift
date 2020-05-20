// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class SubstanceInfoQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query substanceInfo($query: String) {
      substances(query: $query) {
        __typename
        name
        roas {
          __typename
          name
          dose {
            __typename
            units
            threshold
            heavy
            common {
              __typename
              min
              max
            }
            light {
              __typename
              min
              max
            }
            strong {
              __typename
              min
              max
            }
          }
          duration {
            __typename
            afterglow {
              __typename
              min
              max
              units
            }
            comeup {
              __typename
              min
              max
              units
            }
            duration {
              __typename
              min
              max
              units
            }
            offset {
              __typename
              min
              max
              units
            }
            onset {
              __typename
              min
              max
              units
            }
            peak {
              __typename
              min
              max
              units
            }
            total {
              __typename
              min
              max
              units
            }
          }
          bioavailability {
            __typename
            min
            max
          }
        }
        effects {
          __typename
          name
          url
        }
      }
    }
    """

  public let operationName: String = "substanceInfo"

  public var query: String?

  public init(query: String? = nil) {
    self.query = query
  }

  public var variables: GraphQLMap? {
    return ["query": query]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("substances", arguments: ["query": GraphQLVariable("query")], type: .list(.object(Substance.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(substances: [Substance?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "substances": substances.flatMap { (value: [Substance?]) -> [ResultMap?] in value.map { (value: Substance?) -> ResultMap? in value.flatMap { (value: Substance) -> ResultMap in value.resultMap } } }])
    }

    public var substances: [Substance?]? {
      get {
        return (resultMap["substances"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Substance?] in value.map { (value: ResultMap?) -> Substance? in value.flatMap { (value: ResultMap) -> Substance in Substance(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Substance?]) -> [ResultMap?] in value.map { (value: Substance?) -> ResultMap? in value.flatMap { (value: Substance) -> ResultMap in value.resultMap } } }, forKey: "substances")
      }
    }

    public struct Substance: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Substance"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("roas", type: .list(.object(Roa.selections))),
        GraphQLField("effects", type: .list(.object(Effect.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, roas: [Roa?]? = nil, effects: [Effect?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Substance", "name": name, "roas": roas.flatMap { (value: [Roa?]) -> [ResultMap?] in value.map { (value: Roa?) -> ResultMap? in value.flatMap { (value: Roa) -> ResultMap in value.resultMap } } }, "effects": effects.flatMap { (value: [Effect?]) -> [ResultMap?] in value.map { (value: Effect?) -> ResultMap? in value.flatMap { (value: Effect) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var roas: [Roa?]? {
        get {
          return (resultMap["roas"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Roa?] in value.map { (value: ResultMap?) -> Roa? in value.flatMap { (value: ResultMap) -> Roa in Roa(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Roa?]) -> [ResultMap?] in value.map { (value: Roa?) -> ResultMap? in value.flatMap { (value: Roa) -> ResultMap in value.resultMap } } }, forKey: "roas")
        }
      }

      public var effects: [Effect?]? {
        get {
          return (resultMap["effects"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Effect?] in value.map { (value: ResultMap?) -> Effect? in value.flatMap { (value: ResultMap) -> Effect in Effect(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Effect?]) -> [ResultMap?] in value.map { (value: Effect?) -> ResultMap? in value.flatMap { (value: Effect) -> ResultMap in value.resultMap } } }, forKey: "effects")
        }
      }

      public struct Roa: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["SubstanceRoa"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("dose", type: .object(Dose.selections)),
          GraphQLField("duration", type: .object(Duration.selections)),
          GraphQLField("bioavailability", type: .object(Bioavailability.selections)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, dose: Dose? = nil, duration: Duration? = nil, bioavailability: Bioavailability? = nil) {
          self.init(unsafeResultMap: ["__typename": "SubstanceRoa", "name": name, "dose": dose.flatMap { (value: Dose) -> ResultMap in value.resultMap }, "duration": duration.flatMap { (value: Duration) -> ResultMap in value.resultMap }, "bioavailability": bioavailability.flatMap { (value: Bioavailability) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var dose: Dose? {
          get {
            return (resultMap["dose"] as? ResultMap).flatMap { Dose(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "dose")
          }
        }

        public var duration: Duration? {
          get {
            return (resultMap["duration"] as? ResultMap).flatMap { Duration(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "duration")
          }
        }

        public var bioavailability: Bioavailability? {
          get {
            return (resultMap["bioavailability"] as? ResultMap).flatMap { Bioavailability(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "bioavailability")
          }
        }

        public struct Dose: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["SubstanceRoaDose"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("units", type: .scalar(String.self)),
            GraphQLField("threshold", type: .scalar(Double.self)),
            GraphQLField("heavy", type: .scalar(Double.self)),
            GraphQLField("common", type: .object(Common.selections)),
            GraphQLField("light", type: .object(Light.selections)),
            GraphQLField("strong", type: .object(Strong.selections)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(units: String? = nil, threshold: Double? = nil, heavy: Double? = nil, common: Common? = nil, light: Light? = nil, strong: Strong? = nil) {
            self.init(unsafeResultMap: ["__typename": "SubstanceRoaDose", "units": units, "threshold": threshold, "heavy": heavy, "common": common.flatMap { (value: Common) -> ResultMap in value.resultMap }, "light": light.flatMap { (value: Light) -> ResultMap in value.resultMap }, "strong": strong.flatMap { (value: Strong) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var units: String? {
            get {
              return resultMap["units"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "units")
            }
          }

          public var threshold: Double? {
            get {
              return resultMap["threshold"] as? Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "threshold")
            }
          }

          public var heavy: Double? {
            get {
              return resultMap["heavy"] as? Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "heavy")
            }
          }

          public var common: Common? {
            get {
              return (resultMap["common"] as? ResultMap).flatMap { Common(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "common")
            }
          }

          public var light: Light? {
            get {
              return (resultMap["light"] as? ResultMap).flatMap { Light(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "light")
            }
          }

          public var strong: Strong? {
            get {
              return (resultMap["strong"] as? ResultMap).flatMap { Strong(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "strong")
            }
          }

          public struct Common: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SubstanceRoaRange"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("min", type: .scalar(Double.self)),
              GraphQLField("max", type: .scalar(Double.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(min: Double? = nil, max: Double? = nil) {
              self.init(unsafeResultMap: ["__typename": "SubstanceRoaRange", "min": min, "max": max])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var min: Double? {
              get {
                return resultMap["min"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "min")
              }
            }

            public var max: Double? {
              get {
                return resultMap["max"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "max")
              }
            }
          }

          public struct Light: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SubstanceRoaRange"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("min", type: .scalar(Double.self)),
              GraphQLField("max", type: .scalar(Double.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(min: Double? = nil, max: Double? = nil) {
              self.init(unsafeResultMap: ["__typename": "SubstanceRoaRange", "min": min, "max": max])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var min: Double? {
              get {
                return resultMap["min"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "min")
              }
            }

            public var max: Double? {
              get {
                return resultMap["max"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "max")
              }
            }
          }

          public struct Strong: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SubstanceRoaRange"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("min", type: .scalar(Double.self)),
              GraphQLField("max", type: .scalar(Double.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(min: Double? = nil, max: Double? = nil) {
              self.init(unsafeResultMap: ["__typename": "SubstanceRoaRange", "min": min, "max": max])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var min: Double? {
              get {
                return resultMap["min"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "min")
              }
            }

            public var max: Double? {
              get {
                return resultMap["max"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "max")
              }
            }
          }
        }

        public struct Duration: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["SubstanceRoaDuration"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("afterglow", type: .object(Afterglow.selections)),
            GraphQLField("comeup", type: .object(Comeup.selections)),
            GraphQLField("duration", type: .object(Duration.selections)),
            GraphQLField("offset", type: .object(Offset.selections)),
            GraphQLField("onset", type: .object(Onset.selections)),
            GraphQLField("peak", type: .object(Peak.selections)),
            GraphQLField("total", type: .object(Total.selections)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(afterglow: Afterglow? = nil, comeup: Comeup? = nil, duration: Duration? = nil, offset: Offset? = nil, onset: Onset? = nil, peak: Peak? = nil, total: Total? = nil) {
            self.init(unsafeResultMap: ["__typename": "SubstanceRoaDuration", "afterglow": afterglow.flatMap { (value: Afterglow) -> ResultMap in value.resultMap }, "comeup": comeup.flatMap { (value: Comeup) -> ResultMap in value.resultMap }, "duration": duration.flatMap { (value: Duration) -> ResultMap in value.resultMap }, "offset": offset.flatMap { (value: Offset) -> ResultMap in value.resultMap }, "onset": onset.flatMap { (value: Onset) -> ResultMap in value.resultMap }, "peak": peak.flatMap { (value: Peak) -> ResultMap in value.resultMap }, "total": total.flatMap { (value: Total) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var afterglow: Afterglow? {
            get {
              return (resultMap["afterglow"] as? ResultMap).flatMap { Afterglow(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "afterglow")
            }
          }

          public var comeup: Comeup? {
            get {
              return (resultMap["comeup"] as? ResultMap).flatMap { Comeup(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "comeup")
            }
          }

          public var duration: Duration? {
            get {
              return (resultMap["duration"] as? ResultMap).flatMap { Duration(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "duration")
            }
          }

          public var offset: Offset? {
            get {
              return (resultMap["offset"] as? ResultMap).flatMap { Offset(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "offset")
            }
          }

          public var onset: Onset? {
            get {
              return (resultMap["onset"] as? ResultMap).flatMap { Onset(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "onset")
            }
          }

          public var peak: Peak? {
            get {
              return (resultMap["peak"] as? ResultMap).flatMap { Peak(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "peak")
            }
          }

          public var total: Total? {
            get {
              return (resultMap["total"] as? ResultMap).flatMap { Total(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "total")
            }
          }

          public struct Afterglow: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SubstanceRoaDurationRange"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("min", type: .scalar(Double.self)),
              GraphQLField("max", type: .scalar(Double.self)),
              GraphQLField("units", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(min: Double? = nil, max: Double? = nil, units: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "SubstanceRoaDurationRange", "min": min, "max": max, "units": units])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var min: Double? {
              get {
                return resultMap["min"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "min")
              }
            }

            public var max: Double? {
              get {
                return resultMap["max"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "max")
              }
            }

            public var units: String? {
              get {
                return resultMap["units"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "units")
              }
            }
          }

          public struct Comeup: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SubstanceRoaDurationRange"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("min", type: .scalar(Double.self)),
              GraphQLField("max", type: .scalar(Double.self)),
              GraphQLField("units", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(min: Double? = nil, max: Double? = nil, units: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "SubstanceRoaDurationRange", "min": min, "max": max, "units": units])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var min: Double? {
              get {
                return resultMap["min"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "min")
              }
            }

            public var max: Double? {
              get {
                return resultMap["max"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "max")
              }
            }

            public var units: String? {
              get {
                return resultMap["units"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "units")
              }
            }
          }

          public struct Duration: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SubstanceRoaDurationRange"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("min", type: .scalar(Double.self)),
              GraphQLField("max", type: .scalar(Double.self)),
              GraphQLField("units", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(min: Double? = nil, max: Double? = nil, units: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "SubstanceRoaDurationRange", "min": min, "max": max, "units": units])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var min: Double? {
              get {
                return resultMap["min"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "min")
              }
            }

            public var max: Double? {
              get {
                return resultMap["max"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "max")
              }
            }

            public var units: String? {
              get {
                return resultMap["units"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "units")
              }
            }
          }

          public struct Offset: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SubstanceRoaDurationRange"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("min", type: .scalar(Double.self)),
              GraphQLField("max", type: .scalar(Double.self)),
              GraphQLField("units", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(min: Double? = nil, max: Double? = nil, units: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "SubstanceRoaDurationRange", "min": min, "max": max, "units": units])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var min: Double? {
              get {
                return resultMap["min"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "min")
              }
            }

            public var max: Double? {
              get {
                return resultMap["max"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "max")
              }
            }

            public var units: String? {
              get {
                return resultMap["units"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "units")
              }
            }
          }

          public struct Onset: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SubstanceRoaDurationRange"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("min", type: .scalar(Double.self)),
              GraphQLField("max", type: .scalar(Double.self)),
              GraphQLField("units", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(min: Double? = nil, max: Double? = nil, units: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "SubstanceRoaDurationRange", "min": min, "max": max, "units": units])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var min: Double? {
              get {
                return resultMap["min"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "min")
              }
            }

            public var max: Double? {
              get {
                return resultMap["max"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "max")
              }
            }

            public var units: String? {
              get {
                return resultMap["units"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "units")
              }
            }
          }

          public struct Peak: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SubstanceRoaDurationRange"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("min", type: .scalar(Double.self)),
              GraphQLField("max", type: .scalar(Double.self)),
              GraphQLField("units", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(min: Double? = nil, max: Double? = nil, units: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "SubstanceRoaDurationRange", "min": min, "max": max, "units": units])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var min: Double? {
              get {
                return resultMap["min"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "min")
              }
            }

            public var max: Double? {
              get {
                return resultMap["max"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "max")
              }
            }

            public var units: String? {
              get {
                return resultMap["units"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "units")
              }
            }
          }

          public struct Total: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["SubstanceRoaDurationRange"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("min", type: .scalar(Double.self)),
              GraphQLField("max", type: .scalar(Double.self)),
              GraphQLField("units", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(min: Double? = nil, max: Double? = nil, units: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "SubstanceRoaDurationRange", "min": min, "max": max, "units": units])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var min: Double? {
              get {
                return resultMap["min"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "min")
              }
            }

            public var max: Double? {
              get {
                return resultMap["max"] as? Double
              }
              set {
                resultMap.updateValue(newValue, forKey: "max")
              }
            }

            public var units: String? {
              get {
                return resultMap["units"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "units")
              }
            }
          }
        }

        public struct Bioavailability: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["SubstanceRoaRange"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("min", type: .scalar(Double.self)),
            GraphQLField("max", type: .scalar(Double.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(min: Double? = nil, max: Double? = nil) {
            self.init(unsafeResultMap: ["__typename": "SubstanceRoaRange", "min": min, "max": max])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var min: Double? {
            get {
              return resultMap["min"] as? Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "min")
            }
          }

          public var max: Double? {
            get {
              return resultMap["max"] as? Double
            }
            set {
              resultMap.updateValue(newValue, forKey: "max")
            }
          }
        }
      }

      public struct Effect: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Effect"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("url", type: .scalar(String.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String? = nil, url: String? = nil) {
          self.init(unsafeResultMap: ["__typename": "Effect", "name": name, "url": url])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        public var url: String? {
          get {
            return resultMap["url"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "url")
          }
        }
      }
    }
  }
}
