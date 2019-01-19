Facter.add(:ps_role) do
  setcode do
    hostname = Facter.value(:hostname)  
    ps_role = hostname.downcase.match(/app|prcs/).to_s
    if hostname.downcase.match(/web/)
      ps_role = "app"
    end
    if hostname.downcase.match(/public/)
      ps_role = "dmz"
    end
    ps_role
  end
end