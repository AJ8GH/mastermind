class String
  def centralize
    self.center(80)
  end

  def line
    ''.center(80, '-')
  end

  def underline
    puts self.centralize
    puts line
  end

  def overline
    puts line
    puts self.centralize
  end

  def under_over_line
    puts line
    puts self.centralize
    puts line
  end
end
