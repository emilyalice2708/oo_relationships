
class User
    def initialize(name, bio, age, password)
        @name = name
        @bio = bio
        @age = age
        @password = password
        @authenticator = Authenticater.new(@password)
    end

    def profile
        "#{@name}, born in #{birth_year}: #{@bio}"
    end

    def authenticate(candidate_password)
        @authenticator.authenticate(candidate_password)
    end
    private

    def birth_year
        Time.new.year - @age
    end
end

class Authenticater
    def initialize(password)
        @password = password
    end

    def authenticate(candidate_password)
        return true if candidate_password == @password
    end
end
