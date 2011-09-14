require 'lib/g_var'

class CapController < ApplicationController
    def show
        render :text => $AA
    end
end
