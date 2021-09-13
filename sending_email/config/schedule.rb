every 1.day, at: '4:30 am' do
  command "bin/delayed_job -n2 start"
end
