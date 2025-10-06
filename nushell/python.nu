export-env {
  $env.PYENV_ROOT = "~/.pyenv" | path expand
  if (( $"($env.PYENV_ROOT)/bin" | path type ) == "dir") {
    $env.PATH = $env.PATH | prepend $"($env.PYENV_ROOT)/bin" }
  $env.PATH = $env.PATH | prepend $"(pyenv root)/shims"
}
