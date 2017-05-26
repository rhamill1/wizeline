def seconds_in_line(starting_position, line)

  tickets_needed = line[starting_position]
  moving_position = starting_position
  seconds_elapsed = 0

  while tickets_needed > 0 do

    seconds_elapsed += 1

    if line[0] == 1 && moving_position > 0
      line.shift

      moving_position -= 1

    elsif line[0] > 1 && moving_position > 0
      line[0] -= 1
      line.push(line.shift)

      moving_position -= 1

    elsif line[0] > 1 && moving_position == 0
      line[0] -= 1
      line.push(line.shift)

      moving_position = line.length - 1
      tickets_needed -= 1

    else
      return seconds_elapsed

    end

  end


end
