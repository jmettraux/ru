
#
# Specifying rufus-ru
#
# Tue Mar 24 22:19:56 JST 2009
#


#
# bacon

$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib')))

require 'rubygems'
require 'fileutils'


$:.unshift(File.expand_path('~/tmp/bacon/lib')) # my own bacon for a while

require 'bacon'

puts

Bacon.summary_on_exit


#
# rufus/ru

require 'rufus/ru'

