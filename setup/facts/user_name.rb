require 'facter'

Facter.add(:user_name) do
  setcode do
    ENV['USER_NAME']
  end
end
