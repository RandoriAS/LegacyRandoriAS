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
	 * Generated from file: http.json
	 */
	[JavaScript(export="false", name="http.ClientRequest")]
	public class HttpClientRequest {
		
		/**
		 * <p>Sends a chunk of the body.  By calling this method
		 * many times, the user can stream a request body to a
		 * server--in that case it is suggested to use the
		 * <code>[&#39;Transfer-Encoding&#39;, &#39;chunked&#39;]</code> header line when
		 * creating the request.
		 * </p>
		 * <p>The <code>chunk</code> argument should be a [Buffer][] or a string.
		 * </p>
		 * <p>The <code>encoding</code> argument is optional and only applies when <code>chunk</code> is a string.
		 * Defaults to <code>&#39;utf8&#39;</code>.
		 * </p>
		 * 
		 */
		public static function write(chunk:*, encoding:*):void {
		}
		
		/**
		 * <p>Finishes sending the request. If any parts of the body are
		 * unsent, it will flush them to the stream. If the request is
		 * chunked, this will send the terminating <code>&#39;0\r\n\r\n&#39;</code>.
		 * </p>
		 * <p>If <code>data</code> is specified, it is equivalent to calling
		 * <code>request.write(data, encoding)</code> followed by <code>request.end()</code>.
		 * </p>
		 * 
		 */
		public static function end(data:*, encoding:*):void {
		}
		
		/**
		 * <p>Aborts a request.  (New since v0.3.8.)
		 * </p>
		 * 
		 */
		public static function abort():void {
		}
		
		/**
		 * <p>Once a socket is assigned to this request and is connected
		 * [socket.setTimeout()][] will be called.
		 * </p>
		 * 
		 */
		public static function setTimeout(timeout:*, callback:*):void {
		}
		
		/**
		 * <p>Once a socket is assigned to this request and is connected
		 * [socket.setNoDelay()][] will be called.
		 * </p>
		 * 
		 */
		public static function setNoDelay(noDelay:*):void {
		}
		
		/**
		 * <p>Once a socket is assigned to this request and is connected
		 * [socket.setKeepAlive()][] will be called.
		 * </p>
		 * 
		 */
		public static function setSocketKeepAlive(enable:*, initialDelay:*):void {
		}
	}
}
