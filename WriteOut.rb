class WriteOut 

    def self.writeout(type, key)

    if File::exists?("genpws.txt")

	# Pulls up file to write to
        rootFile = File.new("genpws.txt", "a")
	rootFile << "\n\n"
	rootFile << type
	rootFile << " => "
	rootFile << key
	time = Time.new.to_a
	rootFile << "\t | Generated on => "
	rootFile << Time.utc(*time)
	puts("\nGenerated key written to file genpws.txt")
	sleep(0.5)
        rootFile.close

    else

        # Creates new genpws.txt file to write output to
        File.open("genpws.txt", "w") do |f|
	f.write("History of keys generated by Ac1dRa1n - \n\n")
	f.write(type)
	f.write(" => ")
	f.write(key)
	time = Time.new.to_a
	f.write("\t | Generated on => ")
	f.write(Time.utc(*time))
	puts("\nGenerated key written to file genpws.txt")
	sleep(0.5)
        end
    end

    end

end
