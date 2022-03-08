class Person
  
  def initialize(attributes_hash=nil)
    if attributes_hash != nil
      attributes_hash.each do |key, value|
        self.class.attr_accessor(key)
        self.send("#{key}=", value)
      end
    end
  end
  
end