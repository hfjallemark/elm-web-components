module Main exposing (..)

import Elements exposing (..)
import Html exposing (..)
import Html.Events exposing (..)


type alias Model =
    { greeting : String
    }


type Msg
    = SayGoodbye
    | SayHello


main : Program Never Model Msg
main =
    beginnerProgram
        { model = model
        , update = update
        , view = view
        }


model : Model
model =
    { greeting = "Say something!" }


update : Msg -> Model -> Model
update msg model =
    case msg of
        SayGoodbye ->
            { model | greeting = "Good bye!" }

        SayHello ->
            { model | greeting = "Hello" }


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Greeter" ]
        , myElement [ message model.greeting ]
        , myLitElement [ message model.greeting ]
        , button [ onClick SayHello ] [ text "Say Hello" ]
        , button [ onClick SayGoodbye ] [ text "Say Goodbye" ]
        ]
