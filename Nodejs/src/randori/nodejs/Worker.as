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
	 * Generated from file: cluster.json
	 */
	[JavaScript(export="false")]
	public class Worker {
		
		/**
		 * <p>This function is equal to the send methods provided by
		 * <code>child_process.fork()</code>.  In the master you should use this function to
		 * send a message to a specific worker.  However in a worker you can also use
		 * <code>process.send(message)</code>, since this is the same function.
		 * </p>
		 * <p>This example will echo back all messages from the master:
		 * </p>
		 * <pre><code>if (cluster.isMaster) {
		 * var worker = cluster.fork();
		 * worker.send(&#39;hi there&#39;);
		 * } else if (cluster.isWorker) {
		 * process.on(&#39;message&#39;, function(msg) {
		 * process.send(msg);
		 * });
		 * }</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="send")]
		public static function send1(message:Object, sendHandle:Object):void {
		}
		
		/**
		 * <p>This function is equal to the send methods provided by
		 * <code>child_process.fork()</code>.  In the master you should use this function to
		 * send a message to a specific worker.  However in a worker you can also use
		 * <code>process.send(message)</code>, since this is the same function.
		 * </p>
		 * <p>This example will echo back all messages from the master:
		 * </p>
		 * <pre><code>if (cluster.isMaster) {
		 * var worker = cluster.fork();
		 * worker.send(&#39;hi there&#39;);
		 * } else if (cluster.isWorker) {
		 * process.on(&#39;message&#39;, function(msg) {
		 * process.send(msg);
		 * });
		 * }</code></pre>
		 * 
		 */
		[JavaScriptMethod(name="send")]
		public static function send2(message:*, sendHandle:*):void {
		}
		
		/**
		 * <p>This function will kill the worker, and inform the master to not spawn a
		 * new worker.  The boolean <code>suicide</code> lets you distinguish between voluntary
		 * and accidental exit.
		 * </p>
		 * <pre><code>cluster.on(&#39;exit&#39;, function(worker, code, signal) {
		 * if (worker.suicide === true) {
		 * console.log(&#39;Oh, it was just suicide\&#39; – no need to worry&#39;).
		 * }
		 * });
		 * // destroy worker
		 * worker.destroy();</code></pre>
		 * 
		 */
		public static function destroy():void {
		}
		
		/**
		 * <p>When calling this function the worker will no longer accept new connections, but
		 * they will be handled by any other listening worker. Existing connection will be
		 * allowed to exit as usual. When no more connections exist, the IPC channel to the worker
		 * will close allowing it to die graceful. When the IPC channel is closed the <code>disconnect</code>
		 * event will emit, this is then followed by the <code>exit</code> event, there is emitted when
		 * the worker finally die.
		 * </p>
		 * <p>Because there might be long living connections, it is useful to implement a timeout.
		 * This example ask the worker to disconnect and after 2 seconds it will destroy the
		 * server. An alternative would be to execute <code>worker.destroy()</code> after 2 seconds, but
		 * that would normally not allow the worker to do any cleanup if needed.
		 * </p>
		 * <pre><code>if (cluster.isMaster) {
		 * var worker = cluster.fork();
		 * var timeout;
		 * worker.on(&#39;listening&#39;, function(address) {
		 * worker.disconnect();
		 * timeout = setTimeout(function() {
		 * worker.send(&#39;force kill&#39;);
		 * }, 2000);
		 * });
		 * worker.on(&#39;disconnect&#39;, function() {
		 * clearTimeout(timeout);
		 * });
		 * } else if (cluster.isWorker) {
		 * var net = require(&#39;net&#39;);
		 * var server = net.createServer(function(socket) {
		 * // connection never end
		 * });
		 * server.listen(8000);
		 * server.on(&#39;close&#39;, function() {
		 * // cleanup
		 * });
		 * process.on(&#39;message&#39;, function(msg) {
		 * if (msg === &#39;force kill&#39;) {
		 * server.destroy();
		 * }
		 * });
		 * }</code></pre>
		 * 
		 */
		public static function disconnect():void {
		}
		
		public function send(...params):* {
			return null;
		}
	}
}
