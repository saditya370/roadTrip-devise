// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


window.initMap = ()=> {
    console.log("map intialized")
    let evt = new Event("map-loaded", {"bubbles":true, "cancelable":true});
        
      evt.preventDefault()
      window.dispatchEvent(evt);
     
}
