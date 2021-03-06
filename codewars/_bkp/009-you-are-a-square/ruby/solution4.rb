
##
# Checkes whether a number is a perfect root.
#
# @param [x] Integer
# @return [boolean]
#
def is_square(x)
  # Computationally more expensive than the previous versions,
  # but it does show clever uses of Ruby.
  (0..x).any? { |n| n * n == x }
end

p is_square (-1)
# ⇒ false, -1 is not a perfect square
# `sqrt': Numerical argument is out of domain - "sqrt" (Math::DomainError)

p is_square(0)
# ⇒ true, 0 is a perfect square (0 * 0)

p is_square(3)
# ⇒ false, 3 is not a perfect square

p is_square(4)
# ⇒ true, 4 is a perfect square (2 * 2)

p is_square 25
# ⇒ true, 25 is a perfect square (5 * 5)

p is_square 26
# ⇒ false, 26 is not a perfect square
