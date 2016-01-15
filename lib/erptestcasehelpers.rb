require "erptestcasehelpers/version"

module Erptestcasehelpers
  def self.using_rake?
    Dir.pwd =~ /erp-testes$/ ? true : false
  end

  def self.test_require file
    if using_rake?
      require "./#{file}"
    else
      require "../../#{file}"
    end
  end

  def self.require_libs folder
    if using_rake?
      test_require "./#{folder}/lib/imports"
    else
      test_require "./lib/imports"
    end
  end
end
