#!/usr/bin/ruby
class Rubytrickz

  attr_accessor :count  

  count = 1
  puts "My PID is #{Process.pid}"
  puts DATA.read
  puts

  def initialize
    count = 1
  end

  @here_doc = <<-MYDOC
    This is here doc, You can put any text/paragraph
  MYDOC

  puts "Here Doc : #@here_doc"
  
  trap(:INT) {
    puts "This is Interrupt handler, It will execute on Ctrl+C"
    exit if (count += 1) > 3
  }

  at_exit {
    puts "This is Exit hook, It will run on exit."
  }

  loop do
    # Infinite loop
  end

  # Merge two hashes
  default_opts = { :test => 1, :original => 'thing' }
  overrides = { test: '42', :some_new_thing => 'cats' }
  default_opts.merge(overrides)
  #{
  #              :test => "42",
  #          :original => "thing",
  #    :some_new_thing => "cats"
  #}

end

__END__
You can put any text here, It will not interpreted by Ruby
