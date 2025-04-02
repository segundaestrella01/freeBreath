import Toybox.Lang;
import Toybox.WatchUi;

class landingDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        System.println("onMenu");
        WatchUi.pushView(new Rez.Menus.MainMenu(), new freebreathMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

    function onSelect() as Boolean {
        System.println("onSelect");
        WatchUi.pushView(new Rez.Menus.MainMenu(), new freebreathMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }

    // function onNextPage() as Boolean {
    //     WatchUi.pushView(new Rez.Menus.PageDownMenu(), new freebreathMenuDelegate(), WatchUi.SLIDE_UP);
    //     return true;
    // }   

}