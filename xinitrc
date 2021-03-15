setxkbmap -layout us -variant dvp -option caps:escape

xdg-mime default org.pwmt.zathura.desktop application/pdf

picom &

exec xmonad
