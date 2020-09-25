module github.com/chris124567/spotrip

go 1.14

require (
	github.com/librespot-org/librespot-golang v0.0.0-20200423180623-b19a2f10c856
	github.com/wtolson/go-taglib v0.0.0-20180718000046-586eb63c2628
)

replace github.com/librespot-org/librespot-golang => ./internal/pkg/librespot-golang
