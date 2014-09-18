# encoding: utf-8

module RuboCop
  module Cop
    module Style
      # This cop checks whether the block parameters of a single-line
      # method accepting a block match the names specified via configuration.
      #
      # For instance one can configure `reduce`(`inject`) to use |a, e| as
      # parameters.
      class SingleLineBlockParams < Cop
        def on_block(node)
          # we care only for single line blocks
          return unless Util.block_length(node) == 0

          method_node, args_node, _body_node = *node
          receiver, method_name, _method_args = *method_node

          # discard other scenarios
          return unless receiver
          return unless method_names.include?(method_name)

          # discard cases with argument destructuring
          args = *args_node

          return true unless args.all? { |n| n.type == :arg }
          return if args_match?(method_name, args)

          add_offense(args_node, :expression, message(method_name))
        end

        private

        def message(method_name)
          args = target_args(method_name).join(', ')
          "Name `#{method_name}` block params `|#{args}|`."
        end

        def methods
          cop_config['Methods']
        end

        def method_names
          methods.map { |e| e.keys.first.to_sym }
        end

        def target_args(method_name)
          method_name = method_name.to_s
          method_hash = methods.find { |m| m.keys.first == method_name }
          method_hash[method_name]
        end

        def args_match?(method_name, args)
          actual_args = args.flat_map(&:to_a)

          actual_args == target_args(method_name).map(&:to_sym)
        end
      end
    end
  end
end
