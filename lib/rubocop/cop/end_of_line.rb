# encoding: utf-8

module Rubocop
  module Cop
    class EndOfLine < Cop
      ERROR_MESSAGE = 'Carriage return character detected.'

      def inspect(file, source, tokens, sexp)
        source.each_with_index do |line, index|
          if line =~ /\r$/
            add_offence(:convention, index + 1, ERROR_MESSAGE)
          end
        end
      end
    end
  end
end
