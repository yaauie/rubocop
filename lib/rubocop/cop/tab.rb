# encoding: utf-8

module Rubocop
  module Cop
    class Tab < Cop
      ERROR_MESSAGE = 'Tab detected.'

      def inspect(file, source, tokens, sexp)
        source.each_with_index do |line, index|
          if line =~ /^ *\t/
            add_offence(:convention, index + 1, ERROR_MESSAGE)
          end
        end
      end
    end
  end
end
