$:.unshift File.join(File.dirname(__FILE__),'..','lib')

require 'minitest/autorun'
require 'global_convert'

GLOBAL_CONTRACT_PROJECTION_PATH = File.join(File.dirname(__FILE__),'data','projections.yml')

GlobalConvert.projection_file_path = GLOBAL_CONTRACT_PROJECTION_PATH
