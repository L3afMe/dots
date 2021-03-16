module L3af.Bind.Keyboard ( keys'
                           ) where

import Data.Map ( Map ()
                , member )

import System.Exit ( exitSuccess )

import XMonad ( KeySym ()
              , KeyMask ()
              , ChangeLayout (NextLayout)
              , Window ()
              , X ()
              , XConfig ()
              , io
              , mod1Mask
              , modMask
              , layoutHook
              , sendMessage
              , spawn
              , kill
              , windows )
import XMonad.Layout.BinarySpacePartition ( ResizeDirectional ( ShrinkFrom
                                                              , ExpandTowards ) )
import XMonad.Layout.Gaps ( GapMessage( IncGap
                                      , DecGap ) )
import XMonad.Layout.MultiToggle as T ( Toggle ( Toggle ) )
import XMonad.Layout.MultiToggle.Instances ( StdTransformers ( FULL ) )
import XMonad.Layout.SubLayouts ( GroupMsg ( MergeAll
                                           , UnMerge
                                           , UnMergeAll )
                                , onGroup
                                , pullGroup
                                , toSubl)

import XMonad.StackSet ( RationalRect (RationalRect)
                       , sink
                       , view
                       , shift
                       , float
                       , swapUp
                       , focusUp
                       , focusUp'
                       , floating
                       , swapDown
                       , focusDown
                       , focusDown'
                       , swapMaster
                       , focusMaster )

import XMonad.Hooks.ManageDocks ( Direction2D ( U
                                              , D
                                              , R
                                              , L ) )

import XMonad.Actions.CopyWindow ( copy )
import XMonad.Actions.Navigation2D ( windowGo
                                   , windowSwap )
import XMonad.Actions.PerWorkspaceKeys (bindOn)

import XMonad.Util.EZConfig ( mkKeymap )

import XMonad.Config.Prime ( withFocused )

import qualified Data.Map        as M

