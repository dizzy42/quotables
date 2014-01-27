require 'terminal-notifier'

File.open("quotes.txt") do |file|
  text = file.read
  text.each_line.sort_by { rand }.each do |quote|
    `terminal-notifier -message "#{quote}" -group REHEARTERS -title Heartables`
    sleep 100
    `terminal-notifier -remove REHEARTERS`
  end
end
