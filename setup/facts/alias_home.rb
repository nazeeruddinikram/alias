require 'facter'

Facter.add(:alias_home) do
  setcode do
    ENV['ALIAS_HOME']
  end
end
