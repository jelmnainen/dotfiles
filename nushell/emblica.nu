# Possible options:
# {
#   mode: "MOVIE"/"NORMAL"
#   level: 0-100,
#   fade: 0-100?
#   modeMeta: {
#     movieWorkLevel: 0-100, what does this do?
#   }
# }

export alias movie-on = office-lights-movie
export alias movie-off = office-lights-normal

export def office-lights-normal [] {
  office-lights "NORMAL" "100"
}

export def office-lights-movie [] {
  office-lights "MOVIE"  "0"
}

export def office-lights [mode level] {
  http put --content-type application/json http://10.50.0.15 {mode: mode, level: level fade: 70}
}
