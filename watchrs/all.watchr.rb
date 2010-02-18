require File.expand_path('../../config/boot', __FILE__)

puts 'Watchring: ' + Dir.pwd
watch('(./?)+') do |file| 
  file = file.to_s
  puts "[+] #{file}".green
end
