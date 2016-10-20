forwardMultiplyGate = (x, y) ->
  x * y

x = -2
y = 3
out = forwardMultiplyGate(x, y)
# before: -6
x_gradient = y
# by our complex mathematical derivation above
y_gradient = x

step_size = 0.01
x += step_size * x_gradient
# -2.03
y += step_size * y_gradient
# 2.98
out_new = forwardMultiplyGate(x, y)
# -5.87. Higher output! Nice.

console.log out_new
