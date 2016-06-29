function triangle (n) {
  return (n * (n + 1) / 2)
}

function grid (x, y) {
  if (x < y) {
    return null
  } else {
    return x + triangle(y - 1)
  }
}
