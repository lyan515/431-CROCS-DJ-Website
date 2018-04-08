module GigRequestsHelper
    def emailCheck (emailStr)
        /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i.match(emailStr)
    end
end
