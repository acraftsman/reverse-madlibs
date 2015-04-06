def exit_with(msg)
  puts(msg)
  exit
end
dictionary = {
  noun: ['apple','food','water'],
  verb: ['hit','read'],
  adjective: ['beautiful','ugly']
}
exit_with("No input file!") if ARGV.empty?
exit_with("File doesn't exist") unless File.exists?(ARGV[0])

contents= File.open(ARGV[0],'r') do |f|
  f.read
end

contents.gsub!('NOUN').each do
  dictionary[:noun].sample
end
contents.gsub!('VERB').each do
  dictionary[:verb].sample
end
contents.gsub!('ADJECTIVE').each do
  dictionary[:adjective].sample
end

p contents
