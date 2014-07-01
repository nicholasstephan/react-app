var should = require("should");
var React = require("react");
var App = require('./App.cjsx');

describe('App', function(){
  
  it('be testable', function(){
    should(true).ok;
  });

  describe('environment', function() {

    // var component = React.createClass({
    //     handleClick: function() {
    //     },
    //     handleMouseDown: function() {
    //     },
    //     render: function() {
    //       return App({}, [
    //         React.DOM.div({
    //           onClick:this.handleClick,
    //           onMouseDown:this.handleMouseDown,
    //           ref: "button"
    //         })
    //       ]);
    //     }
    //   });

    // beforeEach(function() {
    //   React.renderComponent(component(), document.body);
    // });

    // afterEach(function() {
    //   React.unmountAndReleaseReactRootNode(document.body);
    // });

    it('should handle fastclick touches', function() {
      
    });

    it('should not overflow container');

  })

});