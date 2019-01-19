Facter.add(:redeploy) do
  setcode do
    'false'
  end
end

Facter.add(:pshome_redeploy) do
  setcode do
    'false'
  end
end

Facter.add(:oracleclient_redeploy) do
  setcode do
    'false'
  end
end

Facter.add(:jdk_redeploy) do
  setcode do
    'false'
  end
end

Facter.add(:weblogic_redeploy) do
  setcode do
    'false'
  end
end

Facter.add(:tuxedo_redeploy) do
  setcode do
    'false'
  end
end

Facter.add(:ohs_redeploy) do
  setcode do
    'false'
  end
end