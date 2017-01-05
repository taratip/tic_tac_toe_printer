def print_grid(board)
    board.each_with_index do |row, row_index|
      row.each_with_index do |column, column_index|
        # print row
        if column.nil?
          print "   "
        else
          print " #{column} "
        end

        if column_index != row.size - 1
          print "|"
        end
      end
      puts ""
      if row_index != board.size - 1
        11.times do
          print "-"
        end
      end
      puts ""
    end
end

board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]
print_grid(board_a)

board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]
print_grid(board_b)
