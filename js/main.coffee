---
---

svg = d3.select("#graph")
  .append("svg")
  .attr("width", "100%")
  .attr("height", "100%")

t = textures.lines()
  .orientation("vertical", "horizontal")
  .size(30)
  .shapeRendering("crispEdges")
  .strokeWidth(1)
  .stroke("white")

svg.call t

svg.append("rect")
  .attr
    width: "100%"
    height: "100%"
  .style
    opacity: 0.05
    fill: t.url()

t = textures.circles()
  .size(90)
  .radius(1)
  .fill("white")

svg.call t

svg.append("rect")
  .attr
    width: "100%"
    height: "100%"
  .style
    opacity: 0.15
    fill: t.url()


# copyright date
d3.selectAll("footer .year").text(new Date().getFullYear())

# navigation
currentPage = (nav) ->
  for option in nav.options
    if option.value == window.location.pathname
      return window.location.pathname
  '/articles/'

navigation = document.getElementById('nav')
navigation.value = currentPage(navigation)
navigation.onchange = (e) ->
  window.location = e.target.value

# stagger animated lists
delay = 400
for el in document.querySelectorAll('.animate-in-stagger')
  dynamics.css(el, {opacity: 0})
  dynamics.animate(el, {
    opacity: 1
  }, {
    type: dynamics.spring
    delay: delay
  })
  delay += 50

# heatmap
# cal = new CalHeatMap()
# cal.init
#   itemSelector: '#heatmap'
#   cellRadius: 5
#   cellSize: 5
#   cellPadding: 4
#   domainGutter: 0
#   displayLegend: false
#   range: 100
