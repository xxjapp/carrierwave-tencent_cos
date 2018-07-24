require 'carrierwave'

module CarrierWave
    module Storage
        class TencentCos < Abstract
            # Create and save a file instance to your engine.
            def store!(file)
                # File.create(file)
            end

            # Load and return a file instance from your engine.
            def retrieve!(identifier)
                # File.find(file)
            end

            # Subclass or duck-type CarrierWave::SanitizedFile ; responsible for storing the file to your engine.
            class File
                # Initialize as required.
                def initialize()
                end

                # Duck-type methods for CarrierWave::SanitizedFile.
                def content_type
                end

                def url
                end

                def read
                end

                def size
                end

                def delete
                end

                def exists?
                end
            end # File
        end # TencentCos
    end
end
