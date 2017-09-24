require 'digest/md5'

jeff = 'abd7f453bd7c4bfee0824cf1546b6cd8'
f = './jeff.jpg'

digest = Digest::MD5.hexdigest(File.read(f))

if jeff == digest
  puts 'Success, Jeff is validated'
else
  warn %(Jeff: WARNING: could not validate Jeff.)
end
