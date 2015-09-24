---
layout: post
title:  "Tracing AS3 To Google Chrome / Firebug"
date:   2011-07-27 15:13
categories: flash as3 chrome firebug
---

Ever since I got used to Chrome’s Developer Console, I rarely use Firefox. In fact, it’s not even in my dock anymore. The one thing that was still having me fire up the beast, was Flash development. I used the lovely, Flash Console plugin that integrated with Firebug.  Wanting to do 100% Chrome, I decided to take matters into my own hands.

I developed a Console class to handle everything for me. Rather than `trace()` is AS3, if you call `Console.log` (or `Console.warn`, `Console.error`) it works just like trace(), except it will also make an ExternalInterface call which then shows up in your Firebug console or Chrome console. If you pass Objects to Console.log, the properties and methods of the Object are passed along as well, which allows for even better debugging.

I also added a newer feature that takes advantage of the `UncaughtErrorEvent` in Flash Player 10.1+. This Event allows you to listen for any Errors that don’t have a registered handler. Since Console extends Sprite, if you have your DocumentRoot extend Console, you will also get Errors traced into your console. Another way to achieve this would be to just instantiate an instance of Console in your application as the init code for this feature is in the constructor of Console.

{% highlight as linenos=table %}
package
{
    import flash.display.Sprite;
    import flash.events.ErrorEvent;
    import flash.events.UncaughtErrorEvent;
    import flash.external.ExternalInterface;
    
    public class Console extends Sprite
    {
        public function Console():void
        {
            super();
            init();
        }
        
        public static function log(... arguments):void
        {
            Console.trace(arguments);
        }
        
        public static function warn(... arguments):void
        {
            Console.trace(arguments, "warn");
        }
        
        public static function error(... arguments):void
        {
            Console.trace(arguments, "error");
        }
        
        private static function trace(args:Object,type:String = "log"):void
        {
            for(var i:String in args)
            {
                if( !args[i] is String)
                    args[i] = args[i].toString();
                ExternalInterface.call("console."+type,args[i]);
                if( type == "log") trace(args[i]);
            }
        }
        
        private function init():void
        {
            if(loaderInfo.hasOwnProperty("uncaughtErrorEvents"))
                loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR, uncaughtErrorHandler, false, 0, true);
        }
        
        private function uncaughtErrorHandler(e:UncaughtErrorEvent):void
        {
            if( e.error is Error)
            {
                var stack:String = Error(e.error).getStackTrace();
                Console.error(Error(e.error).message + ((stack!=null)? "\n"+stack : ""));
            }
            else if( e.error is ErrorEvent)
                Console.error(ErrorEvent(e.error).text);
            else
                Console.error(e.error.toString());
        }
    }
}
{% endhighlight %}
