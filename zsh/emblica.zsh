# Office lights
alias office-movie-on='curl -X PUT 10.50.0.15:3001/api/modes -H "content-type: application/json" -d "{\"mode\":\"MOVIE\", \"modeMeta\": {\"movieWorkLevel\": 10}}"'
alias office-movie-off='curl -X PUT 10.50.0.15:3001/api/modes -H "content-type: application/json" -d "{\"mode\":\"NORMAL\"}"'
alias office-lights-on='curl -X PUT  http://10.50.0.15:3001/api/global/ --header "Content-Type: application/json" -d "{\"level\": 100, \"fade\": 70}"'
officelights() {
    curl -X PUT  http://10.50.0.15:3001/api/global/ --header "Content-Type: application/json" -d "{\"level\": $1, \"fade\": 70}"
}

