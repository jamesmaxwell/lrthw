formatter = "%s %s %s %s"

puts formatter %[1,2,3,4]
puts formatter %[ "one", "two", "three", "fore"]
puts formatter %[ true, false, false, true ]
puts formatter %[ formatter, formatter, formatter, formatter ]
puts formatter %[
	"I has this thing.",
	"That you could type up right.",
	"But is didn't sing.",
	"So I said goodnight."
	]
