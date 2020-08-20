**Tracking app and url in-use**
 Solution for you if you want to monitor applications and active urls in several browsers
 

> Only on helpful  with macos

 **Example usage**
**Urls  on  Safari , BraveBrowser ,  GoogleChrome , Firefox , Opera**

    const { getActiveWindow } = require("tracking-app-in-use");
    callback = function (window) {
    try {
	    console.log(window.urls);
	    }
	 catch (err) {console.log(err);}
        };
    getActiveWindow("url", callback, ["Safari", "BraveBrowser", "GoogleChrome"]);

**App In-Use**

    const { getActiveWindow } = require("tracking-app-in-use");
        callback = function (window) {
        try {
    	    console.log(window.app);
    	    }
    	 catch (err) {console.log(err);}
            };
        getActiveWindow("app", callback,);
