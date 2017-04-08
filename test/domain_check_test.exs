defmodule DomainCheckTest do
  use ExUnit.Case
#  doctest DomainCheck

  test "domain check returns false" do
    assert DnsUtils.domain_exists?("www.googleasdfasdfasdafs.nl") == false
  end
#
  test "domain check returns true" do
    assert DnsUtils.domain_exists?("google.nl")
  end
end