import L3af.Config ( terminal'
                   , launcher'
                   , screenshot'
                   , screenshotSelection'
                   , colorPicker'
                   , workspaces')

toggleFloat :: Window -> X ()
toggleFloat w = windows $ \s -> if member w $ floating s
                                   then sink w s
                                   else float w (RationalRect (1/6) (1/6) (2/3) (2/3)) s

workspaceKeys :: [[Char]]
workspaceKeys = [ "("
                , ")"
                , "}"
                , "+"
                , "{"
                , "]"
                , "["
                , "!"
                , "="
                ]

---------------
---- Binds ----
---------------
--
---- Legends
--   ^: Ctrl
--   #: Mod
--   !: Alt
--   +: Shift
--   >: Return
--   <: Delete
--   @: Space
--
---- Apps
-- #D  : Launcher
-- #> : Terminal
-- #<  : Screenshot
--
---- Misc
-- #R  : Reload config
-- #+R : Restart XMonad
-- #+E : Logout
--
---- Windows
-- #H  : Focus previous window
-- #L  : Focus next window
-- #+H : Move focus windown to previous
-- #+L : Move focus windown to next
-- #.  : Group focus up
-- #,  : Group focus down
-- #u  : Unmerge focused window
-- #+u : Unmerge all in group
-- #m  : Merge all in group
-- #F  : Toggle fullscreen
-- #+@ : Next layout
-- #^@ : Sublayout next layout
-- #+Q : Force close window
--
---- Resizing
-- #!H : Grow focused window leftwards
-- #^H : Shrink focused window leftwards
-- #!L : Grow focused window rightwards
-- #^L : Shrink focused window rightwards
-- #!K : Grow focused window upwards
-- #^K : Shrink focused window upwards
-- #!J : Grow focused window downwards
-- #^J : Shrink focused window downwards
--
---- Workspaces
-- #(   : Change to workspace 1
-- #+(  : Move window to workspace 1
-- #)   : Change to workspace 2
-- #+)  : Move window to workspace 2
-- #}   : Change to workspace 3
-- #+}  : Move window to workspace 3
-- #\+  : Change to workspace 4
-- #+\+ : Move window to workspace 4
-- #{   : Change to workspace 5
-- #+{  : Move window to workspace 5
-- #]   : Change to workspace 6
-- #+]  : Move window to workspace 6
-- #[   : Change to workspace 7
-- #+[  : Move window to workspace 7
-- #\!  : Change to workspace 8
-- #+\! : Move window to workspace 8
-- #=   : Change to workspace 9
-- #+=  : Move window to workspace 9

quitXMonad, rebuildXMonad, restartXMonad :: X ()
quitXMonad = io $ exitSuccess
rebuildXMonad = spawn $ "xmonad" ++ " " ++ "--recompile" ++ " && " ++ "xmonad" ++ " " ++ "--restart"
restartXMonad = spawn $ "xmonad" ++ " " ++ "--restart"

altMask = mod1Mask

keys' :: XConfig l -> Map (KeyMask, KeySym) (X ())
keys' c = mkKeymap c $
  -- Apps
  [ ("M4-<Return>", spawn terminal')
  , ("M4-d"       , spawn launcher')
  , ("M4-S-p"     , spawn screenshot')
  , ("M4-p"       , spawn screenshotSelection')
  , ("M4-y"       , spawn colorPicker')
  ]

  ++
  -- Misc
  [ ("M4-r"  , rebuildXMonad)
  , ("M4-S-r", restartXMonad)
  , ("M4-S-e", quitXMonad)
  ]

  ++
  -- Windows
  [ ("M4-h"  , windowGo   L False)
  , ("M4-l"  , windowGo   R False)
  , ("M4-k"  , windowGo   U False)
  , ("M4-j"  , windowGo   D False)
  , ("M4-S-h", windowSwap L False)
  , ("M4-S-l", windowSwap R False)
  , ("M4-S-k", windowSwap U False)
  , ("M4-S-j", windowSwap D False)
  , ("M4-C-h", sendMessage $ pullGroup L)
  , ("M4-C-l", sendMessage $ pullGroup R)
  , ("M4-C-k", sendMessage $ pullGroup U)
  , ("M4-C-j", sendMessage $ pullGroup D)
  , ("M4-s"  , withFocused toggleFloat)
  , ("M4-,"  , onGroup focusUp')
  , ("M4-."  , onGroup focusDown')
  , ("M4-'"  , windows focusUp)
  , ("M4-;"  , windows focusDown)
  , ("M4-S-'", windows swapUp)
  , ("M4-S-;", windows swapDown)
  , ("M4-u"  , withFocused (sendMessage . UnMerge))
  , ("M4-S-u", withFocused (sendMessage . UnMergeAll))
  , ("M4-m"  , withFocused (sendMessage . MergeAll))
  , ("M4-<Space>"  , sendMessage NextLayout)
  , ("M4-C-<Space>", toSubl      NextLayout)
  , ("M4-f"        , sendMessage $ T.Toggle FULL)
  , ("M4-S-q"      , kill)
  ]

  ++
  -- Audio controls
  [ ("<XF86_AudioMute>"      , spawn "amixer -q set Master toggle")
  , ("<XF86AudioLowerVolume>", spawn "amixer -q set Master 5%-")
  , ("<XF86AudioRaiseVolume>", spawn "amixer -q set Master 5%+")
  ]

  ++
  -- Resizing
  [ ("M4-M1-l", sendMessage $ ExpandTowards R)
  , ("M4-C-l" , sendMessage $ ShrinkFrom R)
  , ("M4-M1-h", sendMessage $ ExpandTowards L)
  , ("M4-C-h" , sendMessage $ ShrinkFrom L)
  , ("M4-M1-j", sendMessage $ ExpandTowards D)
  , ("M4-C-j" , sendMessage $ ShrinkFrom D)
  , ("M4-M1-k", sendMessage $ ExpandTowards U)
  , ("M4-C-k" , sendMessage $ ShrinkFrom U)
  ]

  ++
  -- Gaps
  [ ("M4-<U>"  , sendMessage $ IncGap 5 D)
  , ("M4-<D>"  , sendMessage $ IncGap 5 U)
  , ("M4-<R>"  , sendMessage $ IncGap 5 L)
  , ("M4-<L>"  , sendMessage $ IncGap 5 R)
  , ("M4-S-<U>", sendMessage $ DecGap 5 U)
  , ("M4-S-<D>", sendMessage $ DecGap 5 D)
  , ("M4-S-<R>", sendMessage $ DecGap 5 R)
  , ("M4-S-<L>", sendMessage $ DecGap 5 L)

  ]

  ++ [ ("M4-" ++ m ++ k, windows $ f i)
       | (i, k) <- zip workspaces' workspaceKeys
       , (m, f) <- [ ("", view)
                   , ("S-", shift)
                   , ("M1-", copy)
                   ]
    ]
