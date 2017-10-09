require 'digest/sha2'

f = './jeff.jpg'
digest = Digest::SHA2.new(512).hexdigest(File.read(f))

if jeff == digest
  puts 'Success, Jeff is validated'
else
  warn %(Jeff: WARNING: could not validate Jeff.)
end
