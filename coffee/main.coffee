
viewPort =
  w: innerWidth
  h: innerHeight

unit =
  w: 40
  h: 40

random = ->
  (Math.random() * 1000 * 13) + 1300

makeRow = (n) ->
  [1..n].map -> random()

makeGrid = (n, m) ->
  [1..n].map -> makeRow m

xn = (viewPort.w / unit.w).toFixed()
yn = (viewPort.h / unit.h).toFixed()
grid = makeGrid yn, xn

console.log grid

app = new Vue
  el: '#app'
  data:
    grid: grid