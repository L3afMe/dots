{-# LANGUAGE FlexibleContexts #-}

module L3af.Hook.LayoutHook ( layout'
                            ) where

import XMonad ( Full ( Full ) )
import XMonad.Layout.BoringWindows ( boringWindows
                                   , boringAuto )
import XMonad.Layout.BinarySpacePartition ( emptyBSP )
import XMonad.Layout.Gaps ( Gaps ()
                          , gaps )
import XMonad.Layout.Grid ( Grid ( Grid ) )
import XMonad.Layout.Hidden ( hiddenWindows )
import XMonad.Layout.LayoutCombinators ( ( ||| ) )
import XMonad.Layout.LayoutModifier ( ModifiedLayout () ) 
import XMonad.Layout.Magnifier ( magnifierOff )
import XMonad.Layout.MultiToggle ( single
                                 , mkToggle )
import XMonad.Layout.MultiToggle.Instances ( StdTransformers ( FULL ) )
import XMonad.Layout.NoBorders ( noBorders
                               , smartBorders )
import XMonad.Layout.Renamed ( Rename ( Replace
                                      , CutWordsLeft )
                             , renamed )
import XMonad.Layout.ResizableTile ( ResizableTall ( ResizableTall ) )
import XMonad.Layout.Simplest ( Simplest ( Simplest ) )
import XMonad.Layout.Spacing ( Spacing ()
                             , Border ( Border )
                             , spacingRaw )
import XMonad.Layout.SubLayouts ( subLayout )
import XMonad.Layout.Tabbed ( Theme ( fontName
                                    , decoWidth
                                    , decoHeight
                                    , activeColor
                                    , urgentColor
                                    , inactiveColor
                                    , activeTextColor
                                    , urgentTextColor
                                    , inactiveTextColor
                                    , activeBorderColor
                                    , activeBorderWidth
                                    , urgentBorderColor
                                    , urgentBorderWidth
                                    , inactiveBorderColor
                                    , inactiveBorderWidth )
                            , def
                            , addTabs
                            , shrinkText )
import XMonad.Layout.WindowNavigation ( windowNavigation )

import XMonad.Hooks.ManageDocks ( Direction2D ( U
                                              , D
                                              , R
                                              , L )
                                , avoidStruts )

import L3af.Config ( gaps'
                   , tabHeight'
                   , tabFont'
                   , tabTextColor'
                   , tabColor'
                   , tabActiveTextColor'
                   , tabActiveColor'
                   , tabUrgentTextColor'
                   , tabUrgentColor' )

layoutGaps :: l a -> ModifiedLayout Gaps l a
layoutGaps = gaps [ ( U, 25 )
                  , ( D, 10 )
                  , ( L, 10 )
                  , ( R, 10 )
                  ]

layoutSpacing :: l a -> ModifiedLayout Spacing l a
layoutSpacing = spacingRaw               False 
              ( Border gaps' 0 gaps' 0 ) True
              ( Border 0 gaps' 0 gaps' ) True

tabTheme = def
    { decoHeight          = tabHeight'
    , fontName            = tabFont'
    , decoWidth           = maxBound
    , activeColor         = tabActiveColor'
    , activeTextColor     = tabActiveTextColor'
    , activeBorderColor   = tabActiveColor'
    , inactiveColor       = tabColor'
    , inactiveTextColor   = tabTextColor'
    , inactiveBorderColor = tabColor'
    , urgentColor         = tabUrgentColor'
    , urgentTextColor     = tabUrgentTextColor'
    , urgentBorderColor   = tabUrgentColor'
    , activeBorderWidth   = 0
    , urgentBorderWidth   = 0
    , inactiveBorderWidth = 0
    }

rn :: [Char] -> l a -> ModifiedLayout Rename l a
rn a = renamed [Replace a]

bspl = rn "BSP"
       $ layoutGaps
       $ magnifierOff
       $ emptyBSP
tall = rn "Tall"
       $ layoutGaps
       $ magnifierOff
       $ ResizableTall 1 (1/100) (1/2) []
full = rn "Full"
       $ Full

cutWords :: Int -> l a -> ModifiedLayout Rename l a
cutWords a = renamed [CutWordsLeft a]

addTabbed f = addTabs shrinkText tabTheme $ subLayout [] ( Simplest ) $ f

layout' = addTabbed
        $ layoutSpacing
        $ layoutGaps
        $ windowNavigation
        $ mkToggle ( single FULL )
        $ boringWindows
        $   bspl
        ||| tall
        ||| full
