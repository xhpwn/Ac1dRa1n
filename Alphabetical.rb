class Alphabetical
    def self.generate(outlength)
        alphahash = { 'A' => 39, 'B' => 40, 'C' => 41, 'D' => 42, 'E' => 43,
                      'F' => 44, 'G' => 45, 'H' => 46, 'I' => 47, 'J' => 48,
                      'K' => 49, 'L' => 50, 'M' => 51, 'N' => 52, 'O' => 53,
                      'P' => 54, 'Q' => 55, 'R' => 56, 'S' => 57, 'T' => 58,
                      'U' => 59, 'V' => 60, 'W' => 61, 'X' => 62, 'Y' => 63,
                      'Z' => 64, 'a' => 65, 'b' => 66, 'c' => 67, 'd' => 68,
                      'e' => 69, 'f' => 70, 'g' => 71, 'h' => 72, 'i' => 73,
                      'j' => 74, 'k' => 75, 'l' => 76, 'm' => 77, 'n' => 78,
                      'o' => 79, 'p' => 80, 'q' => 81, 'r' => 82, 's' => 83,
                      't' => 84, 'u' => 85, 'v' => 86, 'w' => 87, 'x' => 88,
                      'y' => 89, 'z' => 90 }
        output = ""
        outlength.times do
            randomvalue = rand(39..90)
            alphahash.each do |key, value|
                if randomvalue == alphahash[key]
                    output += key
                end
            end
        end
        return output
    end
end
