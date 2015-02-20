class Chisel
  attr_reader :text, :paragraph, :header

def initialize
  @text= text
  @paraagraph = paragraph
  @header = header
end

def parse(text)
  lines = split_text(text)
  new_text =
  lines.map do |line|
    if line.include? "#"
        @header = parse_header(line)
      else
        @paragraph = parse_paragraph(line)
      end
    end
end

def split_text(text)
@text = text.split("\n\n")
end

def parse_header(text)
  hash_number = text.chars.count do |char|
       char == "#"
       end
    text.delete!("#").sub!("", "")
    beginning = "<h#{hash_number}>"
    ending = "</h#{hash_number}>"
    output_line(beginning, text, ending)
end

def output_line(beginning, text, ending)
    "#{beginning}#{text}#{ending}"
  end

def parse_paragraph(text)
beginning = "<p>"
ending = "<p>"
output_line(beginning, text, ending)
end

end

chisel = Chisel.new
puts chisel.parse('# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."')
