# -*- coding: utf-8 -*-
class Encoding
  # Encoding::Codepage adds two methods to the Encoding class to help you look
  # Encodings by their Microsoft® Codae Page Identifier. It doesn't add support
  # to Ruby for Encodings that are not already supported, just makes it easier
  # to find those encodings which are.
  #
  # At the moment, this list is available on the web at:
  # * http://msdn.microsoft.com/en-us/library/dd317756
  #
  module CodePage
    # Find an Encoding object from a Micrsoft® Code Page Identifier.
    #
    # A list of Code Page identifiers can be found at:
    # * http://msdn.microsoft.com/en-us/library/dd317756
    #
    # NOTE: This library doesn't add support for all Code Pages, it merely
    # allows you to look up existing encodings by their Code Page Identifier.
    #
    # @param Integer         The Code Page Identifier.
    # @return Encoding       The Encoding object.
    # @raise  ArgumentError  The Code Page you tried to find doesn't exist.
    #
    def codepage(id)
      Encoding.find("CP#{id}")
    end

    # Determine whether an Encoding exists with the given name.
    #
    # @param String            The name to search for.
    # @return [Encoding, nil]  The Encoding iff it exists.
    #
    def exist?(name)
      find(name)
    rescue ArgumentError => e
      nil
    end

    # Determine whether a Code Page exists with the given Code Page Identifier.
    #
    # @param Integer           The Code Page Identifier.
    # @return [Encoding, nil]  The Encoding iff it exists.
    #
    def codepage?(id)
      exist?("CP#{id}")
    end

    private

    def load_codepages!
      File.read(codepage_file).each_line{ |line|
        next if line.start_with?('#') || line =~ /\A\s*\z/

        number, original, comment = line.split("\t", 3)
        number = Integer(number, 10)

        if !codepage?(number) && exist?(original.upcase)
          Encoding.find(original.upcase).replicate "CP#{number}"
        end
      }
    end

    def codepage_file
      File.join(File.dirname(__FILE__), "codepages.tsv")
    end
  end

  extend CodePage
  load_codepages!
end
