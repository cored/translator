#!/usr/bin/env ruby

require 'rubygems'
require 'open-uri'
require 'uri'
require 'hpricot'

module Translator
  class Babel

    def initialize(text)
      @text = URI.escape(text, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
    end

    def translate(from, to) 
      url = "#{Translator::Const::URL_STRING}#{from}#{URI.escape("|")}#{to}#{Translator::Const::TEXT_VAR}#{@text}"
      hp = Hpricot(open(url)) 
      (hp/"div#result_box").inner_text
    end

  end
end

