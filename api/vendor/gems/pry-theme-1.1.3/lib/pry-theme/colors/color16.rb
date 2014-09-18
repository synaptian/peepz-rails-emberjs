module PryTheme
  class Color16 < Color

    def initialize(options = {})
      super(16, options)
    end

    private

    def create_ansi_sequence(fg, bg)
      super(fg, bg, '39;49')
    end

    def build_fg_sequence
      [foreground]
    end

    def build_bg_sequence
      [background]
    end

    def build_effects_sequence
      []
    end

    def find_from_fixnum(color_id)
      sorted_colors.each_with_index.to_a.rassoc(color_id).first.first
    end

    def build_layer(layer)
      layer.join(';')
    end

  end
end
