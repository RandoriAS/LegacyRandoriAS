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

	[Javascript(export="false")]
	public class Promise {
		public function Promise() {
			super();
		}

		/*
		 * Return a Promise object to observe when all actions of a certain type bound to the collection, queued or not, have finished.
		 * @since 1.6
		 * @param type The type of queue that needs to be observed.
		 * @param target Object onto which the promise methods have to be attached
		*/
		public function promise(type:String='', target:Object=null):Promise {
			return null;
		}

		[JavascriptMethod(name="then")]
		/*
		 * Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		 * @since 1.8
		 * @param handler1 A function that is called when the Deferred is resolved.
		 * @param handler2 An optional function that is called when the Deferred is rejected.
		 * @param handler3 An optional function that is called when progress notifications are sent to the Deferred.
		*/
		public function then1(handler1:Function, handler2:Function=null, handler3:Function=null):Promise {
			return null;
		}

		[JavascriptMethod(name="then")]
		/*
		 * Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		 * @since 1.5
		 * @param handler1 A function, or array of functions, called when the Deferred is resolved.
		 * @param handler2 A function, or array of functions, called when the Deferred is rejected.
		*/
		public function then2(handler1:Function, handler2:Function):Promise {
			return null;
		}

		[JavascriptMethod(name="then")]
		/*
		 * Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		 * @since 1.7
		 * @param handler1 A function, or array of functions, called when the Deferred is resolved.
		 * @param handler2 A function, or array of functions, called when the Deferred is rejected.
		 * @param handler3 A function, or array of functions, called when the Deferred notifies progress.
		*/
		public function then3(handler1:Function, handler2:Function, handler3:Function=null):Promise {
			return null;
		}

		/*
		 * Add handlers to be called when the Deferred object is resolved.
		 * @since 1.5
		 * @param handler1 A function, or array of functions, that are called when the Deferred is resolved.
		 * @param handler2 Optional additional functions, or arrays of functions, that are called when the Deferred is resolved.
		*/
		public function done(handler1:Function, handler2:Function=null):Deferred {
			return null;
		}

		/*
		 * Add handlers to be called when the Deferred object is rejected.
		 * @since 1.5
		 * @param handler1 A function, or array of functions, that are called when the Deferred is rejected.
		 * @param handler2 Optional additional functions, or arrays of functions, that are called when the Deferred is rejected.
		*/
		public function fail(handler1:Function, handler2:Function=null):Deferred {
			return null;
		}

		/*
		 * Add handlers to be called when the Deferred object is either resolved or rejected.
		 * @since 1.6
		 * @param handler1 A function, or array of functions, that is called when the Deferred is resolved or rejected.
		 * @param handler2 Optional additional functions, or arrays of functions, that are called when the Deferred is resolved or rejected.
		*/
		public function always(handler1:Function, handler2:Function=null):Deferred {
			return null;
		}

		[JavascriptMethod(name="pipe")]
		/*
		 * Utility method to filter and/or chain Deferreds.
		 * @since 1.6
		 * @param handler1 An optional function that is called when the Deferred is resolved.
		 * @param handler2 An optional function that is called when the Deferred is rejected.
		*/
		public function pipe1(handler1:Function=null, handler2:Function=null):Promise {
			return null;
		}

		[JavascriptMethod(name="pipe")]
		/*
		 * Utility method to filter and/or chain Deferreds.
		 * @since 1.7
		 * @param handler1 An optional function that is called when the Deferred is resolved.
		 * @param handler2 An optional function that is called when the Deferred is rejected.
		 * @param handler3 An optional function that is called when progress notifications are sent to the Deferred.
		*/
		public function pipe2(handler1:Function=null, handler2:Function=null, handler3:Function=null):Promise {
			return null;
		}

		/*
		 * Add handlers to be called when the Deferred object generates progress notifications.
		 * @since 1.7
		 * @param handler A function, or array of functions, that is called when the Deferred generates progress notifications.
		*/
		public function progress(handler:Function):Deferred {
			return null;
		}

		/*
		 * Determine the current state of a Deferred object.
		 * @since 1.7
		*/
		public function state():String {
			return '';
		}
	}
}
