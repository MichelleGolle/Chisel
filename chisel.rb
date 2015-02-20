class Chisel
  attr_reader :text

def initialize
  @text= text#'# My Life in Desserts

## Chapter 1: The Beginning

#"You just *have* to try the cheesecake," he said. "Ever since it appeared in
#**Food & Wine** this place has been packed every night."'
end

def parse(text)
  text = split_text(text)
  text = to_html(text)
end

def split_text(text)
@text = text.split("\n\n")
end

def hash_line?(text)
if text.include?("#")
  true
else
  false
end
end

def two_hash_line?(text)
if text.include?("##")
  true
else
  false
end
end

def to_html(text)
if text.include?("##") == true
  text.gsub(text,"<h2>Hello</h2>")
elsif text.include?("#") == true
  text.to_s.gsub(text, "<h1>Hello</h1>")
else
  text.gsub(text, "<p>Hello</p>")
end
end

end
