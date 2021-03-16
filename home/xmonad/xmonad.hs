import System.IO
import System.Exit

import XMonad ( layoutHook
              , manageHook
              , keys
              , focusedBorderColor
              , normalBorderColor
              , borderWidth
              , focusFollowsMouse
              , workspaces
              , xmonad )
import XMonad.Layout.Tabbed ( Theme ( fontName
                                    , inactiveBorderColor
                                    , activeBorderColor
                                    , inactiveTextColor
                                    , activeTextColor
                                    , inactiveColor
                                    , activeColor )
                            , def )

import XMonad.Hooks.EwmhDesktops ( ewmh )

import XMonad.Util.Run ( spawnPipe )

import L3af.Config ( followMouse'
                   , borderWidth'
                   , borderColor'
                   , borderColorFocus'
                   , workspaces')
import L3af.Bind.Keyboard ( keys' )
import L3af.Hook.LayoutHook ( layout' )
import L3af.Hook.ManageHook ( manage' )

main = do
  xmproc <- spawnPipe ("pkill polybar; polybar -c .config/polybar/config.ini bar")

  xmonad $ ewmh
         $ def
         { workspaces         = workspaces'
         , focusFollowsMouse  = followMouse'
         , borderWidth        = borderWidth'
         , normalBorderColor  = borderColor'
         , focusedBorderColor = borderColorFocus'
         , keys               = keys'
         , layoutHook         = layout'
         , manageHook         = manage'
         } 
