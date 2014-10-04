#!/usr/bin/env ruby

require 'fileutils'

subdir = 'symlinks/'

directory = File.expand_path(File.dirname(__FILE__) + '/' + subdir)

Dir.foreach(directory) do |item|
	next if item == '.' or item == '..'
	begin
		File.symlink(File.expand_path(subdir + item), File.expand_path('~/' + item))
	rescue Errno::EEXIST
		puts 'rescue'
		FileUtils.mv File.expand_path('~/' + item), File.expand_path('~/' + item + '.backup')
		File.symlink(File.expand_path(subdir + item), File.expand_path('~/' + item))
	end
end
