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
	 * Generated from file: tls.json
	 */
	[JavaScript(export="false", name="tls.Server")]
	public class TlsServer {
		
		/**
		 * <p>Begin accepting connections on the specified <code>port</code> and <code>host</code>.  If the
		 * <code>host</code> is omitted, the server will accept connections directed to any
		 * IPv4 address (<code>INADDR_ANY</code>).
		 * </p>
		 * <p>This function is asynchronous. The last parameter <code>callback</code> will be called
		 * when the server has been bound.
		 * </p>
		 * <p>See <code>net.Server</code> for more information.
		 * </p>
		 * 
		 */
		public static function listen(port:*, host:*, callback:*):void {
		}
		
		/**
		 * <p>Stops the server from accepting new connections. This function is
		 * asynchronous, the server is finally closed when the server emits a <code>&#39;close&#39;</code>
		 * event.
		 * </p>
		 * 
		 */
		public static function close():void {
		}
		
		/**
		 * <p>Returns the bound address, the address family name and port of the
		 * server as reported by the operating system.  See [net.Server.address()][] for
		 * more information.
		 * </p>
		 * 
		 */
		public static function address():void {
		}
		
		/**
		 * <p>Add secure context that will be used if client request&#39;s SNI hostname is
		 * matching passed <code>hostname</code> (wildcards can be used). <code>credentials</code> can contain
		 * <code>key</code>, <code>cert</code> and <code>ca</code>.
		 * </p>
		 * 
		 */
		public static function addContext(hostname:*, credentials:*):void {
		}
	}
}
