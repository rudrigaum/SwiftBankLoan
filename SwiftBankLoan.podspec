Pod::Spec.new do |s|
  s.name             = 'SwiftBankLoan'
  s.version          = '1.0.1'
  s.summary          = 'Módulo utilizado no aplicativo SwiftBank para funcionalidade de Empréstimo'

  s.description      = <<-DESC
  Módulo Swift para gerenciamento de empréstimos bancários, utilizado no aplicativo SwiftBank.
  Oferece funcionalidades abrangentes para simulação, cálculo e gerenciamento de empréstimos.
                       DESC

  s.homepage         = 'https://github.com/rudrigaum/SwiftBankLoan'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rudrigaum' => 'rodrigocerqueirareis@gmail.com' }
  s.source           = { :git => 'https://github.com/rudrigaum/SwiftBankLoan.git', :tag => s.version.to_s }
  s.swift_version    = '5.0'
  s.ios.deployment_target = '15.0'

  s.source_files = 'Classes/**/*'
end
