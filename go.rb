#!/usr/bin/env ruby

require 'redd'
require 'oj'
require 'inifile'

MAX_LENGTH = 45

def enshorten str
  if str.size > MAX_LENGTH
    str = "#{str[0..(MAX_LENGTH - 3)]}..."
  end
  return str
end

config = IniFile.load(File.expand_path('~/.config/reddit/reddit.ini')).to_h
r = Redd.it(:script,
            config['app']['id'],
            config['app']['secret'],
            config['user']['username'],
            config['user']['password'] )
r.authorize!

r.get_hot.each_with_index do |p,i|
  puts ["${color magenta}#{i+1}:",
        "${color white} '#{enshorten(p.title)}'",
        "${color cyan}(/r/#{p.subreddit})"
       ].join(' ')
end
