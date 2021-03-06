module Layout exposing (navigationBar)

import Bulma as B
import Html exposing (..)
import Html.Attributes exposing (..)


navigationBar : Html msg
navigationBar =
    nav [ B.navbar, B.hasShadow ]
        [ div [ B.navbarBrand ]
            [ a [ B.navbarItem, href "/" ]
                [ img [ attribute "height" "28", src "https://bulma.io/images/bulma-logo.png", attribute "width" "112" ] []
                ]
            , div [ B.navbarBurger ]
                -- 三本線
                [ span [ attribute "aria-hidden" "true" ] []
                , span [ attribute "aria-hidden" "true" ] []
                , span [ attribute "aria-hidden" "true" ] []
                ]
            ]
        , div [ B.navbarMenu ]
            [ div [ B.navbarStart ]
                [ a [ B.navbarItem, href "/" ]
                    [ text "Home" ]
                , a [ B.navbarItem, href "/about" ]
                    [ text "About" ]
                , div [ B.navbarItem, B.hasDropdown, B.isHoverable ]
                    [ div [ B.navbarLink ]
                        [ text "More" ]
                    , div [ B.navbarDropdown ]
                        [ a [ B.navbarItem, href "/about" ]
                            [ text "About" ]
                        , a [ B.navbarItem, href "https://github.com/chemirea/AST" ]
                            [ text "Github" ]
                        , a [ B.navbarItem, href "https://github.com/chemirea/AST" ]
                            [ text "Contact" ]
                        , hr [ B.navbarDivider ]
                            []
                        , a [ B.navbarItem, href "https://github.com/chemirea/AST/issues" ]
                            [ text "Report an issue" ]
                        ]
                    ]
                ]
            , div [ B.navbarEnd ]
                [ div [ B.navbarItem ]
                    [ div [ B.buttons ]
                        [ a [ B.button, B.isPrimary, href "/login" ]
                            [ strong []
                                [ text "Sign up" ]
                            ]
                        , a [ B.button, B.isLight, href "/login" ]
                            [ text "Log in" ]
                        ]
                    ]
                ]
            ]
        ]
