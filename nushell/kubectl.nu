export def k --wrapped [...arguments] {
  if (($arguments | is-empty) or "-o" in $arguments or "--output" in $arguments) {
    kubectl ...$arguments
  }
  kubectl ...$arguments -o json | from json
}
