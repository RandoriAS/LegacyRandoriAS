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
	
	public class ChildProcess
	{
		public function ChildProcess()
		{
			super();
		}
		
		/*
		 * <p>Launches a new process with the given <code>command</code>, with  command line arguments in <code>args</code>.
		 * If omitted, <code>args</code> defaults to an empty Array.
		 * </p>
		 * <p>The third argument is used to specify additional options, which defaults to:
		 * </p>
		 * <pre><code>{ cwd: undefined,
		 * env: process.env
		 * }</code></pre>
		 * <p><code>cwd</code> allows you to specify the working directory from which the process is spawned.
		 * Use <code>env</code> to specify environment variables that will be visible to the new process.
		 * </p>
		 * <p>Example of running <code>ls -lh /usr</code>, capturing <code>stdout</code>, <code>stderr</code>, and the exit code:
		 * </p>
		 * <pre><code>var spawn = require(&#39;child_process&#39;).spawn,
		 * ls    = spawn(&#39;ls&#39;, [&#39;-lh&#39;, &#39;/usr&#39;]);
		 * ls.stdout.on(&#39;data&#39;, function (data) {
		 * console.log(&#39;stdout: &#39; + data);
		 * });
		 * ls.stderr.on(&#39;data&#39;, function (data) {
		 * console.log(&#39;stderr: &#39; + data);
		 * });
		 * ls.on(&#39;exit&#39;, function (code) {
		 * console.log(&#39;child process exited with code &#39; + code);
		 * });</code></pre>
		 * <p>Example: A very elaborate way to run &#39;ps ax | grep ssh&#39;
		 * </p>
		 * <pre><code>var spawn = require(&#39;child_process&#39;).spawn,
		 * ps    = spawn(&#39;ps&#39;, [&#39;ax&#39;]),
		 * grep  = spawn(&#39;grep&#39;, [&#39;ssh&#39;]);
		 * ps.stdout.on(&#39;data&#39;, function (data) {
		 * grep.stdin.write(data);
		 * });
		 * ps.stderr.on(&#39;data&#39;, function (data) {
		 * console.log(&#39;ps stderr: &#39; + data);
		 * });
		 * ps.on(&#39;exit&#39;, function (code) {
		 * if (code !== 0) {
		 * console.log(&#39;ps process exited with code &#39; + code);
		 * }
		 * grep.stdin.end();
		 * });
		 * grep.stdout.on(&#39;data&#39;, function (data) {
		 * console.log(&#39;&#39; + data);
		 * });
		 * grep.stderr.on(&#39;data&#39;, function (data) {
		 * console.log(&#39;grep stderr: &#39; + data);
		 * });
		 * grep.on(&#39;exit&#39;, function (code) {
		 * if (code !== 0) {
		 * console.log(&#39;grep process exited with code &#39; + code);
		 * }
		 * });</code></pre>
		 * <p>Example of checking for failed exec:
		 * </p>
		 * <pre><code>var spawn = require(&#39;child_process&#39;).spawn,
		 * child = spawn(&#39;bad_command&#39;);
		 * child.stderr.setEncoding(&#39;utf8&#39;);
		 * child.stderr.on(&#39;data&#39;, function (data) {
		 * if (/^execvp\(\)/.test(data)) {
		 * console.log(&#39;Failed to start child process.&#39;);
		 * }
		 * });</code></pre>
		 * <p>Note that if spawn receives an empty options object, it will result in
		 * spawning the process with an empty environment rather than using
		 * <code>process.env</code>. This due to backwards compatibility issues with a deprecated
		 * API.
		 * </p>
		 * <p>The &#39;stdio&#39; option to <code>child_process.spawn()</code> is an array where each
		 * index corresponds to a fd in the child.  The value is one of the following:
		 * </p>
		 * <ol>
		 * <li><code>&#39;pipe&#39;</code> - Create a pipe between the child process and the parent process.
		 * The parent end of the pipe is exposed to the parent as a property on the
		 * <code>child_process</code> object as <code>ChildProcess.stdio[fd]</code>. Pipes created for
		 * fds 0 - 2 are also available as ChildProcess.stdin, ChildProcess.stdout
		 * and ChildProcess.stderr, respectively.</li>
		 * <li><code>&#39;ipc&#39;</code> - Create an IPC channel for passing messages/file descriptors
		 * between parent and child. A ChildProcess may have at most <em>one</em> IPC stdio
		 * file descriptor. Setting this option enables the ChildProcess.send() method.
		 * If the child writes JSON messages to this file descriptor, then this will
		 * trigger ChildProcess.on(&#39;message&#39;).  If the child is a Node.js program, then
		 * the presence of an IPC channel will enable process.send() and
		 * process.on(&#39;message&#39;).</li>
		 * <li><code>&#39;ignore&#39;</code> - Do not set this file descriptor in the child. Note that Node
		 * will always open fd 0 - 2 for the processes it spawns. When any of these is
		 * ignored node will open <code>/dev/null</code> and attach it to the child&#39;s fd.</li>
		 * <li><code>Stream</code> object - Share a readable or writable stream that refers to a tty,
		 * file, socket, or a pipe with the child process. The stream&#39;s underlying
		 * file descriptor is duplicated in the child process to the fd that
		 * corresponds to the index in the <code>stdio</code> array.</li>
		 * <li>Positive integer - The integer value is interpreted as a file descriptor
		 * that is is currently open in the parent process. It is shared with the child
		 * process, similar to how <code>Stream</code> objects can be shared.</li>
		 * <li><code>null</code>, <code>undefined</code> - Use default value. For stdio fds 0, 1 and 2 (in other
		 * words, stdin, stdout, and stderr) a pipe is created. For fd 3 and up, the
		 * default is <code>&#39;ignore&#39;</code>.</li>
		 * </ol>
		 * <p>As a shorthand, the <code>stdio</code> argument may also be one of the following
		 * strings, rather than an array:
		 * </p>
		 * <ul>
		 * <li><code>ignore</code> - <code>[&#39;ignore&#39;, &#39;ignore&#39;, &#39;ignore&#39;]</code></li>
		 * <li><code>pipe</code> - <code>[&#39;pipe&#39;, &#39;pipe&#39;, &#39;pipe&#39;]</code></li>
		 * <li><code>inherit</code> - <code>[process.stdin, process.stdout, process.stderr]</code> or <code>[0,1,2]</code></li>
		 * </ul>
		 * <p>Example:
		 * </p>
		 * <pre><code>var spawn = require(&#39;child_process&#39;).spawn;
		 * // Child will use parent&#39;s stdios
		 * spawn(&#39;prg&#39;, [], { stdio: &#39;inherit&#39; });
		 * // Spawn child sharing only stderr
		 * spawn(&#39;prg&#39;, [], { stdio: [&#39;pipe&#39;, &#39;pipe&#39;, process.stderr] });
		 * // Open an extra fd=4, to interact with programs present a
		 * // startd-style interface.
		 * spawn(&#39;prg&#39;, [], { stdio: [&#39;pipe&#39;, null, null, null, &#39;pipe&#39;] });</code></pre>
		 * <p>If the <code>detached</code> option is set, the child process will be made the leader of a
		 * new process group.  This makes it possible for the child to continue running
		 * after the parent exits.
		 * </p>
		 * <p>By default, the parent will wait for the detached child to exit.  To prevent
		 * the parent from waiting for a given <code>child</code>, use the <code>child.unref()</code> method,
		 * and the parent&#39;s event loop will not include the child in its reference count.
		 * </p>
		 * <p>Example of detaching a long-running process and redirecting its output to a
		 * file:
		 * </p>
		 * <pre><code> var fs = require(&#39;fs&#39;),
		 * spawn = require(&#39;child_process&#39;).spawn,
		 * out = fs.openSync(&#39;./out.log&#39;, &#39;a&#39;),
		 * err = fs.openSync(&#39;./out.log&#39;, &#39;a&#39;);
		 * var child = spawn(&#39;prg&#39;, [], {
		 * detached: true,
		 * stdio: [ &#39;ignore&#39;, out, err ]
		 * });
		 * child.unref();</code></pre>
		 * <p>When using the <code>detached</code> option to start a long-running process, the process
		 * will not stay running in the background unless it is provided with a <code>stdio</code>
		 * configuration that is not connected to the parent.  If the parent&#39;s <code>stdio</code> is
		 * inherited, the child will remain attached to the controlling terminal.
		 * </p>
		 * <p>There is a deprecated option called <code>customFds</code> which allows one to specify
		 * specific file descriptors for the stdio of the child process. This API was
		 * not portable to all platforms and therefore removed.
		 * With <code>customFds</code> it was possible to hook up the new process&#39; <code>[stdin, stdout,
		 * stderr]</code> to existing streams; <code>-1</code> meant that a new stream should be created.
		 * Use at your own risk.
		 * </p>
		 * <p>There are several internal options. In particular <code>stdinStream</code>,
		 * <code>stdoutStream</code>, <code>stderrStream</code>. They are for INTERNAL USE ONLY. As with all
		 * undocumented APIs in Node, they should not be used.
		 * </p>
		 * <p>See also: <code>child_process.exec()</code> and <code>child_process.fork()</code>
		 * </p>
		 * 
		*/
		public function spawn(command:*, args:*, options:*):void
		{
		}
		
		/*
		 * <p>Launches a new process with the given <code>command</code>, with  command line arguments in <code>args</code>.
		 * If omitted, <code>args</code> defaults to an empty Array.
		 * </p>
		 * <p>The third argument is used to specify additional options, which defaults to:
		 * </p>
		 * <pre><code>{ cwd: undefined,
		 * env: process.env
		 * }</code></pre>
		 * <p><code>cwd</code> allows you to specify the working directory from which the process is spawned.
		 * Use <code>env</code> to specify environment variables that will be visible to the new process.
		 * </p>
		 * <p>Example of running <code>ls -lh /usr</code>, capturing <code>stdout</code>, <code>stderr</code>, and the exit code:
		 * </p>
		 * <pre><code>var spawn = require(&#39;child_process&#39;).spawn,
		 * ls    = spawn(&#39;ls&#39;, [&#39;-lh&#39;, &#39;/usr&#39;]);
		 * ls.stdout.on(&#39;data&#39;, function (data) {
		 * console.log(&#39;stdout: &#39; + data);
		 * });
		 * ls.stderr.on(&#39;data&#39;, function (data) {
		 * console.log(&#39;stderr: &#39; + data);
		 * });
		 * ls.on(&#39;exit&#39;, function (code) {
		 * console.log(&#39;child process exited with code &#39; + code);
		 * });</code></pre>
		 * <p>Example: A very elaborate way to run &#39;ps ax | grep ssh&#39;
		 * </p>
		 * <pre><code>var spawn = require(&#39;child_process&#39;).spawn,
		 * ps    = spawn(&#39;ps&#39;, [&#39;ax&#39;]),
		 * grep  = spawn(&#39;grep&#39;, [&#39;ssh&#39;]);
		 * ps.stdout.on(&#39;data&#39;, function (data) {
		 * grep.stdin.write(data);
		 * });
		 * ps.stderr.on(&#39;data&#39;, function (data) {
		 * console.log(&#39;ps stderr: &#39; + data);
		 * });
		 * ps.on(&#39;exit&#39;, function (code) {
		 * if (code !== 0) {
		 * console.log(&#39;ps process exited with code &#39; + code);
		 * }
		 * grep.stdin.end();
		 * });
		 * grep.stdout.on(&#39;data&#39;, function (data) {
		 * console.log(&#39;&#39; + data);
		 * });
		 * grep.stderr.on(&#39;data&#39;, function (data) {
		 * console.log(&#39;grep stderr: &#39; + data);
		 * });
		 * grep.on(&#39;exit&#39;, function (code) {
		 * if (code !== 0) {
		 * console.log(&#39;grep process exited with code &#39; + code);
		 * }
		 * });</code></pre>
		 * <p>Example of checking for failed exec:
		 * </p>
		 * <pre><code>var spawn = require(&#39;child_process&#39;).spawn,
		 * child = spawn(&#39;bad_command&#39;);
		 * child.stderr.setEncoding(&#39;utf8&#39;);
		 * child.stderr.on(&#39;data&#39;, function (data) {
		 * if (/^execvp\(\)/.test(data)) {
		 * console.log(&#39;Failed to start child process.&#39;);
		 * }
		 * });</code></pre>
		 * <p>Note that if spawn receives an empty options object, it will result in
		 * spawning the process with an empty environment rather than using
		 * <code>process.env</code>. This due to backwards compatibility issues with a deprecated
		 * API.
		 * </p>
		 * <p>The &#39;stdio&#39; option to <code>child_process.spawn()</code> is an array where each
		 * index corresponds to a fd in the child.  The value is one of the following:
		 * </p>
		 * <ol>
		 * <li><code>&#39;pipe&#39;</code> - Create a pipe between the child process and the parent process.
		 * The parent end of the pipe is exposed to the parent as a property on the
		 * <code>child_process</code> object as <code>ChildProcess.stdio[fd]</code>. Pipes created for
		 * fds 0 - 2 are also available as ChildProcess.stdin, ChildProcess.stdout
		 * and ChildProcess.stderr, respectively.</li>
		 * <li><code>&#39;ipc&#39;</code> - Create an IPC channel for passing messages/file descriptors
		 * between parent and child. A ChildProcess may have at most <em>one</em> IPC stdio
		 * file descriptor. Setting this option enables the ChildProcess.send() method.
		 * If the child writes JSON messages to this file descriptor, then this will
		 * trigger ChildProcess.on(&#39;message&#39;).  If the child is a Node.js program, then
		 * the presence of an IPC channel will enable process.send() and
		 * process.on(&#39;message&#39;).</li>
		 * <li><code>&#39;ignore&#39;</code> - Do not set this file descriptor in the child. Note that Node
		 * will always open fd 0 - 2 for the processes it spawns. When any of these is
		 * ignored node will open <code>/dev/null</code> and attach it to the child&#39;s fd.</li>
		 * <li><code>Stream</code> object - Share a readable or writable stream that refers to a tty,
		 * file, socket, or a pipe with the child process. The stream&#39;s underlying
		 * file descriptor is duplicated in the child process to the fd that
		 * corresponds to the index in the <code>stdio</code> array.</li>
		 * <li>Positive integer - The integer value is interpreted as a file descriptor
		 * that is is currently open in the parent process. It is shared with the child
		 * process, similar to how <code>Stream</code> objects can be shared.</li>
		 * <li><code>null</code>, <code>undefined</code> - Use default value. For stdio fds 0, 1 and 2 (in other
		 * words, stdin, stdout, and stderr) a pipe is created. For fd 3 and up, the
		 * default is <code>&#39;ignore&#39;</code>.</li>
		 * </ol>
		 * <p>As a shorthand, the <code>stdio</code> argument may also be one of the following
		 * strings, rather than an array:
		 * </p>
		 * <ul>
		 * <li><code>ignore</code> - <code>[&#39;ignore&#39;, &#39;ignore&#39;, &#39;ignore&#39;]</code></li>
		 * <li><code>pipe</code> - <code>[&#39;pipe&#39;, &#39;pipe&#39;, &#39;pipe&#39;]</code></li>
		 * <li><code>inherit</code> - <code>[process.stdin, process.stdout, process.stderr]</code> or <code>[0,1,2]</code></li>
		 * </ul>
		 * <p>Example:
		 * </p>
		 * <pre><code>var spawn = require(&#39;child_process&#39;).spawn;
		 * // Child will use parent&#39;s stdios
		 * spawn(&#39;prg&#39;, [], { stdio: &#39;inherit&#39; });
		 * // Spawn child sharing only stderr
		 * spawn(&#39;prg&#39;, [], { stdio: [&#39;pipe&#39;, &#39;pipe&#39;, process.stderr] });
		 * // Open an extra fd=4, to interact with programs present a
		 * // startd-style interface.
		 * spawn(&#39;prg&#39;, [], { stdio: [&#39;pipe&#39;, null, null, null, &#39;pipe&#39;] });</code></pre>
		 * <p>If the <code>detached</code> option is set, the child process will be made the leader of a
		 * new process group.  This makes it possible for the child to continue running
		 * after the parent exits.
		 * </p>
		 * <p>By default, the parent will wait for the detached child to exit.  To prevent
		 * the parent from waiting for a given <code>child</code>, use the <code>child.unref()</code> method,
		 * and the parent&#39;s event loop will not include the child in its reference count.
		 * </p>
		 * <p>Example of detaching a long-running process and redirecting its output to a
		 * file:
		 * </p>
		 * <pre><code> var fs = require(&#39;fs&#39;),
		 * spawn = require(&#39;child_process&#39;).spawn,
		 * out = fs.openSync(&#39;./out.log&#39;, &#39;a&#39;),
		 * err = fs.openSync(&#39;./out.log&#39;, &#39;a&#39;);
		 * var child = spawn(&#39;prg&#39;, [], {
		 * detached: true,
		 * stdio: [ &#39;ignore&#39;, out, err ]
		 * });
		 * child.unref();</code></pre>
		 * <p>When using the <code>detached</code> option to start a long-running process, the process
		 * will not stay running in the background unless it is provided with a <code>stdio</code>
		 * configuration that is not connected to the parent.  If the parent&#39;s <code>stdio</code> is
		 * inherited, the child will remain attached to the controlling terminal.
		 * </p>
		 * <p>There is a deprecated option called <code>customFds</code> which allows one to specify
		 * specific file descriptors for the stdio of the child process. This API was
		 * not portable to all platforms and therefore removed.
		 * With <code>customFds</code> it was possible to hook up the new process&#39; <code>[stdin, stdout,
		 * stderr]</code> to existing streams; <code>-1</code> meant that a new stream should be created.
		 * Use at your own risk.
		 * </p>
		 * <p>There are several internal options. In particular <code>stdinStream</code>,
		 * <code>stdoutStream</code>, <code>stderrStream</code>. They are for INTERNAL USE ONLY. As with all
		 * undocumented APIs in Node, they should not be used.
		 * </p>
		 * <p>See also: <code>child_process.exec()</code> and <code>child_process.fork()</code>
		 * </p>
		 * 
		*/
		public function spawn(command:*, args:*, options:*):void
		{
		}
		
		/*
		 * <p>Runs a command in a shell and buffers the output.
		 * </p>
		 * <pre><code>var exec = require(&#39;child_process&#39;).exec,
		 * child;
		 * child = exec(&#39;cat *.js bad_file | wc -l&#39;,
		 * function (error, stdout, stderr) {
		 * console.log(&#39;stdout: &#39; + stdout);
		 * console.log(&#39;stderr: &#39; + stderr);
		 * if (error !== null) {
		 * console.log(&#39;exec error: &#39; + error);
		 * }
		 * });</code></pre>
		 * <p>The callback gets the arguments <code>(error, stdout, stderr)</code>. On success, <code>error</code>
		 * will be <code>null</code>.  On error, <code>error</code> will be an instance of <code>Error</code> and <code>err.code</code>
		 * will be the exit code of the child process, and <code>err.signal</code> will be set to the
		 * signal that terminated the process.
		 * </p>
		 * <p>There is a second optional argument to specify several options. The
		 * default options are
		 * </p>
		 * <pre><code>{ encoding: &#39;utf8&#39;,
		 * timeout: 0,
		 * maxBuffer: 200*1024,
		 * killSignal: &#39;SIGTERM&#39;,
		 * cwd: null,
		 * env: null }</code></pre>
		 * <p>If <code>timeout</code> is greater than 0, then it will kill the child process
		 * if it runs longer than <code>timeout</code> milliseconds. The child process is killed with
		 * <code>killSignal</code> (default: <code>&#39;SIGTERM&#39;</code>). <code>maxBuffer</code> specifies the largest
		 * amount of data allowed on stdout or stderr - if this value is exceeded then
		 * the child process is killed.
		 * </p>
		 * 
		*/
		public function exec(command:*, options:*, callback:*):void
		{
		}
		
		/*
		 * <p>Runs a command in a shell and buffers the output.
		 * </p>
		 * <pre><code>var exec = require(&#39;child_process&#39;).exec,
		 * child;
		 * child = exec(&#39;cat *.js bad_file | wc -l&#39;,
		 * function (error, stdout, stderr) {
		 * console.log(&#39;stdout: &#39; + stdout);
		 * console.log(&#39;stderr: &#39; + stderr);
		 * if (error !== null) {
		 * console.log(&#39;exec error: &#39; + error);
		 * }
		 * });</code></pre>
		 * <p>The callback gets the arguments <code>(error, stdout, stderr)</code>. On success, <code>error</code>
		 * will be <code>null</code>.  On error, <code>error</code> will be an instance of <code>Error</code> and <code>err.code</code>
		 * will be the exit code of the child process, and <code>err.signal</code> will be set to the
		 * signal that terminated the process.
		 * </p>
		 * <p>There is a second optional argument to specify several options. The
		 * default options are
		 * </p>
		 * <pre><code>{ encoding: &#39;utf8&#39;,
		 * timeout: 0,
		 * maxBuffer: 200*1024,
		 * killSignal: &#39;SIGTERM&#39;,
		 * cwd: null,
		 * env: null }</code></pre>
		 * <p>If <code>timeout</code> is greater than 0, then it will kill the child process
		 * if it runs longer than <code>timeout</code> milliseconds. The child process is killed with
		 * <code>killSignal</code> (default: <code>&#39;SIGTERM&#39;</code>). <code>maxBuffer</code> specifies the largest
		 * amount of data allowed on stdout or stderr - if this value is exceeded then
		 * the child process is killed.
		 * </p>
		 * 
		*/
		public function exec(command:*, options:*, callback:*):void
		{
		}
		
		/*
		 * <p>This is similar to <code>child_process.exec()</code> except it does not execute a
		 * subshell but rather the specified file directly. This makes it slightly
		 * leaner than <code>child_process.exec</code>. It has the same options.
		 * </p>
		 * 
		*/
		public function execFile(file:*, args:*, options:*, callback:*):void
		{
		}
		
		/*
		 * <p>This is similar to <code>child_process.exec()</code> except it does not execute a
		 * subshell but rather the specified file directly. This makes it slightly
		 * leaner than <code>child_process.exec</code>. It has the same options.
		 * </p>
		 * 
		*/
		public function execFile(file:*, args:*, options:*, callback:*):void
		{
		}
		
		/*
		 * <p>This is a special case of the <code>spawn()</code> functionality for spawning Node
		 * processes. In addition to having all the methods in a normal ChildProcess
		 * instance, the returned object has a communication channel built-in. See
		 * <code>child.send(message, [sendHandle])</code> for details.
		 * </p>
		 * <p>By default the spawned Node process will have the stdout, stderr associated
		 * with the parent&#39;s. To change this behavior set the <code>silent</code> property in the
		 * <code>options</code> object to <code>true</code>.
		 * </p>
		 * <p>The child process does not automatically exit once it&#39;s done, you need to call
		 * <code>process.exit()</code> explicitly. This limitation may be lifted in the future.
		 * </p>
		 * <p>These child Nodes are still whole new instances of V8. Assume at least 30ms
		 * startup and 10mb memory for each new Node. That is, you cannot create many
		 * thousands of them.
		 * </p>
		 * 
		*/
		public function fork(modulePath:*, args:*, options:*):void
		{
		}
		
		/*
		 * <p>This is a special case of the <code>spawn()</code> functionality for spawning Node
		 * processes. In addition to having all the methods in a normal ChildProcess
		 * instance, the returned object has a communication channel built-in. See
		 * <code>child.send(message, [sendHandle])</code> for details.
		 * </p>
		 * <p>By default the spawned Node process will have the stdout, stderr associated
		 * with the parent&#39;s. To change this behavior set the <code>silent</code> property in the
		 * <code>options</code> object to <code>true</code>.
		 * </p>
		 * <p>The child process does not automatically exit once it&#39;s done, you need to call
		 * <code>process.exit()</code> explicitly. This limitation may be lifted in the future.
		 * </p>
		 * <p>These child Nodes are still whole new instances of V8. Assume at least 30ms
		 * startup and 10mb memory for each new Node. That is, you cannot create many
		 * thousands of them.
		 * </p>
		 * 
		*/
		public function fork(modulePath:*, args:*, options:*):void
		{
		}
	}
}
