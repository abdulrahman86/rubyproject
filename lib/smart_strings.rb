single_quoted_string = 'hi \\ \' there'

puts single_quoted_string

title = 'hello'

double_quoted_string = "you can embed ruby expressions in here #{2+ 2} or #{title}"

puts double_quoted_string

arbitrary_quoted_string = %q$no escapes needed for \ or ' or ".$

puts arbitrary_quoted_string

upper_quoted_arbitrary_quoted_string = %Q[you can embed ruby expressions in it #{2} or #{title}]

puts upper_quoted_arbitrary_quoted_string

document = <<END
multi line string

this is the one

can embed ruby expressions #{title}

END

puts document

