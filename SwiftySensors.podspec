Pod::Spec.new do |spec|

    spec.name                   = 'SwiftySensors'
    spec.version                = '1.1.0'
    spec.summary                = 'BLE Fitness Sensors Communication Utilities for iOS, macOS and tvOS'

    spec.homepage               = 'https://github.com/kinetic-fit/sensors-swift'
    spec.license                = { :type => 'MIT', :file => 'LICENSE' }    
    spec.author                 = { 'Kinetic' => 'admin@kinetic.fit' }
    
    spec.ios.deployment_target  = '12.0'
    spec.osx.deployment_target  = '10.13'
    spec.tvos.deployment_target = '11.2'

    spec.source                 = { :git => 'https://github.com/kinetic-fit/sensors-swift.git',
                                    :tag => spec.version.to_s,
                                    :submodules => true }
    spec.source_files           = 'Sources/**/*.swift'
    spec.swift_version          = '5.0'

    spec.dependency             'Signals'


    spec.subspec 'Serializers' do |serial|
        serial.source_files     = 'Sources/*Serializer.swift', 'Sources/Operators.swift'
    end
    
end
