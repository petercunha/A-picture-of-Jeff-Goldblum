require 'digest/sha2'

jeff = '63a9e0dfe75cea22554b04fc18055209719cb03860ee93ff444a47c7295ab072c4d43b7e36e4151d70d7f0f26cc2328947d38e335b206a4a825eedc872f384e0'
f = './jeff.jpg'
digest = Digest::SHA2.new(512).hexdigest(File.read(f))

if jeff == digest
  puts 'Success, Jeff is validated'
else
  warn %(Jeff: WARNING: could not validate Jeff.)
end
