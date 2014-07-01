React = require 'react'

# Pull in touch events. See
# https://github.com/petehunt/react-touch-lib/blob/master/src/ReactTouch.js

# EventPluginHub = require 'react/lib/EventPluginHub'
# ResponderEventPlugin = require './environment/ResponderEventPlugin'
# TapEventPlugin = require './environment/TapEventPlugin'

# EventPluginHub.injection.injectEventPluginsByName
#   ResponderEventPlugin: ResponderEventPlugin
#   TapEventPlugin: TapEventPlugin

attachFastClick = require 'fastclick'
attachFastClick document.body


React.initializeTouchEvents true

# Fill the screen
STYLE = {
  bottom: 0
  left: 0
  overflow: 'hidden'
  position: 'fixed'
  right: 0
  top: 0
}

module.exports = React.createClass
  
  # Ignore all touches that reach to application root. Scrolling
  # should be handled by the scroller component. See
  # https://github.com/nicholasstephan/scroller
  handleMouseMove: (e)->
    e.preventDefault()

  render: ->
    @transferPropsTo(
      <div className="App" onMouseMove={@handleMouseMove} style={STYLE}>
        {@props.children}
      </div>
    )
