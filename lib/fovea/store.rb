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
