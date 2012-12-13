#!/usr/bin/env ruby

directory = File.expand_path(File.dirname(__FILE__))

Dir.foreach(directory) do |item|
	next if item == '.' or item == '..' or item == 'dotfiles.rb' or item == 'README.md' or item == '.git'
	File.symlink(File.expand_path(item), File.expand_path('~/' + item))
end
