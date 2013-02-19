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
	 * Generated from file: net.json
	 */
	[JavaScript(export="false", name="net.Socket")]
	public class NetSocket {
		
		/**
		 * <p>Construct a new socket object.
		 * </p>
		 * <p><code>options</code> is an object with the following defaults:
		 * </p>
		 * <pre><code>{ fd: null
		 * type: null
		 * allowHalfOpen: false
		 * }</code></pre>
		 * <p><code>fd</code> allows you to specify the existing file descriptor of socket. <code>type</code>
		 * specified underlying protocol. It can be <code>&#39;tcp4&#39;</code>, <code>&#39;tcp6&#39;</code>, or <code>&#39;unix&#39;</code>.
		 * About <code>allowHalfOpen</code>, refer to <code>createServer()</code> and <code>&#39;end&#39;</code> event.
		 * </p>
		 * 
		 */
		public static function Socket(options:*):void {
		}
		
		/**
		 * <p>Opens the connection for a given socket. If <code>port</code> and <code>host</code> are given,
		 * then the socket will be opened as a TCP socket, if <code>host</code> is omitted,
		 * <code>localhost</code> will be assumed. If a <code>path</code> is given, the socket will be
		 * opened as a unix socket to that path.
		 * </p>
		 * <p>Normally this method is not needed, as <code>net.createConnection</code> opens the
		 * socket. Use this only if you are implementing a custom Socket.
		 * </p>
		 * <p>This function is asynchronous. When the [&#39;connect&#39;][] event is emitted the
		 * socket is established. If there is a problem connecting, the <code>&#39;connect&#39;</code> event
		 * will not be emitted, the <code>&#39;error&#39;</code> event will be emitted with the exception.
		 * </p>
		 * <p>The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect1(path:*, connectListener:*):void {
		}
		
		/**
		 * <p>Opens the connection for a given socket. If <code>port</code> and <code>host</code> are given,
		 * then the socket will be opened as a TCP socket, if <code>host</code> is omitted,
		 * <code>localhost</code> will be assumed. If a <code>path</code> is given, the socket will be
		 * opened as a unix socket to that path.
		 * </p>
		 * <p>Normally this method is not needed, as <code>net.createConnection</code> opens the
		 * socket. Use this only if you are implementing a custom Socket.
		 * </p>
		 * <p>This function is asynchronous. When the [&#39;connect&#39;][] event is emitted the
		 * socket is established. If there is a problem connecting, the <code>&#39;connect&#39;</code> event
		 * will not be emitted, the <code>&#39;error&#39;</code> event will be emitted with the exception.
		 * </p>
		 * <p>The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect2(port:*, host:*, connectListener:*):void {
		}
		
		/**
		 * <p>Opens the connection for a given socket. If <code>port</code> and <code>host</code> are given,
		 * then the socket will be opened as a TCP socket, if <code>host</code> is omitted,
		 * <code>localhost</code> will be assumed. If a <code>path</code> is given, the socket will be
		 * opened as a unix socket to that path.
		 * </p>
		 * <p>Normally this method is not needed, as <code>net.createConnection</code> opens the
		 * socket. Use this only if you are implementing a custom Socket.
		 * </p>
		 * <p>This function is asynchronous. When the [&#39;connect&#39;][] event is emitted the
		 * socket is established. If there is a problem connecting, the <code>&#39;connect&#39;</code> event
		 * will not be emitted, the <code>&#39;error&#39;</code> event will be emitted with the exception.
		 * </p>
		 * <p>The <code>connectListener</code> parameter will be added as an listener for the
		 * [&#39;connect&#39;][] event.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="connect")]
		public static function connect3(path:*, connectListener:*):void {
		}
		
		/**
		 * <p>Set the encoding for the socket as a Readable Stream. See
		 * [stream.setEncoding()][] for more information.
		 * </p>
		 * 
		 */
		public static function setEncoding(encoding:*):void {
		}
		
		/**
		 * <p>Sends data on the socket. The second parameter specifies the encoding in the
		 * case of a string--it defaults to UTF8 encoding.
		 * </p>
		 * <p>Returns <code>true</code> if the entire data was flushed successfully to the kernel
		 * buffer. Returns <code>false</code> if all or part of the data was queued in user memory.
		 * <code>&#39;drain&#39;</code> will be emitted when the buffer is again free.
		 * </p>
		 * <p>The optional <code>callback</code> parameter will be executed when the data is finally
		 * written out - this may not be immediately.
		 * </p>
		 * 
		 */
		public static function write(data:*, encoding:*, callback:*):void {
		}
		
		/**
		 * <p>Half-closes the socket. i.e., it sends a FIN packet. It is possible the
		 * server will still send some data.
		 * </p>
		 * <p>If <code>data</code> is specified, it is equivalent to calling
		 * <code>socket.write(data, encoding)</code> followed by <code>socket.end()</code>.
		 * </p>
		 * 
		 */
		public static function end(data:*, encoding:*):void {
		}
		
		/**
		 * <p>Ensures that no more I/O activity happens on this socket. Only necessary in
		 * case of errors (parse error or so).
		 * </p>
		 * 
		 */
		public static function destroy():void {
		}
		
		/**
		 * <p>Pauses the reading of data. That is, <code>&#39;data&#39;</code> events will not be emitted.
		 * Useful to throttle back an upload.
		 * </p>
		 * 
		 */
		public static function pause():void {
		}
		
		/**
		 * <p>Resumes reading after a call to <code>pause()</code>.
		 * </p>
		 * 
		 */
		public static function resume():void {
		}
		
		/**
		 * <p>Sets the socket to timeout after <code>timeout</code> milliseconds of inactivity on
		 * the socket. By default <code>net.Socket</code> do not have a timeout.
		 * </p>
		 * <p>When an idle timeout is triggered the socket will receive a <code>&#39;timeout&#39;</code>
		 * event but the connection will not be severed. The user must manually <code>end()</code>
		 * or <code>destroy()</code> the socket.
		 * </p>
		 * <p>If <code>timeout</code> is 0, then the existing idle timeout is disabled.
		 * </p>
		 * <p>The optional <code>callback</code> parameter will be added as a one time listener for the
		 * <code>&#39;timeout&#39;</code> event.
		 * </p>
		 * 
		 */
		public static function setTimeout(timeout:*, callback:*):void {
		}
		
		/**
		 * <p>Disables the Nagle algorithm. By default TCP connections use the Nagle
		 * algorithm, they buffer data before sending it off. Setting <code>true</code> for
		 * <code>noDelay</code> will immediately fire off data each time <code>socket.write()</code> is called.
		 * <code>noDelay</code> defaults to <code>true</code>.
		 * </p>
		 * 
		 */
		public static function setNoDelay(noDelay:*):void {
		}
		
		/**
		 * <p>Enable/disable keep-alive functionality, and optionally set the initial
		 * delay before the first keepalive probe is sent on an idle socket.
		 * <code>enable</code> defaults to <code>false</code>.
		 * </p>
		 * <p>Set <code>initialDelay</code> (in milliseconds) to set the delay between the last
		 * data packet received and the first keepalive probe. Setting 0 for
		 * initialDelay will leave the value unchanged from the default
		 * (or previous) setting. Defaults to <code>0</code>.
		 * </p>
		 * 
		 */
		public static function setKeepAlive(enable:*, initialDelay:*):void {
		}
		
		/**
		 * <p>Returns the bound address, the address family name and port of the
		 * socket as reported by the operating system. Returns an object with
		 * three properties, e.g.
		 * <code>{ port: 12346, family: &#39;IPv4&#39;, address: &#39;127.0.0.1&#39; }</code>
		 * </p>
		 * 
		 */
		public static function address():void {
		}
		
		public function connect(...params):* {
			return null;
		}
	}
}
