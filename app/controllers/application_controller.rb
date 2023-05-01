class ApplicationController < ActionController::Base
    def root
        render html: "this is root!"
    end
end
