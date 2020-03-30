hackerrank = {1 => 1, 2 => 4, 3 => 9, 4 => 16, 5 => 25}
puts hackerrank

hackerrank.store(543121, 100)
puts hackerrank

hackerrank.keep_if {|c, v| c.is_a?(Integer)}
puts hackerrank

hackerrank.delete_if {|c, v| v % 2 == 0}
puts hackerrank

