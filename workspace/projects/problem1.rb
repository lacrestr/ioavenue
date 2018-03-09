def add_two (number)
    unless number.respond_to? :+
        raise "Invalid argument"
    end
    number +2
end

