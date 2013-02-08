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
 * @author Randori Node.js generator
*/
package randori.nodejs
{
	
	public class Cluster
	{
		public function Cluster()
		{
			super();
		}
		
		/*
		 * <p><code>setupMaster</code> is used to change the default &#39;fork&#39; behavior. The new settings
		 * are effective immediately and permanently, they cannot be changed later on.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var cluster = require(&quot;cluster&quot;);
		 * cluster.setupMaster({
		 * exec : &quot;worker.js&quot;,
		 * args : [&quot;--use&quot;, &quot;https&quot;],
		 * silent : true
		 * });
		 * cluster.fork();</code></pre>
		 * 
		*/
		public function setupMaster(settings:*):void
		{
		}
		
		/*
		 * <p><code>setupMaster</code> is used to change the default &#39;fork&#39; behavior. The new settings
		 * are effective immediately and permanently, they cannot be changed later on.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var cluster = require(&quot;cluster&quot;);
		 * cluster.setupMaster({
		 * exec : &quot;worker.js&quot;,
		 * args : [&quot;--use&quot;, &quot;https&quot;],
		 * silent : true
		 * });
		 * cluster.fork();</code></pre>
		 * 
		*/
		public function setupMaster(settings:*):void
		{
		}
		
		/*
		 * <p>Spawn a new worker process. This can only be called from the master process.
		 * </p>
		 * 
		*/
		public function fork(env:*):void
		{
		}
		
		/*
		 * <p>Spawn a new worker process. This can only be called from the master process.
		 * </p>
		 * 
		*/
		public function fork(env:*):void
		{
		}
		
		/*
		 * <p>When calling this method, all workers will commit a graceful suicide. When they are
		 * disconnected all internal handlers will be closed, allowing the master process to
		 * die graceful if no other event is waiting.
		 * </p>
		 * <p>The method takes an optional callback argument which will be called when finished.
		 * </p>
		 * 
		*/
		public function disconnect(callback:*):void
		{
		}
		
		/*
		 * <p>When calling this method, all workers will commit a graceful suicide. When they are
		 * disconnected all internal handlers will be closed, allowing the master process to
		 * die graceful if no other event is waiting.
		 * </p>
		 * <p>The method takes an optional callback argument which will be called when finished.
		 * </p>
		 * 
		*/
		public function disconnect(callback:*):void
		{
		}
	}
}
