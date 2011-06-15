task :default do
	Dir["**/*.*"].each do |f|
		if (f =~ /~$|swap$|tmp$/) then
			puts f
			File.delete(f)
		end
	end
end
