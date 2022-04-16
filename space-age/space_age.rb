=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end


class SpaceAge

  def initialize ms
    @ms = ms.to_f
    @earth_year = 31557600 
  end

  def on_earth
    @ms / @earth_year 
  end

  def on_mercury
    @ms /  (@earth_year * 0.2408467)
  end

  def on_venus
    @ms /  (@earth_year * 0.61519726)
  end

  def on_mars
    @ms /  (@earth_year * 1.8808158)
  end

  def on_jupiter
    @ms /  (@earth_year * 11.862615)
  end

  def on_saturn
    @ms /  (@earth_year * 29.447498)
  end

  def on_uranus
    @ms /  (@earth_year * 84.016846)
  end

  def on_neptune
    @ms /  (@earth_year * 164.79132)
  end

end
