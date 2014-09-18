# encoding: utf-8

module RuboCop
  module Cop
    module Style
      # Checks for uses of the `then` keyword in multi-line if statements.
      #
      # @example This is considered bad practice:
      #
      #   if cond then
      #   end
      #
      # @example If statements can contain `then` on the same line:
      #
      #   if cond then a
      #   elsif cond then b
      #   end
      class MultilineIfThen < Cop
        include IfNode
        include OnNormalIfUnless

        def on_normal_if_unless(node)
          condition, body, else_clause = *node
          next_thing = if body && body.loc.expression
                         body.loc.expression.begin
                       elsif else_clause && else_clause.loc.expression
                         else_clause.loc.expression.begin
                       else
                         node.loc.end # No body, use "end".
                       end
          right_after_cond =
            Parser::Source::Range.new(next_thing.source_buffer,
                                      end_position(condition),
                                      next_thing.begin_pos)
          return unless right_after_cond.source =~ /\A\s*then\s*(#.*)?\s*\n/

          add_offense(node, :expression, message(node))
        end

        def end_position(conditional_node)
          conditional_node.loc.expression.end.end_pos
        end

        def message(node)
          "Never use `then` for multi-line `#{node.loc.keyword.source}`."
        end

        def autocorrect(node)
          @corrections << lambda do |corrector|
            condition_node, = *node
            end_of_condition_range = condition_node.loc.expression.end
            then_range = node.loc.begin
            whitespaces_and_then_range = end_of_condition_range.join(then_range)
            corrector.remove(whitespaces_and_then_range)
          end
        end
      end
    end
  end
end
