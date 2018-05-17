module Elements exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


myElement : List (Html.Attribute msg) -> Html msg
myElement attributes =
    node "my-element" attributes []


myLitElement : List (Html.Attribute msg) -> Html msg
myLitElement attributes =
    node "my-lit-element" attributes []


message : String -> Html.Attribute msg
message value =
    attribute "message" value
