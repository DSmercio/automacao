Dir[File.join(File.dirname(__FILE__),"../pages/*_pages.rb")].each{|file| require file}


module Pages
    def user
        @user ||= User.new
    end

    def login
        @login ||= Login.new
    end
end
