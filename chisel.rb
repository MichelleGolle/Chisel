class Chisel
  attr_reader :text

def initialize
  @text= '# My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."'

end

def split_text(text)
@text = text.split("\n\n")
end


end
