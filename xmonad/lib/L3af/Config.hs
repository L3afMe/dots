module L3af.Config ( followMouse'
                   , workspaces'
                   , gaps'
                   , borderWidth'
                   , borderColor'
                   , borderColorFocus'
                   , tabHeight'
                   , tabFont'
                   , tabTextColor'
                   , tabColor'
                   , tabActiveTextColor'
                   , tabActiveColor'
                   , tabUrgentTextColor'
                   , tabUrgentColor'
                   , modKey'
                   , terminal'
                   , launcher'
                   , screenshot'
                   , screenshotSelection'
                   , colorPicker'
                   ) where

import Prelude ( Num ()
               , Bool ( False
                      , True
                      )
               )

import XMonad (mod4Mask)

-- Misc
followMouse' = False
workspaces' = [ "1", "2"
              , "3", "4"
              , "5", "6"
              , "7", "8"
              , "9" ]

gaps' :: Num p => p
gaps' = 20

-- Border
borderWidth' :: Num p => p
borderWidth'      = 4
borderColor'      = "#FAF4ED"
borderColorFocus' = "#EDD7BD"

-- Tabs
tabHeight' :: Num p => p
tabHeight'          = 24
tabFont'            = "xft:Fira Code Regular:size=8"
tabTextColor'       = "#575279"
tabColor'           = "#F5E9DA"
tabActiveTextColor' = "#575279"
tabActiveColor'     = "#EDD7BD"
tabUrgentTextColor' = "#575279"
tabUrgentColor'     = "#B4637A"

-- Mod key
modKey' = mod4Mask

-- Apps
terminal'            = "kitty"
launcher'            = "rofi -show run"
screenshot'          = "elvish ~/.elvish/screenshot.elv"
screenshotSelection' = "elvish ~/.elvish/screenshot-selection.elv"
colorPicker'         = "colorpicker --short --one-shot | tr -d '\\n' | xclip -selection clipboard"
