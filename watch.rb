require 'aws/s3'
require 'pathname'
require 'grid/colour'

AWS::S3::Base.establish_connection!(
    :access_key_id     => 'AKIAJEKEUSTBHZC5JJKA',
    :secret_access_key => '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'
  )

class Store
  def initialize(options=nil)
    @namespace = options.delete(:namespace) if options
  end

  def [](key,version=nil)

  end

  def delete(key)

  end

  def key?(key)

  end

  def has_key?(key)
  end
   
  def store(key,value)
    AWS::S3::S3Object.store(key,value,@namespace)
  end
  alias :[]= :store
  

  def update_key(key,options)

  end

  def versions
  end

  def clear
  end
end

@store = Store.new(:namespace => 'stefanpenner')

watch('(./?)+') do |file| 
  file = file.to_s

  if @store[file] = open(file)
    puts "[+] #{file}".green
  else
    puts "[-] #{file}".red
  end
end
