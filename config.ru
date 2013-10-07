require 'bundler/setup'
require 'sinatra/base'
require 'yaml'

# The project root directory
$root = ::File.dirname(__FILE__)

class SinatraStaticServer < Sinatra::Base

  get(/.+/) do
    send_sinatra_file(request.path) {404}
  end

  not_found do
    yml = YAML.load(IO.read('_config.yml'))
    public_dir      = yml["destination"]    # compiled site directory
    puts "got public dir: #{public_dir}"
    send_file(File.join(File.dirname(__FILE__), public_dir, '404.html'), {:status => 404})
  end

  def send_sinatra_file(path, &missing_file_block)
    yml = YAML.load(IO.read('_config.yml'))
    public_dir      = yml["destination"]    # compiled site directory
    puts "got public dir: #{public_dir}"
    file_path = File.join(File.dirname(__FILE__), public_dir,  path)
    file_path = File.join(file_path, 'index.html') unless file_path =~ /\.[a-z]+$/i
    File.exist?(file_path) ? send_file(file_path) : missing_file_block.call
  end

end

run SinatraStaticServer
