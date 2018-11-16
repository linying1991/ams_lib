require 'sketchup.rb'
require 'extensions.rb'
require 'langhandler.rb'

module AMS
  # @since 1.0.0
  module Lib

    NAME = 'AMS Library'.freeze

    MAJOR_VERSION = 3.freeze
    MINOR_VERSION = 6.freeze
    PATCH_VERSION = 0.freeze
    DEVEL_VERSION = 7.freeze

    VERSION_INT = (MAJOR_VERSION * 1000 + MINOR_VERSION * 100 + PATCH_VERSION * 10 + DEVEL_VERSION).to_i
    VERSION = sprintf("%d.%d.%d%c", MAJOR_VERSION, MINOR_VERSION, PATCH_VERSION, DEVEL_VERSION + 0x61).freeze

    RELEASE_DATE = 'November 15, 2018'.freeze


    # Create the extension.
    @extension = ::SketchupExtension.new(NAME, 'ams_Lib/main')

    # Attach some nice info.
    @extension.description = "A library of functions and utilities for interacting with SketchUp window and procedures. AMS Library is used by other extensions and does nothing on its own."
    @extension.version     = VERSION
    @extension.copyright   = '(C) 2013-2018 Anton Synytsia'
    @extension.creator     = 'Anton Synytsia'

    # Register and load the extension on start-up.
    ::Sketchup.register_extension(@extension, true)

    class << self

      # @!attribute [r] extension
      # Get AMS Library extension.
      # @return [SketchupExtension]
      attr_reader :extension

    end # class << self
  end # module Lib
end # module AMS
