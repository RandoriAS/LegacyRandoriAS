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
	[JavaScript(export="false", name="http.Server")]
	public class HttpServer {
		
		/**
		 * <p>Begin accepting connections on the specified port and hostname.  If the
		 * hostname is omitted, the server will accept connections directed to any
		 * IPv4 address (<code>INADDR_ANY</code>).
		 * </p>
		 * <p>To listen to a unix socket, supply a filename instead of port and hostname.
		 * </p>
		 * <p>Backlog is the maximum length of the queue of pending connections.
		 * The actual length will be determined by your OS through sysctl settings such as
		 * <code>tcp_max_syn_backlog</code> and <code>somaxconn</code> on linux. The default value of this
		 * parameter is 511 (not 512).
		 * </p>
		 * <p>This function is asynchronous. The last parameter <code>callback</code> will be added as
		 * a listener for the [&#39;listening&#39;][] event.  See also [net.Server.listen(port)][].
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="listen")]
		public static function listen1(port:*, hostname:*, backlog:*, callback:*):void {
		}
		
		/**
		 * <p>Start a UNIX socket server listening for connections on the given <code>path</code>.
		 * </p>
		 * <p>This function is asynchronous. The last parameter <code>callback</code> will be added as
		 * a listener for the [&#39;listening&#39;][] event.  See also [net.Server.listen(path)][].
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="listen")]
		public static function listen2(path:*, callback:*):void {
		}
		
		/**
		 * <p>The <code>handle</code> object can be set to either a server or socket (anything
		 * with an underlying <code>_handle</code> member), or a <code>{fd: &lt;n&gt;}</code> object.
		 * </p>
		 * <p>This will cause the server to accept connections on the specified
		 * handle, but it is presumed that the file descriptor or handle has
		 * already been bound to a port or domain socket.
		 * </p>
		 * <p>Listening on a file descriptor is not supported on Windows.
		 * </p>
		 * <p>This function is asynchronous. The last parameter <code>callback</code> will be added as
		 * a listener for the <a href="net.html#event_listening_">&#39;listening&#39;</a> event.
		 * See also <a href="net.html#net_server_listen_handle_callback">net.Server.listen()</a>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="listen")]
		public static function listen3(handle:Object, callback:Function):void {
		}
		
		/**
		 * <p>The <code>handle</code> object can be set to either a server or socket (anything
		 * with an underlying <code>_handle</code> member), or a <code>{fd: &lt;n&gt;}</code> object.
		 * </p>
		 * <p>This will cause the server to accept connections on the specified
		 * handle, but it is presumed that the file descriptor or handle has
		 * already been bound to a port or domain socket.
		 * </p>
		 * <p>Listening on a file descriptor is not supported on Windows.
		 * </p>
		 * <p>This function is asynchronous. The last parameter <code>callback</code> will be added as
		 * a listener for the <a href="net.html#event_listening_">&#39;listening&#39;</a> event.
		 * See also <a href="net.html#net_server_listen_handle_callback">net.Server.listen()</a>.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="listen")]
		public static function listen4(handle:*, callback:*):void {
		}
		
		/**
		 * <p>Stops the server from accepting new connections.  See [net.Server.close()][].
		 * </p>
		 * 
		 */
		public static function close(callback:*):void {
		}
		
		public function listen(...params):* {
			return null;
		}
	}
}
