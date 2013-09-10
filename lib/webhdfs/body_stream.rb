module WebHDFS

  class BodyStream
    def initialize(data, chunk_size)
      @size = chunk_size
      if data.respond_to? :read
        @file = data
      end
    end
    def read(foo)
      if @file
        @file.read(@size)
      end
    end
    def eof!
      @file.eof!
    end
    def eof?
      @file.eof?
    end
  end

end
