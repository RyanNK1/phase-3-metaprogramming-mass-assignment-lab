class Person
# Target items
# :name, :birthday, :hair_color, :eye_color, :height,
# :weight, :handed, :complexion, :t_shirt_size,
# :wrist_size, :glove_size, :pant_length, :pant_width
  def initialize(hash)
    hash.each do |item, value|
      self.class.attr_accessor(item)
      self.send("#{item}=", value)
    end
  end
end
