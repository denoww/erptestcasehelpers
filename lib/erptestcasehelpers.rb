require "erptestcasehelpers/version"

module Erptestcasehelpers
  def self.using_rake?
    Dir.pwd =~ /erp-testes$/
  end

  def self.require file
    if using_rake?
      require "./#{file}"
    else
      require "../../#{file}"
    end
  end

  def self.require_libs folder
    if using_rake?
      require "./#{folder}/lib/imports"
    else
      require "./lib/imports"
    end
  end
end
