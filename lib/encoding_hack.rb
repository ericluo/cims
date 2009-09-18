class EncodingHack
  def initialize(app, encoding = ::Encoding.default_external)
    @app      = app
    @encoding = encoding
  end

  def call(env)
    req = Rack::Request.new(env)
    hash_force_encoding(req.params)
    @app.call(env)
  end

  protected
  def hash_force_encoding(hash)
    hash.each do |key, value|
      if value.instance_of?(Hash)
        hash_force_encoding(value)
      elsif value.respond_to?(:force_encoding)
        hash[key] = value.dup.force_encoding(@encoding)
      else
        value
      end
    end
  end
end
