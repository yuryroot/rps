module Choice

  def self.by(name)
    class_name = name.to_s.downcase.strip.capitalize

    if const_defined?(class_name)
      const_get(class_name, false)
    else
      Unknown
    end
  end
end
