rec {
  foreground = "#575279";
  foregroundAlt = "#232136";
  background = "#F5E9DA";
  backgroundAlt = "#FAF4ED";

  rps = {
    text    = "#575279";
    subtle  = "#6e6a86";
    ignored = "#9893a5";
    base    = "#F5E9DA";
    surface = "#FAF4ED";
    overlay = "#EDD7BD";
    love    = "#B4637A";
    sun     = "#EA9D34";
    rose    = "#D7827E";
    pine    = "#286983";
    foam    = "#56949F";
    iris    = "#907AA9";
  };

  normal = {
    black   = "#232136";
    blue    = "#286983";
    cyan    = "#56959F";
    green   = "#569F84";
    magenta = "#907AA9";
    red     = "#B4637A";
    white   = "#F2E9DE";
    yellow  = "#EA9D34";
  };
  bright = {
    black   = "#575279";
    blue    = "#CECAED";
    cyan    = "#56959F";
    green   = "#569F84";
    magenta = "#907AA9";
    red     = "#D7827E";
    white   = "#FAF4ED";
    yellow  = "#F6C177";
  };

  colors16 = map (builtins.replaceStrings [ "#" ] [ "" ]) [
    background
    normal.red
    normal.green
    normal.yellow
    normal.blue
    normal.magenta
    normal.cyan
    foreground
    backgroundAlt
    bright.red
    bright.green
    bright.yellow
    bright.blue
    bright.magenta
    bright.cyan
    foregroundAlt
  ];
}
