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
navigation = document.getElementById('nav')
navigation.value = window.location.pathname
navigation.onchange = (e) ->
  window.location = e.target.value
