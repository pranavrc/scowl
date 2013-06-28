#!/usr/bin/env ruby

require 'open-uri'
require 'sinatra'
require 'meme_captain'

get '/' do
	send_file File.join('stock/root.jpg')
end

get '/*' do
	respImg = memeify(params[:splat][0])
	imgName = random_string + '.jpg'
	respImg.write('images/' + imgName)
	send_file File.join('images/', imgName)
end

def memeify(text)
	open('stock/' + rand(49).to_s + '.png', 'rb') do |f|
		memeImage = MemeCaptain.meme_top_bottom(f, '', text)
	    memeImage
	end
end

def random_string(length = 10)
	chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ0123456789'
	randomString = ''
	length.times { randomString << chars[rand(chars.size)] }
	randomString
end
