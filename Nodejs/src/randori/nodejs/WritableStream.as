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
 * @author Randori Nodejs generator
*/
package randori.nodejs {
	
	
	/**
	 * Generated from file: stream.json
	 */
	[JavaScript(export="false", name="Writable Stream")]
	public class WritableStream {
		
		/**
		 * <p>Writes <code>string</code> with the given <code>encoding</code> to the stream.  Returns <code>true</code>
		 * if the string has been flushed to the kernel buffer.  Returns <code>false</code> to
		 * indicate that the kernel buffer is full, and the data will be sent out
		 * in the future. The <code>&#39;drain&#39;</code> event will indicate when the kernel buffer
		 * is empty again. The <code>encoding</code> defaults to <code>&#39;utf8&#39;</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="write")]
		public static function write1(string:*, encoding:*):void {
		}
		
		/**
		 * <p>Same as the above except with a raw buffer.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="write")]
		public static function write2(buffer:*):void {
		}
		
		/**
		 * <p>Terminates the stream with EOF or FIN.  This call will allow queued
		 * write data to be sent before closing the stream.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="end")]
		public static function end1():void {
		}
		
		/**
		 * <p>Sends <code>string</code> with the given <code>encoding</code> and terminates the stream with
		 * EOF or FIN. This is useful to reduce the number of packets sent.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="end")]
		public static function end2(string:*, encoding:*):void {
		}
		
		/**
		 * <p>Same as above but with a <code>buffer</code>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="end")]
		public static function end3(buffer:*):void {
		}
		
		/**
		 * <p>Closes the underlying file descriptor. Stream is no longer <code>writable</code>
		 * nor <code>readable</code>.  The stream will not emit any more &#39;data&#39;, or &#39;end&#39;
		 * events. Any queued write data will not be sent.  The stream should emit
		 * &#39;close&#39; event once its resources have been disposed of.
		 * </p>
		 * 
		 */
		public static function destroy():void {
		}
		
		/**
		 * <p>After the write queue is drained, close the file descriptor.
		 * <code>destroySoon()</code> can still destroy straight away, as long as there is no
		 * data left in the queue for writes.
		 * </p>
		 * 
		 */
		public static function destroySoon():void {
		}
		
		public function write(...params):* {
			return null;
		}
		
		public function end(...params):* {
			return null;
		}
	}
}
