# frozen_string_literal: true

require_relative 'lib/linked_list'
require_relative 'lib/node'

my_list = LinkedList.new
my_list.prepend(123)
my_list.prepend(124)
my_list.prepend(125)
my_list.prepend(126)
my_list.prepend(127)
my_list.prepend(128)
p my_list.size
puts my_list.to_s
