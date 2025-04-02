import Toybox.Lang;
import Toybox.WatchUi;

class preparationDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onMenu() as Boolean {
        System.println("onMenu");
        return true;
    }

    function onSelect() as Boolean {
        System.println("onSelect");
        return true;
    }

    // function onNextPage() as Boolean {
    //     WatchUi.pushView(new Rez.Menus.PageDownMenu(), new freebreathMenuDelegate(), WatchUi.SLIDE_UP);
    //     return true;
    // }   

}