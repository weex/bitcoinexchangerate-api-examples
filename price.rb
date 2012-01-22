#!/usr/bin/env ruby

#install nokogiri using gem install nokogiri
require 'rubygems'
require 'nokogiri'
require 'open-uri'
price_page = Nokogiri::HTML open('http://www.bitcoinexchangerate.org/price')
price =  price_page.title.strip.to_f
puts price
