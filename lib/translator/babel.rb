#!/usr/bin/env ruby

require 'rubygems'
require 'open-uri'
require 'hpricot'

# Ruby API for the Google Translate site (http://translate.google.com)
#
module Translator
  class Babel

    def initialize(text)
      @text = URI.escape(text, Regexp.new("[^#{URI::PATTERN::UNRESERVED}]"))
    end

    # Translate text from a given language to another given language 
    #
    # ==== Parameters
    # from<String>::
    #   From which language do you want to make the translation
    # to<String>::
    #   Language to translate
    def translate(from, to) 
      url = "#{Translator::Constants::URL_STRING}#{from}#{URI.escape("|")}#{to}#{Translator::Constants::TEXT_VAR}#{@text}"
      hp = Hpricot(open(url,"User-Agent" => "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)")) 
      (hp/"div#result_box").inner_text
    end

  end
end

