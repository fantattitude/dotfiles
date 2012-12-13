#!/usr/bin/env ruby

require 'fileutils'

directory = File.expand_path(File.dirname(__FILE__))

Dir.foreach(directory) do |item|
	next if item == '.' or item == '..' or item == 'dotfiles.rb' or item == 'README.md' or item == '.git'
	begin
		File.symlink(File.expand_path(item), File.expand_path('~/' + item))
	rescue Errno::EEXIST
		FileUtils.mv File.expand_path('~/' + item), File.expand_path('~/' + item + '.backup')
		File.symlink(File.expand_path(item), File.expand_path('~/' + item))
	end
end
