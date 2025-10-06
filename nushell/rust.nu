export-env {
  $env.PATH ++= [
    $"($env.HOME)/.cargo/bin"
    $"($env.HOME)/.rust/rust-analyzer"
  ]
}
