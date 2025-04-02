import Toybox.WatchUi;
import Toybox.Graphics;

class ViewManager {

    var currentView as WatchUi.View;

    function initialize(initialView as WatchUi.View) {
        currentView = initialView;
        currentView.onShow();
    }

    function switchView(newView as WatchUi.View) as Void {
        if (currentView != null) {
            currentView.onHide();
        }
        currentView = newView;
        currentView.onShow();
    }

    function update(dc as Dc) as Void {
        if (currentView != null) {
            currentView.onUpdate(dc);
        }
    }
}