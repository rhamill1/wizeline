def string_compression(input_string)
  compressed_string = ''
  letter_counter = 0

  input_string.split("").each_with_index do |letter, index|

    if letter != input_string[index + 1]  && letter_counter == 0
      compressed_string += letter
    elsif letter != input_string[index + 1]  && letter_counter > 0
      letter_counter += 1
      compressed_string += letter += letter_counter.to_s
      letter_counter = 0
    else
      letter_counter += 1
    end

  end

  return compressed_string

end
