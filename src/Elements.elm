module Elements exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Json.Decode as Json


myElement : List (Html.Attribute msg) -> Html msg
myElement attributes =
    node "my-element" attributes []


myLitElement : List (Html.Attribute msg) -> Html msg
myLitElement attributes =
    node "my-lit-element" attributes []


message : String -> Html.Attribute msg
message value =
    attribute "message" value


onTest : (String -> msg) -> Attribute msg
onTest tagger =
    on "test" (Json.map tagger targetDetail)


targetDetail : Json.Decoder String
targetDetail =
    Json.at [ "detail" ] Json.string
