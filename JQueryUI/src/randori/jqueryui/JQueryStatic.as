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
 * The XML files at this location: https://github.com/jquery/api.jqueryui.com were
 * used to generate this class
 * @author Randori JQueryUI generator
*/
package randori.jqueryui {
	
	
	/**
	 * Create stateful jQuery plugins using the same abstraction as all jQuery UI widgets.
	 * <p>You can create new widgets from scratch, using just the <code>$.Widget</code> object as a base to inherit from, or you can explicitly inherit from existing jQuery UI or third-party widgets. Defining a widget with the same name as you inherit from even allows you to extend widgets in place.</p><p>jQuery UI contains many widgets that maintain state and therefore have a slightly different usage pattern than typical jQuery plugins. All of jQuery UI's widgets use the same patterns, which is defined by the widget factory. So if you learn how to use one widget, then you'll know how to use all of them.</p><p><em>Note: This documentation shows examples using the <a href="/progressbar">progressbar widget</a> but the syntax is the same for every widget.</em></p><h3>Initialization</h3><p>In order to track the state of the widget, we must introduce a full life cycle for the widget. The life cycle starts when the widget is initalized. To initialize a widget, we simply call the plugin on one or more elements.</p><pre><code>
	 * $( "#elem" ).progressbar();
	 * </code></pre><p>This will initialize each element in the jQuery object, in this case the element with an id of <code>"elem"</code>. Because we called the <code>progressbar()</code> method with no parameters, the widget is initialized with its default options. We can pass a set of options during initialization in order to override the default options.</p><pre><code>
	 * $( "#elem" ).progressbar({ value: 20 });
	 * </code></pre><p>We can pass as many or as few options as we want during initialization. Any options that we don't pass will just use their default values.</p><p>The options are part of the widget's state, so we can set options after initialization as well. We'll see this later with the option method.</p><h3>Methods</h3><p>Now that the widget is initialized, we can query its state or perform actions on the widget. All actions after initialization take the form of a method call. To call a method on a widget, we pass the name of the method to the jQuery plugin. For example, to call the <code>value()</code> method on our progressbar widget, we would use:</p><pre><code>
	 * $( "#elem" ).progressbar( "value" );
	 * </code></pre><p>If the method accepts parameters, we can pass them after the method name. For example, to pass the parameter <code>40</code> to the <code>value()</code> method, we can use:</p><pre><code>
	 * $( "#elem" ).progressbar( "value", 40 );
	 * </code></pre><p>Just like other methods in jQuery, most widget methods return the jQuery object for chaining.</p><pre><code>
	 * $( "#elem" )
	 * .progressbar( "value", 90 )
	 * .addClass( "almost-done" );
	 * </code></pre><p>Each widget will have its own set of methods based on the functionality that the widget provides. However, there are a few methods that exist on all widgets, which are documented below.</p><h3>Events</h3><p>All widgets have events associated with their various behaviors to notify you when the state is changing. For most widgets, when the events are triggered, the names are prefixed with the widget name. For example, we can bind to progressbar's <code>change</code> event which is triggered whenever the value changes.</p><pre><code>
	 * $( "#elem" ).bind( "progressbarchange", function() {
	 * alert( "The value has changed!" );
	 * });
	 * </code></pre><p>Each event has a corresponding callback, which is exposed as an option. We can hook into progressbar's <code>change</code> callback instead of binding to the <code>progressbarchange</code> event, if we want to.</p><pre><code>
	 * $( "#elem" ).progressbar({
	 * change: function() {
	 * alert( "The value has changed!" );
	 * }
	 * });
	 * </code></pre><p>All widgets have a <code>create</code> event which is triggered upon instantiation.</p>
	 * The base widget used by the widget factory.
	 */
	[JavaScript(export="false", name="JQuery")]
	public class JQueryStatic {
		
		/**
		 * Disables the <code>JQueryStatic</code> if set to <code>true</code>.
		 */
		public var disabled:Boolean;
		
		/**
		 * If and how to animate the hiding of the <placeholder name="animated-element" />.
		 */
		public var hide:Boolean;
		
		/**
		 * If and how to animate the showing of the <placeholder name="animated-element" />.
		 */
		public var show:Boolean;
		
		/**
		 * The <code>_create()</code> method is the widget's constructor.
		 * There are no parameters, but <code>this.element</code> and <code>this.options</code> are already set.
		 */
		public function _create():void {
		}
		
		/**
		 * The public <a href="#method-destroy"><code>destroy()</code></a> method cleans up all common data, events, etc. and then delegates out to <code>_destroy()</code> for custom, widget-specific, cleanup.
		 */
		public function _destroy():void {
		}
		
		/**
		 * All widgets trigger the <a href="#event-create"><code>create</code></a> event. By default, no data is provided in the event, but this method can return an object which will be passed as the <code>create</code> event's data.
		 */
		public function _getCreateEventData():Object {
			return null;
		}
		
		/**
		 * This method allows the widget to define a custom method for defining options during instantiation. This user-provided options override the options returned by this method which override the default options.
		 */
		public function _getCreateOptions():Object {
			return null;
		}
		
		/**
		 * Widgets have the concept of initialization that is distinct from creation. Any time the plugin is called with no arguments or with only an option hash, the widget is initialized; this includes when the widget is created.
		 * <p><em>Note: Initialization should only be handled if there is a logical action to perform on successive calls to the widget with no arguments.</em></p>
		 */
		public function _init():void {
		}
		
		/**
		 * Called whenever the <a href="#method-option"><code>option()</code></a> method is called, regardless of the form in which the <code>option()</code> method was called.
		 * <p>Overriding this is useful if you can defer processor-intensive changes for multiple option changes.</p>
		 */
		public function _setOptions():void {
		}
		
		/**
		 * Called from the <a href="#method-_setOptions"><code>_setOptions()</code></a> method for each individual option. Widget state should be updated based on changes.
		 */
		public function _setOption():void {
		}
		
		/**
		 * Binds event handlers to the specified element(s). Delegation is supported via selectors inside the event names, e.g., "<code>click .foo</code>". The <code>_on()</code> method provides several benefits of direct event binding:
		 * <ul><li>Maintains proper <code>this</code> context inside the handlers.</li><li>Automatically handles disabled widgets: If the widget is disabled or the event occurs on an element with the <code>ui-state-disabled</code> class, the event handler is not invoked.</li><li>Event handlers are automatically namespaced and cleaned up on destroy.</li></ul>
		 */
		public function _on():void {
		}
		
		/**
		 * Unbinds event handlers from the specified element(s).
		 */
		public function _off():void {
		}
		
		/**
		 * Invokes the method of the same name from the parent widget, with any specified arguments. Essentially <code>.call()</code>.
		 */
		public function _super():void {
		}
		
		/**
		 * Invokes the method of the same name from the parent widget, with the array of arguments. Essentially <code>.apply()</code>.
		 */
		public function _superApply():void {
		}
		
		/**
		 * Invokes the provided function after a specified delay. Keeps <code>this</code> context correct. Essentially <code>setTimeout()</code>.
		 * <p>Returns the timeout ID for use with <code>clearTimeout()</code>.</p>
		 */
		public function _delay():Number {
			return 0;
		}
		
		/**
		 * Sets up <code>element</code> to apply the <code>ui-state-hover</code> class on hover.
		 * <p>The event handlers are automatically cleaned up on destroy.</p>
		 */
		public function _hoverable():void {
		}
		
		/**
		 * Sets up <code>element</code> to apply the <code>ui-state-focus</code> class on focus.
		 * <p>The event handlers are automatically cleaned up on destroy.</p>
		 */
		public function _focusable():void {
		}
		
		/**
		 * Triggers an event and its associated callback.
		 * <p>The option with the name equal to type is invoked as the callback.</p><p>The event name is the widget name + type.</p><p><em>Note: When providing data, you must provide all three parameters. If there is no event to pass along, just pass <code>null</code>.</em></p>
		 */
		public function _trigger():void {
		}
		
		/**
		 * Shows an element immediately, using built-in animation methods, or using custom effects.
		 * See the <a href="#option-show">show</a> option for possible <code>option</code> values.
		 */
		public function _show():void {
		}
		
		/**
		 * Hides an element immediately, using built-in animation methods, or using custom effects.
		 * See the <a href="#option-hide">hide</a> option for possible <code>option</code> values.
		 */
		public function _hide():void {
		}
		
		/**
		 * Removes the <code>JQueryStatic</code> functionality completely. This will return the element back to its pre-init state.
		 */
		public function destroy():void {
		}
		
		/**
		 * Disables the <code>JQueryStatic</code>.
		 */
		public function disable():void {
		}
		
		/**
		 * Enables the <code>JQueryStatic</code>.
		 */
		public function enable():void {
		}
		
		/**
		 * Gets the value currently associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option1(optionName:String):Object {
			return null;
		}
		
		/**
		 * Gets an object containing key/value pairs representing the current <code>JQueryStatic</code> options hash.
		 */
		[JavaScriptMethod(name="option")]
		public function option2():Object {
			return null;
		}
		
		/**
		 * Sets the value of the <code>JQueryStatic</code> option associated with the specified <code>optionName</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option3(optionName:String, value:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Sets one or more options for the <code>JQueryStatic</code>.
		 */
		[JavaScriptMethod(name="option")]
		public function option4(options:Object):JQueryUI {
			return null;
		}
		
		/**
		 * Returns a <code>jQuery</code> object containing the <placeholder name="widget-element" />.
		 */
		public function widget():JQueryUI {
			return null;
		}
		
		public function option(...params):* {
			return null;
		}
	}
}
