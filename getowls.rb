#!/usr/bin/env ruby

require 'open-uri'

for i in 0..49
	open('stock/' + i.to_s + '.png', 'wb') do |f|
		f << open('http://mebe.co/owl.jpeg?' + i.to_s).read
	end
end
