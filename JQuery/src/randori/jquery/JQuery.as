/***
 * Copyright 2013 LTN Consulting, Inc. /dba Digital PrimatesÂ®
 *
 * Licensed under the Apache License, Version 2.0 (the 'License');
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 *
 * !!!! THIS IS A GENERATED FILE, DO NOT MAKE ANY CHANGES TO IT MANUALLY !!!!
 * @author Randori JQuery generator
*/
package randori.jquery {
	import randori.webkit.dom.Element;

	[Javascript(export="false")]
	public class JQuery {
		public function JQuery() {
			super();
		}
		/*
		 * The DOM node context originally passed to jQuery(); if none was passed then context will likely be the document.
		 * @since 1.3
		*/
		public var context:Element;
		/*
		 * A string containing the jQuery version number.
		 * @since 1.0
		*/
		public var jquery:String;
		/*
		 * The number of elements in the jQuery object.
		 * @since 1.0
		*/
		public var length:Number;
		/*
		 * A selector representing selector originally passed to jQuery().
		 * @since 1.3
		*/
		public var selector:String;

		[JavascriptMethod(name="add")]
		/*
		 * Add elements to the set of matched elements.
		 * @since 1.0
		 * @param selector A string representing a selector expression to find additional elements to add to the set of matched elements.
		*/
		public function add1(selector:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="add")]
		/*
		 * Add elements to the set of matched elements.
		 * @since 1.0
		 * @param elements One or more elements to add to the set of matched elements.
		*/
		public function add2(elements:Vector.<Element>):JQuery {
			return null;
		}

		[JavascriptMethod(name="add")]
		/*
		 * Add elements to the set of matched elements.
		 * @since 1.0
		 * @param html An HTML fragment to add to the set of matched elements.
		*/
		public function add3(html:Element):JQuery {
			return null;
		}

		[JavascriptMethod(name="add")]
		/*
		 * Add elements to the set of matched elements.
		 * @since 1.3.2
		 * @param jQueryobject An existing jQuery object to add to the set of matched elements.
		*/
		public function add4(jQueryobject:JQuery):JQuery {
			return null;
		}

		[JavascriptMethod(name="add")]
		/*
		 * Add elements to the set of matched elements.
		 * @since 1.4
		 * @param selector A string representing a selector expression to find additional elements to add to the set of matched elements.
		 * @param context The point in the document at which the selector should begin matching; similar to the context argument of the $(selector, context) method.
		*/
		public function add5(selector:String, context:Element):JQuery {
			return null;
		}

		/*
		 * Add the previous set of elements on the stack to the current set, optionally filtered by a selector.
		 * @since 1.8
		 * @param selector A string containing a selector expression to match the current set of elements against.
		*/
		public function addBack(selector:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="addClass")]
		/*
		 * Adds the specified class(es) to each of the set of matched elements.
		 * @since 1.0
		 * @param className One or more space-separated classes to be added to the class attribute of each matched element.
		*/
		public function addClass1(className:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="addClass")]
		/*
		 * Adds the specified class(es) to each of the set of matched elements.
		 * @since 1.4
		 * @param handler A function returning one or more space-separated class names to be added to the existing class name(s). Receives the index position of the element in the set and the existing class name(s) as arguments. Within the function, this refers to the current element in the set.
		*/
		public function addClass2(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="after")]
		/*
		 * Insert content, specified by the parameter, after each element in the set of matched elements.
		 * @since 1.0
		 * @param content HTML string, DOM element, or jQuery object to insert after each element in the set of matched elements.
		 * @param content One or more additional DOM elements, arrays of elements, HTML strings, or jQuery objects to insert after each element in the set of matched elements.
		*/
		public function after1(content:*, content:*=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="after")]
		/*
		 * Insert content, specified by the parameter, after each element in the set of matched elements.
		 * @since 1.4
		 * @param handler A function that returns an HTML string, DOM element(s), or jQuery object to insert after each element in the set of matched elements. Receives the index position of the element in the set as an argument. Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index))
		*/
		public function after2(handler:Function):JQuery {
			return null;
		}

		/*
		 * Register a handler to be called when Ajax requests complete. This is an AjaxEvent.
		 * @since 1.0
		 * @param handler The function to be invoked.
		*/
		public function ajaxComplete(handler:Function):JQuery {
			return null;
		}

		/*
		 * Register a handler to be called when Ajax requests complete with an error. This is an Ajax Event.
		 * @since 1.0
		 * @param handler The function to be invoked.
		*/
		public function ajaxError(handler:Function):JQuery {
			return null;
		}

		/*
		 * Attach a function to be executed before an Ajax request is sent. This is an Ajax Event.
		 * @since 1.0
		 * @param handler The function to be invoked.
		*/
		public function ajaxSend(handler:Function):JQuery {
			return null;
		}

		/*
		 * Register a handler to be called when the first Ajax request begins. This is an Ajax Event.
		 * @since 1.0
		 * @param handler The function to be invoked. (The method requires to have the following signature: handler())
		*/
		public function ajaxStart(handler:Function):JQuery {
			return null;
		}

		/*
		 * Register a handler to be called when all Ajax requests have completed. This is an Ajax Event.
		 * @since 1.0
		 * @param handler The function to be invoked. (The method requires to have the following signature: handler())
		*/
		public function ajaxStop(handler:Function):JQuery {
			return null;
		}

		/*
		 * Attach a function to be executed whenever an Ajax request completes successfully. This is an Ajax Event.
		 * @since 1.0
		 * @param handler The function to be invoked.
		*/
		public function ajaxSuccess(handler:Function):JQuery {
			return null;
		}

		/*
		 * Add the previous set of elements on the stack to the current set.
		 * @since 1.2
		*/
		public function andSelf():JQuery {
			return null;
		}

		[JavascriptMethod(name="animate")]
		/*
		 * Perform a custom animation of a set of CSS properties.
		 * @since 1.0
		 * @param properties An object of CSS properties and values that the animation will move toward.
		*/
		public function animate1(properties:*):JQuery {
			return null;
		}

		[JavascriptMethod(name="animate")]
		/*
		 * Perform a custom animation of a set of CSS properties.
		 * @since 1.0
		 * @param properties An object of CSS properties and values that the animation will move toward.
		*/
		public function animate2(properties:OptionsArgument):JQuery {
			return null;
		}

		[JavascriptMethod(name="append")]
		/*
		 * Insert content, specified by the parameter, to the end of each element in the set of matched elements.
		 * @since 1.0
		 * @param content DOM element, HTML string, or jQuery object to insert at the end of each element in the set of matched elements.
		 * @param content One or more additional DOM elements, arrays of elements, HTML strings, or jQuery objects to insert at the end of each element in the set of matched elements.
		*/
		public function append1(content:*, content:*=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="append")]
		/*
		 * Insert content, specified by the parameter, to the end of each element in the set of matched elements.
		 * @since 1.4
		 * @param handler A function that returns an HTML string, DOM element(s), or jQuery object to insert at the end of each element in the set of matched elements. Receives the index position of the element in the set and the old HTML value of the element as arguments. Within the function, this refers to the current element in the set.
		*/
		public function append2(handler:Function):JQuery {
			return null;
		}

		/*
		 * Insert every element in the set of matched elements to the end of the target.
		 * @since 1.0
		 * @param target A selector, element, HTML string, or jQuery object; the matched set of elements will be inserted at the end of the element(s) specified by this parameter.
		*/
		public function appendTo(target:*):JQuery {
			return null;
		}

		[JavascriptMethod(name="before")]
		/*
		 * Insert content, specified by the parameter, before each element in the set of matched elements.
		 * @since 1.0
		 * @param content HTML string, DOM element, or jQuery object to insert before each element in the set of matched elements.
		 * @param content One or more additional DOM elements, arrays of elements, HTML strings, or jQuery objects to insert before each element in the set of matched elements.
		*/
		public function before1(content:*, content:*=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="before")]
		/*
		 * Insert content, specified by the parameter, before each element in the set of matched elements.
		 * @since 1.4
		 * @param handler A function that returns an HTML string, DOM element(s), or jQuery object to insert before each element in the set of matched elements. Receives the index position of the element in the set as an argument. Within the function, this refers to the current element in the set.
		*/
		public function before2(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="bind")]
		/*
		 * Attach a handler to an event for the elements.
		 * @since 1.0
		 * @param eventType A string containing one or more DOM event types, such as "click" or "submit," or custom event names.
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function bind1(eventType:String, eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="bind")]
		/*
		 * Attach a handler to an event for the elements.
		 * @since 1.4.3
		 * @param eventType A string containing one or more DOM event types, such as "click" or "submit," or custom event names.
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param preventBubble Setting the third argument to false will attach a function that prevents the default action from occurring and stops the event from bubbling. The default is true.
		*/
		public function bind2(eventType:String, eventData:Object=null, preventBubble:Boolean=false):JQuery {
			return null;
		}

		[JavascriptMethod(name="bind")]
		/*
		 * Attach a handler to an event for the elements.
		 * @since 1.4
		 * @param events An object containing one or more DOM event types and functions to execute for them.
		*/
		public function bind3(events:Object):JQuery {
			return null;
		}

		[JavascriptMethod(name="blur")]
		/*
		 * Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function blur1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="blur")]
		/*
		 * Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function blur2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="blur")]
		/*
		 * Bind an event handler to the "blur" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function blur3():JQuery {
			return null;
		}

		[JavascriptMethod(name="change")]
		/*
		 * Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function change1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="change")]
		/*
		 * Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function change2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="change")]
		/*
		 * Bind an event handler to the "change" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function change3():JQuery {
			return null;
		}

		/*
		 * Get the children of each element in the set of matched elements, optionally filtered by a selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function children(selector:String=''):JQuery {
			return null;
		}

		/*
		 * Remove from the queue all items that have not yet been run.
		 * @since 1.4
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		*/
		public function clearQueue(queueName:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="click")]
		/*
		 * Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function click1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="click")]
		/*
		 * Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function click2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="click")]
		/*
		 * Bind an event handler to the "click" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function click3():JQuery {
			return null;
		}

		[JavascriptMethod(name="clone")]
		/*
		 * Create a deep copy of the set of matched elements.
		 * @since 1.0
		 * @param withDataAndEvents A Boolean indicating whether event handlers should be copied along with the elements. As of jQuery 1.4, element data will be copied as well.
		*/
		public function clone1(withDataAndEvents:Boolean=false):JQuery {
			return null;
		}

		[JavascriptMethod(name="clone")]
		/*
		 * Create a deep copy of the set of matched elements.
		 * @since 1.5
		 * @param withDataAndEvents A Boolean indicating whether event handlers and data should be copied along with the elements. The default value is false. *In jQuery 1.5.0 the default value was incorrectly true; it was changed back to false in 1.5.1 and up.
		 * @param deepWithDataAndEvents A Boolean indicating whether event handlers and data for all children of the cloned element should be copied. By default its value matches the first argument's value (which defaults to false).
		*/
		public function clone2(withDataAndEvents:Boolean=false, deepWithDataAndEvents:Boolean=false):JQuery {
			return null;
		}

		/*
		 * Get the children of each element in the set of matched elements, including text and comment nodes.
		 * @since 1.2
		*/
		public function contents():JQuery {
			return null;
		}

		[JavascriptMethod(name="dblclick")]
		/*
		 * Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function dblclick1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="dblclick")]
		/*
		 * Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function dblclick2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="dblclick")]
		/*
		 * Bind an event handler to the "dblclick" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function dblclick3():JQuery {
			return null;
		}

		/*
		 * Set a timer to delay execution of subsequent items in the queue.
		 * @since 1.4
		 * @param duration An integer indicating the number of milliseconds to delay execution of the next item in the queue.
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		*/
		public function delay(duration:int, queueName:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="delegate")]
		/*
		 * Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
		 * @since 1.4.2
		 * @param selector A selector to filter the elements that trigger the event.
		 * @param eventType A string containing one or more space-separated JavaScript event types, such as "click" or "keydown," or custom event names.
		 * @param handler A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function delegate1(selector:String, eventType:String, handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="delegate")]
		/*
		 * Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
		 * @since 1.4.2
		 * @param selector A selector to filter the elements that trigger the event.
		 * @param eventType A string containing one or more space-separated JavaScript event types, such as "click" or "keydown," or custom event names.
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function delegate2(selector:String, eventType:String, eventData:Object, handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="delegate")]
		/*
		 * Attach a handler to one or more events for all elements that match the selector, now or in the future, based on a specific set of root elements.
		 * @since 1.4.3
		 * @param selector A selector to filter the elements that trigger the event.
		 * @param events A plain object of one or more event types and functions to execute for them.
		*/
		public function delegate3(selector:String, events:Object):JQuery {
			return null;
		}

		/*
		 * Execute the next function on the queue for the matched elements.
		 * @since 1.2
		 * @param queueName A string containing the name of the queue. Defaults to fx, the standard effects queue.
		*/
		public function dequeue(queueName:String=''):JQuery {
			return null;
		}

		/*
		 * Remove the set of matched elements from the DOM.
		 * @since 1.4
		 * @param selector A selector expression that filters the set of matched elements to be removed.
		*/
		public function detach(selector:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="die")]
		/*
		 * Remove event handlers previously attached using .live() from the elements.
		 * @since 1.4.1
		*/
		public function die1():JQuery {
			return null;
		}

		[JavascriptMethod(name="die")]
		/*
		 * Remove event handlers previously attached using .live() from the elements.
		 * @since 1.3
		 * @param eventType A string containing a JavaScript event type, such as click or keydown.
		 * @param handler The function that is no longer to be executed.
		*/
		public function die2(eventType:String, handler:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="die")]
		/*
		 * Remove event handlers previously attached using .live() from the elements.
		 * @since 1.4.3
		 * @param events A plain object of one or more event types, such as click or keydown and their corresponding functions that are no longer to be executed.
		*/
		public function die3(events:Object):JQuery {
			return null;
		}

		/*
		 * Iterate over a jQuery object, executing a function for each matched element.
		 * @since 1.0
		 * @param handler A function to execute for each matched element.
		*/
		public function each(handler:Function):JQuery {
			return null;
		}

		/*
		 * Remove all child nodes of the set of matched elements from the DOM.
		 * @since 1.0
		*/
		public function empty():JQuery {
			return null;
		}

		/*
		 * End the most recent filtering operation in the current chain and return the set of matched elements to its previous state.
		 * @since 1.0
		*/
		public function end():JQuery {
			return null;
		}

		[JavascriptMethod(name="eq")]
		/*
		 * Reduce the set of matched elements to the one at the specified index.
		 * @since 1.1.2
		 * @param index An integer indicating the 0-based position of the element.
		*/
		public function eq1(index:int):JQuery {
			return null;
		}

		[JavascriptMethod(name="eq")]
		/*
		 * Reduce the set of matched elements to the one at the specified index.
		 * @since 1.4
		 * @param index An integer indicating the position of the element, counting backwards  from the last element in the set.
		*/
		public function eq2(index:int):JQuery {
			return null;
		}

		[JavascriptMethod(name="error")]
		/*
		 * Bind an event handler to the "error" JavaScript event.
		 * @since 1.0
		 * @param handler A function to execute when the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function error1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="error")]
		/*
		 * Bind an event handler to the "error" JavaScript event.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function error2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="fadeIn")]
		/*
		 * Display the matched elements by fading them to opaque.
		 * @since 1.0
		*/
		public function fadeIn1():JQuery {
			return null;
		}

		[JavascriptMethod(name="fadeIn")]
		/*
		 * Display the matched elements by fading them to opaque.
		 * @since 1.0
		*/
		public function fadeIn2():JQuery {
			return null;
		}

		[JavascriptMethod(name="fadeIn")]
		/*
		 * Display the matched elements by fading them to opaque.
		 * @since 1.4.3
		*/
		public function fadeIn3():JQuery {
			return null;
		}

		[JavascriptMethod(name="fadeOut")]
		/*
		 * Hide the matched elements by fading them to transparent.
		 * @since 1.0
		*/
		public function fadeOut1():JQuery {
			return null;
		}

		[JavascriptMethod(name="fadeOut")]
		/*
		 * Hide the matched elements by fading them to transparent.
		 * @since 1.0
		*/
		public function fadeOut2():JQuery {
			return null;
		}

		[JavascriptMethod(name="fadeOut")]
		/*
		 * Hide the matched elements by fading them to transparent.
		 * @since 1.4.3
		*/
		public function fadeOut3():JQuery {
			return null;
		}

		[JavascriptMethod(name="fadeTo")]
		/*
		 * Adjust the opacity of the matched elements.
		 * @since 1.0
		 * @param duration A string or number determining how long the animation will run.
		 * @param opacity A number between 0 and 1 denoting the target opacity.
		 * @param handler A function to call once the animation is complete.
		*/
		public function fadeTo1(duration:*, opacity:Number, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="fadeTo")]
		/*
		 * Adjust the opacity of the matched elements.
		 * @since 1.4.3
		 * @param duration A string or number determining how long the animation will run.
		 * @param opacity A number between 0 and 1 denoting the target opacity.
		 * @param easing A string indicating which easing function to use for the transition.
		 * @param handler A function to call once the animation is complete.
		*/
		public function fadeTo2(duration:*, opacity:Number, easing:String='', handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="fadeToggle")]
		/*
		 * Display or hide the matched elements by animating their opacity.
		 * @since 1.4.4
		*/
		public function fadeToggle1():JQuery {
			return null;
		}

		[JavascriptMethod(name="fadeToggle")]
		/*
		 * Display or hide the matched elements by animating their opacity.
		 * @since 1.4.4
		*/
		public function fadeToggle2():JQuery {
			return null;
		}

		[JavascriptMethod(name="filter")]
		/*
		 * Reduce the set of matched elements to those that match the selector or pass the function's test.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match the current set of elements against.
		*/
		public function filter1(selector:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="filter")]
		/*
		 * Reduce the set of matched elements to those that match the selector or pass the function's test.
		 * @since 1.0
		 * @param handler A function used as a test for each element in the set. this is the current DOM element. (The method requires to have the following signature: function(index))
		*/
		public function filter2(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="filter")]
		/*
		 * Reduce the set of matched elements to those that match the selector or pass the function's test.
		 * @since 1.4
		 * @param element An element to match the current set of elements against.
		*/
		public function filter3(element:Element):JQuery {
			return null;
		}

		[JavascriptMethod(name="filter")]
		/*
		 * Reduce the set of matched elements to those that match the selector or pass the function's test.
		 * @since 1.4
		 * @param jQueryobject An existing jQuery object to match the current set of elements against.
		*/
		public function filter4(jQueryobject:Object):JQuery {
			return null;
		}

		[JavascriptMethod(name="find")]
		/*
		 * Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function find1(selector:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="find")]
		/*
		 * Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
		 * @since 1.6
		 * @param jQueryobject A jQuery object to match elements against.
		*/
		public function find2(jQueryobject:Object):JQuery {
			return null;
		}

		[JavascriptMethod(name="find")]
		/*
		 * Get the descendants of each element in the current set of matched elements, filtered by a selector, jQuery object, or element.
		 * @since 1.6
		 * @param element An element to match elements against.
		*/
		public function find3(element:Element):JQuery {
			return null;
		}

		/*
		 * Stop the currently-running animation, remove all queued animations, and complete all animations for the matched elements.
		 * @since 1.9
		 * @param queue The name of the queue in which to stop animations.
		*/
		public function finish(queue:String=''):JQuery {
			return null;
		}

		/*
		 * Reduce the set of matched elements to the first in the set.
		 * @since 1.4
		*/
		public function first():JQuery {
			return null;
		}

		[JavascriptMethod(name="focus")]
		/*
		 * Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function focus1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="focus")]
		/*
		 * Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function focus2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="focus")]
		/*
		 * Bind an event handler to the "focus" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function focus3():JQuery {
			return null;
		}

		[JavascriptMethod(name="focusin")]
		/*
		 * Bind an event handler to the "focusin" event.
		 * @since 1.4
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function focusin1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="focusin")]
		/*
		 * Bind an event handler to the "focusin" event.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function focusin2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="focusout")]
		/*
		 * Bind an event handler to the "focusout" JavaScript event.
		 * @since 1.4
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function focusout1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="focusout")]
		/*
		 * Bind an event handler to the "focusout" JavaScript event.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function focusout2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		/*
		 * Retrieve the DOM elements matched by the jQuery object.
		 * @since 1.0
		 * @return Either of these types: Element, Array
		 * @param index A zero-based integer indicating which element to retrieve.
		*/
		public function get(index:Number=0):* {
			return null;
		}

		[JavascriptMethod(name="has")]
		/*
		 * Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
		 * @since 1.4
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function has1(selector:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="has")]
		/*
		 * Reduce the set of matched elements to those that have a descendant that matches the selector or DOM element.
		 * @since 1.4
		 * @param contained A DOM element to match elements against.
		*/
		public function has2(contained:Element):JQuery {
			return null;
		}

		/*
		 * Determine whether any of the matched elements are assigned the given class.
		 * @since 1.2
		 * @param className The class name to search for.
		*/
		public function hasClass(className:String):Boolean {
			return false;
		}

		[JavascriptMethod(name="hide")]
		/*
		 * Hide the matched elements.
		 * @since 1.0
		*/
		public function hide1():JQuery {
			return null;
		}

		[JavascriptMethod(name="hide")]
		/*
		 * Hide the matched elements.
		 * @since 1.0
		*/
		public function hide2():JQuery {
			return null;
		}

		[JavascriptMethod(name="hide")]
		/*
		 * Hide the matched elements.
		 * @since 1.0
		*/
		public function hide3():JQuery {
			return null;
		}

		[JavascriptMethod(name="hide")]
		/*
		 * Hide the matched elements.
		 * @since 1.4.3
		*/
		public function hide4():JQuery {
			return null;
		}

		[JavascriptMethod(name="index")]
		/*
		 * Search for a given element from among the matched elements.
		 * @since 1.4
		*/
		public function index1():Number {
			return 0;
		}

		[JavascriptMethod(name="index")]
		/*
		 * Search for a given element from among the matched elements.
		 * @since 1.4
		 * @param selector A selector representing a jQuery collection in which to look for an element.
		*/
		public function index2(selector:String):Number {
			return 0;
		}

		[JavascriptMethod(name="index")]
		/*
		 * Search for a given element from among the matched elements.
		 * @since 1.0
		 * @param element The DOM element or first element within the jQuery object to look for.
		*/
		public function index3(element:*):Number {
			return 0;
		}

		/*
		 * Get the current computed height for the first element in the set of matched elements, including padding but not border.
		 * @since 1.2.6
		*/
		public function innerHeight():int {
			return 0;
		}

		/*
		 * Get the current computed width for the first element in the set of matched elements, including padding but not border.
		 * @since 1.2.6
		*/
		public function innerWidth():int {
			return 0;
		}

		/*
		 * Insert every element in the set of matched elements after the target.
		 * @since 1.0
		 * @param target A selector, element, HTML string, or jQuery object; the matched set of elements will be inserted after the element(s) specified by this parameter.
		*/
		public function insertAfter(target:*):JQuery {
			return null;
		}

		/*
		 * Insert every element in the set of matched elements before the target.
		 * @since 1.0
		 * @param target A selector, element, HTML string, or jQuery object; the matched set of elements will be inserted before the element(s) specified by this parameter.
		*/
		public function insertBefore(target:*):JQuery {
			return null;
		}

		[JavascriptMethod(name="is")]
		/*
		 * Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function is1(selector:String):Boolean {
			return false;
		}

		[JavascriptMethod(name="is")]
		/*
		 * Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
		 * @since 1.6
		 * @param handler A function used as a test for the set of elements. It accepts one argument, index, which is the element's index in the jQuery collection.Within the function, this refers to the current DOM element. (The method requires to have the following signature: function(index))
		*/
		public function is2(handler:Function):Boolean {
			return false;
		}

		[JavascriptMethod(name="is")]
		/*
		 * Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
		 * @since 1.6
		 * @param jQueryobject An existing jQuery object to match the current set of elements against.
		*/
		public function is3(jQueryobject:Object):Boolean {
			return false;
		}

		[JavascriptMethod(name="is")]
		/*
		 * Check the current matched set of elements against a selector, element, or jQuery object and return true if at least one of these elements matches the given arguments.
		 * @since 1.6
		 * @param element An element to match the current set of elements against.
		*/
		public function is4(element:Element):Boolean {
			return false;
		}

		[JavascriptMethod(name="keydown")]
		/*
		 * Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function keydown1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="keydown")]
		/*
		 * Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function keydown2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="keydown")]
		/*
		 * Bind an event handler to the "keydown" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function keydown3():JQuery {
			return null;
		}

		[JavascriptMethod(name="keypress")]
		/*
		 * Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function keypress1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="keypress")]
		/*
		 * Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function keypress2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="keypress")]
		/*
		 * Bind an event handler to the "keypress" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function keypress3():JQuery {
			return null;
		}

		[JavascriptMethod(name="keyup")]
		/*
		 * Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function keyup1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="keyup")]
		/*
		 * Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function keyup2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="keyup")]
		/*
		 * Bind an event handler to the "keyup" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function keyup3():JQuery {
			return null;
		}

		/*
		 * Reduce the set of matched elements to the final one in the set.
		 * @since 1.4
		*/
		public function last():JQuery {
			return null;
		}

		[JavascriptMethod(name="live")]
		/*
		 * Attach an event handler for all elements which match the current selector, now and in the future.
		 * @since 1.3
		 * @param events A string containing a JavaScript event type, such as "click" or "keydown." As of jQuery 1.4 the string can contain multiple, space-separated event types or custom event names.
		 * @param handler A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function live1(events:String, handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="live")]
		/*
		 * Attach an event handler for all elements which match the current selector, now and in the future.
		 * @since 1.4
		 * @param events A string containing a JavaScript event type, such as "click" or "keydown." As of jQuery 1.4 the string can contain multiple, space-separated event types or custom event names.
		 * @param data An object containing data that will be passed to the event handler.
		 * @param handler A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function live2(events:String, data:Object, handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="live")]
		/*
		 * Attach an event handler for all elements which match the current selector, now and in the future.
		 * @since 1.4.3
		 * @param events A plain object of one or more JavaScript event types and functions to execute for them.
		*/
		public function live3(events:Object):JQuery {
			return null;
		}

		[JavascriptMethod(name="load")]
		/*
		 * Bind an event handler to the "load" JavaScript event.
		 * @since 1.0
		 * @param handler A function to execute when the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function load1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="load")]
		/*
		 * Bind an event handler to the "load" JavaScript event.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function load2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		/*
		 * Load data from the server and place the returned HTML into the matched element.
		 * @since 1.0
		 * @param url A string containing the URL to which the request is sent.
		 * @param data A plain object or string that is sent to the server with the request.
		 * @param handler A callback function that is executed when the request completes.
		*/
		public function load(url:String, data:*=null, handler:Function=null):JQuery {
			return null;
		}

		/*
		 * Pass each element in the current matched set through a function, producing a new jQuery object containing the return values.
		 * @since 1.2
		 * @param handler A function object that will be invoked for each element in the current set.
		*/
		public function map(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="mousedown")]
		/*
		 * Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mousedown1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="mousedown")]
		/*
		 * Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mousedown2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="mousedown")]
		/*
		 * Bind an event handler to the "mousedown" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function mousedown3():JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseenter")]
		/*
		 * Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mouseenter1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseenter")]
		/*
		 * Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mouseenter2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseenter")]
		/*
		 * Bind an event handler to be fired when the mouse enters an element, or trigger that handler on an element.
		 * @since 1.0
		*/
		public function mouseenter3():JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseleave")]
		/*
		 * Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mouseleave1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseleave")]
		/*
		 * Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mouseleave2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseleave")]
		/*
		 * Bind an event handler to be fired when the mouse leaves an element, or trigger that handler on an element.
		 * @since 1.0
		*/
		public function mouseleave3():JQuery {
			return null;
		}

		[JavascriptMethod(name="mousemove")]
		/*
		 * Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mousemove1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="mousemove")]
		/*
		 * Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mousemove2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="mousemove")]
		/*
		 * Bind an event handler to the "mousemove" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function mousemove3():JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseout")]
		/*
		 * Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mouseout1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseout")]
		/*
		 * Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mouseout2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseout")]
		/*
		 * Bind an event handler to the "mouseout" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function mouseout3():JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseover")]
		/*
		 * Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mouseover1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseover")]
		/*
		 * Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mouseover2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseover")]
		/*
		 * Bind an event handler to the "mouseover" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function mouseover3():JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseup")]
		/*
		 * Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mouseup1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseup")]
		/*
		 * Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function mouseup2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="mouseup")]
		/*
		 * Bind an event handler to the "mouseup" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function mouseup3():JQuery {
			return null;
		}

		/*
		 * Get the immediately following sibling of each element in the set of matched elements. If a selector is provided, it retrieves the next sibling only if it matches that selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function next(selector:String=''):JQuery {
			return null;
		}

		/*
		 * Get all following siblings of each element in the set of matched elements, optionally filtered by a selector.
		 * @since 1.2
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function nextAll(selector:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="nextUntil")]
		/*
		 * Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.
		 * @since 1.4
		 * @param selector A string containing a selector expression to indicate where to stop matching following sibling elements.
		 * @param filter A string containing a selector expression to match elements against.
		*/
		public function nextUntil1(selector:String='', filter:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="nextUntil")]
		/*
		 * Get all following siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object passed.
		 * @since 1.6
		 * @param element A DOM node or jQuery object indicating where to stop matching following sibling elements.
		 * @param filter A string containing a selector expression to match elements against.
		*/
		public function nextUntil2(element:Element=null, filter:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="not")]
		/*
		 * Remove elements from the set of matched elements.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function not1(selector:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="not")]
		/*
		 * Remove elements from the set of matched elements.
		 * @since 1.0
		 * @param elements One or more DOM elements to remove from the matched set.
		*/
		public function not2(elements:Vector.<Element>):JQuery {
			return null;
		}

		[JavascriptMethod(name="not")]
		/*
		 * Remove elements from the set of matched elements.
		 * @since 1.4
		 * @param handler A function used as a test for each element in the set. this is the current DOM element. (The method requires to have the following signature: function(index))
		*/
		public function not3(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="not")]
		/*
		 * Remove elements from the set of matched elements.
		 * @since 1.4
		 * @param jQueryobject An existing jQuery object to match the current set of elements against.
		*/
		public function not4(jQueryobject:Object):JQuery {
			return null;
		}

		[JavascriptMethod(name="off")]
		/*
		 * Remove an event handler.
		 * @since 1.7
		 * @param events One or more space-separated event types and optional namespaces, or just namespaces, such as "click", "keydown.myPlugin", or ".myPlugin".
		 * @param selector A selector which should match the one originally passed to .on() when attaching event handlers.
		 * @param handler A handler function previously attached for the event(s), or the special value false. (The method requires to have the following signature: handler(eventObject))
		*/
		public function off1(events:String, selector:String='', handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="off")]
		/*
		 * Remove an event handler.
		 * @since 1.7
		 * @param events An object where the string keys represent one or more space-separated event types and optional namespaces, and the values represent handler functions previously attached for the event(s).
		 * @param selector A selector which should match the one originally passed to .on() when attaching event handlers.
		*/
		public function off2(events:Object, selector:String=''):JQuery {
			return null;
		}

		/*
		 * Get the closest ancestor element that is positioned.
		 * @since 1.2.6
		*/
		public function offsetParent():JQuery {
			return null;
		}

		[JavascriptMethod(name="on")]
		/*
		 * Attach an event handler function for one or more events to the selected elements.
		 * @since 1.7
		 * @param events One or more space-separated event types and optional namespaces, such as "click" or "keydown.myPlugin".
		 * @param selector A selector string to filter the descendants of the selected elements that trigger the event. If the selector is null or omitted, the event is always triggered when it reaches the selected element.
		 * @param data Data to be passed to the handler in event.data when an event is triggered.
		 * @param handler A function to execute when the event is triggered. The value false is also allowed as a shorthand for a function that simply does return false. (The method requires to have the following signature: handler(eventObject))
		*/
		public function on1(events:String, selector:String='', data:*=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="on")]
		/*
		 * Attach an event handler function for one or more events to the selected elements.
		 * @since 1.7
		 * @param events An object in which the string keys represent one or more space-separated event types and optional namespaces, and the values represent a handler function to be called for the event(s).
		 * @param selector A selector string to filter the descendants of the selected elements that will call the handler. If the selector is null or omitted, the handler is always called when it reaches the selected element.
		 * @param data Data to be passed to the handler in event.data when an event occurs.
		*/
		public function on2(events:Object, selector:String='', data:*=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="one")]
		/*
		 * Attach a handler to an event for the elements. The handler is executed at most once per element.
		 * @since 1.1
		 * @param events A string containing one or more JavaScript event types, such as "click" or "submit," or custom event names.
		 * @param data An object containing data that will be passed to the event handler.
		 * @param handler A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function one1(events:String, data:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="one")]
		/*
		 * Attach a handler to an event for the elements. The handler is executed at most once per element.
		 * @since 1.7
		 * @param events One or more space-separated event types and optional namespaces, such as "click" or "keydown.myPlugin".
		 * @param selector A selector string to filter the descendants of the selected elements that trigger the event. If the selector is null or omitted, the event is always triggered when it reaches the selected element.
		 * @param data Data to be passed to the handler in event.data when an event is triggered.
		 * @param handler A function to execute when the event is triggered. The value false is also allowed as a shorthand for a function that simply does return false. (The method requires to have the following signature: handler(eventObject))
		*/
		public function one2(events:String, selector:String='', data:*=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="one")]
		/*
		 * Attach a handler to an event for the elements. The handler is executed at most once per element.
		 * @since 1.7
		 * @param events An object in which the string keys represent one or more space-separated event types and optional namespaces, and the values represent a handler function to be called for the event(s).
		 * @param selector A selector string to filter the descendants of the selected elements that will call the handler. If the selector is null or omitted, the handler is always called when it reaches the selected element.
		 * @param data Data to be passed to the handler in event.data when an event occurs.
		*/
		public function one3(events:Object, selector:String='', data:*=null):JQuery {
			return null;
		}

		/*
		 * Get the current computed height for the first element in the set of matched elements, including padding, border, and optionally margin. Returns an integer (without "px") representation of the value or null if called on an empty set of elements.
		 * @since 1.2.6
		 * @param includeMargin A Boolean indicating whether to include the element's margin in the calculation.
		*/
		public function outerHeight(includeMargin:Boolean=false):int {
			return 0;
		}

		/*
		 * Get the current computed width for the first element in the set of matched elements, including padding and border.
		 * @since 1.2.6
		 * @param includeMargin A Boolean indicating whether to include the element's margin in the calculation.
		*/
		public function outerWidth(includeMargin:Boolean=false):int {
			return 0;
		}

		/*
		 * Get the parent of each element in the current set of matched elements, optionally filtered by a selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function parent(selector:String=''):JQuery {
			return null;
		}

		/*
		 * Get the ancestors of each element in the current set of matched elements, optionally filtered by a selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function parents(selector:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="parentsUntil")]
		/*
		 * Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.
		 * @since 1.4
		 * @param selector A string containing a selector expression to indicate where to stop matching ancestor elements.
		 * @param filter A string containing a selector expression to match elements against.
		*/
		public function parentsUntil1(selector:String='', filter:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="parentsUntil")]
		/*
		 * Get the ancestors of each element in the current set of matched elements, up to but not including the element matched by the selector, DOM node, or jQuery object.
		 * @since 1.6
		 * @param element A DOM node or jQuery object indicating where to stop matching ancestor elements.
		 * @param filter A string containing a selector expression to match elements against.
		*/
		public function parentsUntil2(element:Element=null, filter:String=''):JQuery {
			return null;
		}

		/*
		 * Get the current coordinates of the first element in the set of matched elements, relative to the offset parent.
		 * @since 1.2
		*/
		public function position():Object {
			return null;
		}

		[JavascriptMethod(name="prepend")]
		/*
		 * Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
		 * @since 1.0
		 * @param content DOM element, array of elements, HTML string, or jQuery object to insert at the beginning of each element in the set of matched elements.
		 * @param content One or more additional DOM elements, arrays of elements, HTML strings, or jQuery objects to insert at the beginning of each element in the set of matched elements.
		*/
		public function prepend1(content:*, content:*=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="prepend")]
		/*
		 * Insert content, specified by the parameter, to the beginning of each element in the set of matched elements.
		 * @since 1.4
		 * @param handler A function that returns an HTML string, DOM element(s), or jQuery object to insert at the beginning of each element in the set of matched elements. Receives the index position of the element in the set and the old HTML value of the element as arguments. Within the function, this refers to the current element in the set.
		*/
		public function prepend2(handler:Function):JQuery {
			return null;
		}

		/*
		 * Insert every element in the set of matched elements to the beginning of the target.
		 * @since 1.0
		 * @param target A selector, element, HTML string, or jQuery object; the matched set of elements will be inserted at the beginning of the element(s) specified by this parameter.
		*/
		public function prependTo(target:*):JQuery {
			return null;
		}

		/*
		 * Get the immediately preceding sibling of each element in the set of matched elements, optionally filtered by a selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function prev(selector:String=''):JQuery {
			return null;
		}

		/*
		 * Get all preceding siblings of each element in the set of matched elements, optionally filtered by a selector.
		 * @since 1.2
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function prevAll(selector:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="prevUntil")]
		/*
		 * Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.
		 * @since 1.4
		 * @param selector A string containing a selector expression to indicate where to stop matching preceding sibling elements.
		 * @param filter A string containing a selector expression to match elements against.
		*/
		public function prevUntil1(selector:String='', filter:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="prevUntil")]
		/*
		 * Get all preceding siblings of each element up to but not including the element matched by the selector, DOM node, or jQuery object.
		 * @since 1.6
		 * @param element A DOM node or jQuery object indicating where to stop matching preceding sibling elements.
		 * @param filter A string containing a selector expression to match elements against.
		*/
		public function prevUntil2(element:Element=null, filter:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="pushStack")]
		/*
		 * Add a collection of DOM elements onto the jQuery stack.
		 * @since 1.0
		 * @param elements An array of elements to push onto the stack and make into a new jQuery object.
		*/
		public function pushStack1(elements:Array):JQuery {
			return null;
		}

		[JavascriptMethod(name="pushStack")]
		/*
		 * Add a collection of DOM elements onto the jQuery stack.
		 * @since 1.3
		 * @param elements An array of elements to push onto the stack and make into a new jQuery object.
		 * @param name The name of a jQuery method that generated the array of elements.
		 * @param arguments The arguments that were passed in to the jQuery method (for serialization).
		*/
		public function pushStack2(elements:Array, name:String, arguments:Array):JQuery {
			return null;
		}

		/*
		 * Specify a function to execute when the DOM is fully loaded.
		 * @since 1.0
		 * @param handler A function to execute after the DOM is ready.
		*/
		public function ready(handler:Function):JQuery {
			return null;
		}

		/*
		 * Remove the set of matched elements from the DOM.
		 * @since 1.0
		 * @param selector A selector expression that filters the set of matched elements to be removed.
		*/
		public function remove(selector:String=''):JQuery {
			return null;
		}

		/*
		 * Remove an attribute from each element in the set of matched elements.
		 * @since 1.0
		 * @param attributeName An attribute to remove; as of version 1.7, it can be a space-separated list of attributes.
		*/
		public function removeAttr(attributeName:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="removeClass")]
		/*
		 * Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
		 * @since 1.0
		 * @param className One or more space-separated classes to be removed from the class attribute of each matched element.
		*/
		public function removeClass1(className:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="removeClass")]
		/*
		 * Remove a single class, multiple classes, or all classes from each element in the set of matched elements.
		 * @since 1.4
		 * @param handler A function returning one or more space-separated class names to be removed. Receives the index position of the element in the set and the old class value as arguments.
		*/
		public function removeClass2(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="removeData")]
		/*
		 * Remove a previously-stored piece of data.
		 * @since 1.2.3
		 * @param name A string naming the piece of data to delete.
		*/
		public function removeData1(name:String=''):JQuery {
			return null;
		}

		[JavascriptMethod(name="removeData")]
		/*
		 * Remove a previously-stored piece of data.
		 * @since 1.7
		 * @param list An array or space-separated string naming the pieces of data to delete.
		*/
		public function removeData2(list:*=null):JQuery {
			return null;
		}

		/*
		 * Remove a property for the set of matched elements.
		 * @since 1.6
		 * @param propertyName The name of the property to remove.
		*/
		public function removeProp(propertyName:String):JQuery {
			return null;
		}

		/*
		 * Replace each target element with the set of matched elements.
		 * @since 1.2
		 * @param target A selector expression indicating which element(s) to replace.
		*/
		public function replaceAll(target:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="replaceWith")]
		/*
		 * Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.
		 * @since 1.2
		 * @param newContent The content to insert. May be an HTML string, DOM element, or jQuery object.
		*/
		public function replaceWith1(newContent:*):JQuery {
			return null;
		}

		[JavascriptMethod(name="replaceWith")]
		/*
		 * Replace each element in the set of matched elements with the provided new content and return the set of elements that was removed.
		 * @since 1.4
		 * @param handler A function that returns content with which to replace the set of matched elements.
		*/
		public function replaceWith2(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="resize")]
		/*
		 * Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function resize1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="resize")]
		/*
		 * Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function resize2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="resize")]
		/*
		 * Bind an event handler to the "resize" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function resize3():JQuery {
			return null;
		}

		[JavascriptMethod(name="scroll")]
		/*
		 * Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function scroll1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="scroll")]
		/*
		 * Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function scroll2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="scroll")]
		/*
		 * Bind an event handler to the "scroll" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function scroll3():JQuery {
			return null;
		}

		[JavascriptMethod(name="select")]
		/*
		 * Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function select1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="select")]
		/*
		 * Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function select2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="select")]
		/*
		 * Bind an event handler to the "select" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function select3():JQuery {
			return null;
		}

		/*
		 * Encode a set of form elements as a string for submission.
		 * @since 1.0
		*/
		public function serialize():String {
			return '';
		}

		/*
		 * Encode a set of form elements as an array of names and values.
		 * @since 1.2
		*/
		public function serializeArray():Array {
			return null;
		}

		[JavascriptMethod(name="show")]
		/*
		 * Display the matched elements.
		 * @since 1.0
		*/
		public function show1():JQuery {
			return null;
		}

		[JavascriptMethod(name="show")]
		/*
		 * Display the matched elements.
		 * @since 1.0
		*/
		public function show2():JQuery {
			return null;
		}

		[JavascriptMethod(name="show")]
		/*
		 * Display the matched elements.
		 * @since 1.0
		*/
		public function show3():JQuery {
			return null;
		}

		[JavascriptMethod(name="show")]
		/*
		 * Display the matched elements.
		 * @since 1.4.3
		*/
		public function show4():JQuery {
			return null;
		}

		/*
		 * Get the siblings of each element in the set of matched elements, optionally filtered by a selector.
		 * @since 1.0
		 * @param selector A string containing a selector expression to match elements against.
		*/
		public function siblings(selector:String=''):JQuery {
			return null;
		}

		/*
		 * Return the number of elements in the jQuery object.
		 * @since 1.0
		*/
		public function size():Number {
			return 0;
		}

		/*
		 * Reduce the set of matched elements to a subset specified by a range of indices.
		 * @since 1.1.4
		 * @param start An integer indicating the 0-based position at which the elements begin to be selected. If negative, it indicates an offset from the end of the set.
		 * @param end An integer indicating the 0-based position at which the elements stop being selected. If negative, it indicates an offset from the end of the set. If omitted, the range continues until the end of the set.
		*/
		public function slice(start:int, end:int=0):JQuery {
			return null;
		}

		[JavascriptMethod(name="slideDown")]
		/*
		 * Display the matched elements with a sliding motion.
		 * @since 1.0
		*/
		public function slideDown1():JQuery {
			return null;
		}

		[JavascriptMethod(name="slideDown")]
		/*
		 * Display the matched elements with a sliding motion.
		 * @since 1.0
		*/
		public function slideDown2():JQuery {
			return null;
		}

		[JavascriptMethod(name="slideDown")]
		/*
		 * Display the matched elements with a sliding motion.
		 * @since 1.4.3
		*/
		public function slideDown3():JQuery {
			return null;
		}

		[JavascriptMethod(name="slideToggle")]
		/*
		 * Display or hide the matched elements with a sliding motion.
		 * @since 1.0
		*/
		public function slideToggle1():JQuery {
			return null;
		}

		[JavascriptMethod(name="slideToggle")]
		/*
		 * Display or hide the matched elements with a sliding motion.
		 * @since 1.0
		*/
		public function slideToggle2():JQuery {
			return null;
		}

		[JavascriptMethod(name="slideToggle")]
		/*
		 * Display or hide the matched elements with a sliding motion.
		 * @since 1.4.3
		*/
		public function slideToggle3():JQuery {
			return null;
		}

		[JavascriptMethod(name="slideUp")]
		/*
		 * Hide the matched elements with a sliding motion.
		 * @since 1.0
		*/
		public function slideUp1():JQuery {
			return null;
		}

		[JavascriptMethod(name="slideUp")]
		/*
		 * Hide the matched elements with a sliding motion.
		 * @since 1.0
		*/
		public function slideUp2():JQuery {
			return null;
		}

		[JavascriptMethod(name="slideUp")]
		/*
		 * Hide the matched elements with a sliding motion.
		 * @since 1.4.3
		*/
		public function slideUp3():JQuery {
			return null;
		}

		[JavascriptMethod(name="stop")]
		/*
		 * Stop the currently-running animation on the matched elements.
		 * @since 1.2
		 * @param clearQueue A Boolean indicating whether to remove queued animation as well. Defaults to false.
		 * @param jumpToEnd A Boolean indicating whether to complete the current animation immediately. Defaults to false.
		*/
		public function stop1(clearQueue:Boolean=false, jumpToEnd:Boolean=false):JQuery {
			return null;
		}

		[JavascriptMethod(name="stop")]
		/*
		 * Stop the currently-running animation on the matched elements.
		 * @since 1.7
		 * @param queue The name of the queue in which to stop animations.
		 * @param clearQueue A Boolean indicating whether to remove queued animation as well. Defaults to false.
		 * @param jumpToEnd A Boolean indicating whether to complete the current animation immediately. Defaults to false.
		*/
		public function stop2(queue:String='', clearQueue:Boolean=false, jumpToEnd:Boolean=false):JQuery {
			return null;
		}

		[JavascriptMethod(name="submit")]
		/*
		 * Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function submit1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="submit")]
		/*
		 * Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
		 * @since 1.4.3
		 * @param eventData An object containing data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function submit2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="submit")]
		/*
		 * Bind an event handler to the "submit" JavaScript event, or trigger that event on an element.
		 * @since 1.0
		*/
		public function submit3():JQuery {
			return null;
		}

		/*
		 * Retrieve all the DOM elements contained in the jQuery set, as an array.
		 * @since 1.4
		*/
		public function toArray():Array {
			return null;
		}

		/*
		 * Bind two or more handlers to the matched elements, to be executed on alternate clicks.
		 * @since 1.0
		 * @param handler A function to execute every even time the element is clicked. (The method requires to have the following signature: handler(eventObject))
		 * @param handler A function to execute every odd time the element is clicked. (The method requires to have the following signature: handler(eventObject))
		 * @param handler Additional handlers to cycle through after clicks. (The method requires to have the following signature: handler(eventObject))
		*/
		public function toggle(handler:Function, handler:Function, handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="toggle")]
		/*
		 * Display or hide the matched elements.
		 * @since 1.0
		*/
		public function toggle1():JQuery {
			return null;
		}

		[JavascriptMethod(name="toggle")]
		/*
		 * Display or hide the matched elements.
		 * @since 1.0
		*/
		public function toggle2():JQuery {
			return null;
		}

		[JavascriptMethod(name="toggle")]
		/*
		 * Display or hide the matched elements.
		 * @since 1.4.3
		*/
		public function toggle3():JQuery {
			return null;
		}

		[JavascriptMethod(name="toggle")]
		/*
		 * Display or hide the matched elements.
		 * @since 1.3
		 * @param showOrHide A Boolean indicating whether to show or hide the elements.
		*/
		public function toggle4(showOrHide:Boolean):JQuery {
			return null;
		}

		[JavascriptMethod(name="toggleClass")]
		/*
		 * Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
		 * @since 1.0
		 * @param className One or more class names (separated by spaces) to be toggled for each element in the matched set.
		*/
		public function toggleClass1(className:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="toggleClass")]
		/*
		 * Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
		 * @since 1.3
		 * @param className One or more class names (separated by spaces) to be toggled for each element in the matched set.
		 * @param switch_ A Boolean (not just truthy/falsy) value to determine whether the class should be added or removed.
		*/
		public function toggleClass2(className:String, switch_:Boolean):JQuery {
			return null;
		}

		[JavascriptMethod(name="toggleClass")]
		/*
		 * Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
		 * @since 1.4
		 * @param switch_ A boolean value to determine whether the class should be added or removed.
		*/
		public function toggleClass3(switch_:Boolean=false):JQuery {
			return null;
		}

		[JavascriptMethod(name="toggleClass")]
		/*
		 * Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument.
		 * @since 1.4
		 * @param handler A function that returns class names to be toggled in the class attribute of each element in the matched set. Receives the index position of the element in the set, the old class value, and the switch as arguments.
		 * @param switch_ A boolean value to determine whether the class should be added or removed.
		*/
		public function toggleClass4(handler:Function, switch_:Boolean=false):JQuery {
			return null;
		}

		[JavascriptMethod(name="trigger")]
		/*
		 * Execute all handlers and behaviors attached to the matched elements for the given event type.
		 * @since 1.0
		 * @param eventType A string containing a JavaScript event type, such as click or submit.
		 * @param extraParameters Additional parameters to pass along to the event handler.
		*/
		public function trigger1(eventType:String, extraParameters:*=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="trigger")]
		/*
		 * Execute all handlers and behaviors attached to the matched elements for the given event type.
		 * @since 1.3
		 * @param event A jQuery.Event object.
		*/
		public function trigger2(event:Event):JQuery {
			return null;
		}

		/*
		 * Execute all handlers attached to an element for an event.
		 * @since 1.2
		 * @param eventType A string containing a JavaScript event type, such as click or submit.
		 * @param extraParameters An array of additional parameters to pass along to the event handler.
		*/
		public function triggerHandler(eventType:String, extraParameters:Array=null):Object {
			return null;
		}

		[JavascriptMethod(name="unbind")]
		/*
		 * Remove a previously-attached event handler from the elements.
		 * @since 1.0
		 * @param eventType A string containing a JavaScript event type, such as click or submit.
		 * @param handler The function that is to be no longer executed. (The method requires to have the following signature: handler(eventObject))
		*/
		public function unbind1(eventType:String='', handler:Function=null):JQuery {
			return null;
		}

		[JavascriptMethod(name="unbind")]
		/*
		 * Remove a previously-attached event handler from the elements.
		 * @since 1.4.3
		 * @param eventType A string containing a JavaScript event type, such as click or submit.
		 * @param false_ Unbinds the corresponding 'return false' function that was bound using .bind( eventType, false ).
		*/
		public function unbind2(eventType:String, false_:Boolean):JQuery {
			return null;
		}

		[JavascriptMethod(name="unbind")]
		/*
		 * Remove a previously-attached event handler from the elements.
		 * @since 1.0
		 * @param event A JavaScript event object as passed to an event handler.
		*/
		public function unbind3(event:Object):JQuery {
			return null;
		}

		[JavascriptMethod(name="undelegate")]
		/*
		 * Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		 * @since 1.4.2
		*/
		public function undelegate1():JQuery {
			return null;
		}

		[JavascriptMethod(name="undelegate")]
		/*
		 * Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		 * @since 1.4.2
		 * @param selector A selector which will be used to filter the event results.
		 * @param eventType A string containing a JavaScript event type, such as "click" or "keydown"
		*/
		public function undelegate2(selector:String, eventType:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="undelegate")]
		/*
		 * Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		 * @since 1.4.2
		 * @param selector A selector which will be used to filter the event results.
		 * @param eventType A string containing a JavaScript event type, such as "click" or "keydown"
		 * @param handler A function to execute at the time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function undelegate3(selector:String, eventType:String, handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="undelegate")]
		/*
		 * Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		 * @since 1.4.3
		 * @param selector A selector which will be used to filter the event results.
		 * @param events An object of one or more event types and previously bound functions to unbind from them.
		*/
		public function undelegate4(selector:String, events:Object):JQuery {
			return null;
		}

		[JavascriptMethod(name="undelegate")]
		/*
		 * Remove a handler from the event for all elements which match the current selector, based upon a specific set of root elements.
		 * @since 1.6
		 * @param namespace A string containing a namespace to unbind all events from.
		*/
		public function undelegate5(namespace:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="unload")]
		/*
		 * Bind an event handler to the "unload" JavaScript event.
		 * @since 1.0
		 * @param handler A function to execute when the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function unload1(handler:Function):JQuery {
			return null;
		}

		[JavascriptMethod(name="unload")]
		/*
		 * Bind an event handler to the "unload" JavaScript event.
		 * @since 1.4.3
		 * @param eventData A plain object of data that will be passed to the event handler.
		 * @param handler A function to execute each time the event is triggered. (The method requires to have the following signature: handler(eventObject))
		*/
		public function unload2(eventData:Object=null, handler:Function=null):JQuery {
			return null;
		}

		/*
		 * Remove the parents of the set of matched elements from the DOM, leaving the matched elements in their place.
		 * @since 1.4
		*/
		public function unwrap():JQuery {
			return null;
		}

		[JavascriptMethod(name="wrap")]
		/*
		 * Wrap an HTML structure around each element in the set of matched elements.
		 * @since 1.0
		 * @param wrappingElement An HTML snippet, selector expression, jQuery object, or DOM element specifying the structure to wrap around the matched elements.
		*/
		public function wrap1(wrappingElement:*):JQuery {
			return null;
		}

		[JavascriptMethod(name="wrap")]
		/*
		 * Wrap an HTML structure around each element in the set of matched elements.
		 * @since 1.4
		 * @param handler A callback function returning the HTML content or jQuery object to wrap around the matched elements. Receives the index position of the element in the set as an argument. Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index))
		*/
		public function wrap2(handler:Function):JQuery {
			return null;
		}

		/*
		 * Wrap an HTML structure around all elements in the set of matched elements.
		 * @since 1.2
		 * @param wrappingElement An HTML snippet, selector expression, jQuery object, or DOM element specifying the structure to wrap around the matched elements.
		*/
		public function wrapAll(wrappingElement:*):JQuery {
			return null;
		}

		[JavascriptMethod(name="wrapInner")]
		/*
		 * Wrap an HTML structure around the content of each element in the set of matched elements.
		 * @since 1.2
		 * @param wrappingElement An HTML snippet, selector expression, jQuery object, or DOM element specifying the structure to wrap around the content of the matched elements.
		*/
		public function wrapInner1(wrappingElement:String):JQuery {
			return null;
		}

		[JavascriptMethod(name="wrapInner")]
		/*
		 * Wrap an HTML structure around the content of each element in the set of matched elements.
		 * @since 1.4
		 * @param handler A callback function which generates a structure to wrap around the content of the matched elements. Receives the index position of the element in the set as an argument. Within the function, this refers to the current element in the set. (The method requires to have the following signature: function(index))
		*/
		public function wrapInner2(handler:Function):JQuery {
			return null;
		}
	}
}
