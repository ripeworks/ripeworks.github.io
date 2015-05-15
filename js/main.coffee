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
    opacity: 0.15
    fill: t.url()

t = textures.circles()
  .size(90)
  .radius(2)
  .fill("white")

svg.call t

svg.append("rect")
  .attr
    width: "100%"
    height: "100%"
  .style
    opacity: 0.5
    fill: t.url()
