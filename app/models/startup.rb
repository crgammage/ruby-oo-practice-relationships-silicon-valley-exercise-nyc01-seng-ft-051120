require 'pry'
class Startup
    attr_reader :founder
    attr_accessor :name, :domain
    @@all = []
    def initialize(name, domain, founder)
        @name = name
        @founder = founder
        @domain = domain
        Startup.all << self
    end
    def pivot(name, domain)
        self.name = name
        self.domain = domain
    end
    def self.all
        @@all
    end
    def self.find_by_founder(founders_name)
        Startup.all.find do |company|
            company.founder == founders_name
        end
    end
    def self.domains
        Startup.all.map do |company|
            company.domain
        end
    end
end
binding.pry
