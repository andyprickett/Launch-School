require 'pry'

CORNER = '+'
ENDS = '|'
TOP_BOT = '-'
PAD = ' '
MAX_TEXT_WIDTH = 76

def build_box_line(first_last, pad, text, text_width)
  box_string = ''
  while box_string.size < text_width
    box_string << text
  end
  first_last + pad + box_string + pad + first_last
end

def build_text_lines(first_last, pad, text, text_width)
  text_lines = []
  text_string = text

  while text_string.size > 0
    if text_string.size < text_width
      spaces = ' ' * (text_width - text_string.size)
      text_filled = text_string.slice!(0..text_string.size - 1) + spaces
      text_lines << text_filled
    else
      text_lines << text_string.slice!(0..text_width - 1)
    end
  end
 
  text_lines.map do |text_line|
    build_box_line(first_last, pad, text_line, text_width)
  end
end

def print_in_box(text)
  boxed_text = []
  text_width = case text.size <=> MAX_TEXT_WIDTH
               when -1 then text.size
               when  1 then MAX_TEXT_WIDTH
               else MAX_TEXT_WIDTH
               end
  boxed_text << build_box_line(CORNER, TOP_BOT, TOP_BOT, text_width)
  boxed_text << build_box_line(ENDS, PAD, PAD, text_width)
  boxed_text << build_text_lines(ENDS, PAD, text, text_width)
  boxed_text << build_box_line(ENDS, PAD, PAD, text_width)
  boxed_text << build_box_line(CORNER, TOP_BOT, TOP_BOT, text_width)
  puts boxed_text
end

print_in_box('To boldly go where no one has gone before. ' +
             'To boldly go where no one has gone before. ' +
             'To boldly go where no one has gone before. ' +
             'To boldly go where no one has gone before.')
print_in_box('To boldly go where no one has gone before.')
print_in_box('To boldly go where no one has gone before. To boldly go where no one has...!')
print_in_box('')
