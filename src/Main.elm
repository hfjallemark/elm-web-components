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
    program
        { init = init
        , subscriptions = \_ -> Sub.none
        , update = update
        , view = view
        }


init : ( Model, Cmd Msg )
init =
    ( { greeting = "Say something!" }, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        SayGoodbye ->
            ( { model | greeting = "Good bye!" }, Cmd.none )

        SayHello ->
            ( { model | greeting = "Hello" }, Cmd.none )


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "Greeter" ]
        , myElement [ message model.greeting ]
        , myLitElement [ message model.greeting ]
        , button [ onClick SayHello ] [ text "Say Hello" ]
        , button [ onClick SayGoodbye ] [ text "Say Goodbye" ]
        ]
