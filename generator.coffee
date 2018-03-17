upperAsciiRange = [65..90]
lowerAsciiRange = [97..122]
###
[U] = uppercase
[L] = lowerase
Any Other Character: That actual character
ex: format = "U.[U].[U]" might generate "U.S.A"
###
format = "[U][L]U"

genRandom = (range) ->
	min = range[0]
	max = range[range.length - 1]
	Math.floor(Math.random() * (max - min)) + min

genUpper = () ->
	String.fromCharCode genRandom(upperAsciiRange)

genLower = () ->
	String.fromCharCode genRandom(lowerAsciiRange)

format = format.replace "[U]", genUpper()
	.replace "[L]", genLower()

console.log format
