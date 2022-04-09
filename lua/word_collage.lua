-- hello world

-- get dimensions from user input (or I guess just x)
-- get list of words

-- for each word in list:
--   break each word down into a list
--   add spaces randomly in the list
--   if the list hits a certain length (let's say 15),
--     break the loop and print the list (spaced_word_list)

function MAIN()
  local row_length = tonumber(arg[1]);
  if type(row_length) ~= 'number'
  then
    print( 'please enter number, exiting script.')
    return
  else
    word_collage_main(row_length);
    return
  end
end

function word_collage_main(row_length)
  local words_list = get_words_list(row_length);
  print_words_list(row_length, words_list)
end

function get_words_list(row_length)
  -- TODO: get these words randomly from a dictionary
  return {'dogs', 'cats', 'run', 'nighttime', 'statistics', 'worm', 'unite'}
end

function _word_to_table(word)
  local t = {}
  for i=1, #word do
    t[i] = string.sub(word, i, i)
  end
  return t
end

function print_table(words_list)
  for i,v in ipairs(words_list) do
    print(i,v)
  end
end

function print_words_list(row_length, words_list)
  for _,word in ipairs(words_list) do
    local word_table = _word_to_table(word)
    -- print_table(word_table)
    while #word_table < row_length do
      local index = math.random(1,string.len(word))
      table.insert(word_table,index," ")
    end
    print(table.concat(word_table))
  end
end

MAIN();
