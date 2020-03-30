#puts Encoding.list

def transcode(text) #ISO-8859-1 to UTF-8
    return String.new(text, encoding:'UTF-8')
end
    
def serial_average1(string_values)
  values = string_values.split('-')
  average = ((values[1].to_f + values[2].to_f) / 2).round(2)
  format_average = format("%.2f", average)
  new_string = "#{values[0]}-#{format_average}"
end

def serial_average2(str)
    arr=str.split("-")
    avg = (((arr[1].to_f) + (arr[2].to_f))/2).round(2)
	return "#{arr[0]}" + "-" + "#{avg}"
end

puts serial_average1('001-12.43-56.78')
puts serial_average2('001-12.43-56.78')