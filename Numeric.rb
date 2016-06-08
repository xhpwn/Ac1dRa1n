class Numeric

def self.generate(outlength)

    output = ""
    outlength.times do
    output.concat((0 + rand(9)).to_s)
    end
    return output

end

end
