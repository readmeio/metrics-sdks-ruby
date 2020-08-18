module Readme
  class HarCollection
    def initialize(filter, hash)
      @filter = filter
      @hash = hash
    end

    def to_h
      filtered_hash
    end

    def to_a
      filtered_hash.map { |name, value| {name: name, value: value} }
    end

    private

    def filtered_hash
      @filter.filter(@hash)
    end
  end
end
