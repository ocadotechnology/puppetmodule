Facter.add('puppet_agent_major_version') do
  confine :kernel => 'Linux'
  setcode do

    puppet_version = Facter.value("puppetversion")

    if puppet_version != nil
      major_version = puppet_version.match(/^([0-9]+)\.[0-9]+\.[0-9]+$/)
      major_version[1] if major_version
    else
      nil
    end

  end
end
