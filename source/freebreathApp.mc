import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;
import Toybox.Graphics;
import Globals;

class freebreathApp extends Application.AppBase {


    function initialize() {
        AppBase.initialize();
        var mainView = new landingView();
        Globals.viewManager = new ViewManager(mainView);
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
        System.println("freebreathApp::onStart");
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    // Return the initial view of your application here
    function getInitialView() as [Views] or [Views, InputDelegates] {
        return [ new landingView(), new landingDelegate() ];
    }

    function onUpdate(dc as Dc) as Void {
        Globals.viewManager.update(dc);
    }

}

function getApp() as freebreathApp {
    return Application.getApp() as freebreathApp;
}