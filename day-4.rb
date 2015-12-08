require 'digest'

i = 0
starting_with = '00000' # for the first part
# starting_with = '000000' # for the second part

loop do
  hash = Digest::MD5.hexdigest "ckczppom#{i}"

  if hash.start_with? starting_with
    puts "Hash matches with #{i}! (#{hash})" # 117946, 3938038
    break
  else
    puts "Hash does not match with #{i}. (#{hash})"
    i += 1
  end
end
