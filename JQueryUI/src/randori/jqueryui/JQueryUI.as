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
	 * Adds the specified class(es) to each of the set of matched elements while animating all style changes.
	 * <xi:include href="../includes/class-animation-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" /><xi:include href="../includes/core-extension-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" />
	 * Disable selection of text content within the set of matched elements.
	 * <p>Disabling text selection is bad. Don't use this.</p>
	 * Apply an animation effect to an element.
	 * <p>The <code>.effect()</code> method applies a named animation <a href="/category/effects/">effect</a> to an element. Many effects also support a show or hide mode, which can be accomplished with the <a href="/show/"><code>.show()</code></a>, <a href="/hide/"><code>.hide()</code></a>, and <a href="/toggle/"><code>.toggle()</code></a> methods.</p>
	 * Enable selection of text content within the set of matched elements.
	 * <p>The <code>.enableSelection()</code> method can be used to re-enable selection of text that was disabled via <a href="/disableSelection/"><code>.disableSelection()</code></a>.</p>
	 * Asynchronously set focus to an element.
	 * <xi:include href="../includes/core-extension-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" />
	 * Hide the matched elements, using custom effects.
	 * <xi:include href="../includes/core-extension-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" />
	 * Position an element relative to another.
	 * <p>The jQuery UI <code>.position()</code> method allows you to position an element relative to the window, document, another element, or the cursor/mouse, without worrying about offset parents.</p><p><em>Note: jQuery UI does not support positioning hidden elements.</em></p><p>This is a standalone jQuery plugin and has no dependencies on other jQuery UI components.</p><xi:include href="../includes/core-extension-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" />
	 * Removes the specified class(es) from each of the set of matched elements while animating all style changes.
	 * <xi:include href="../includes/class-animation-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" /><xi:include href="../includes/core-extension-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" />
	 * Remove ids that were set by <code>.uniqueId()</code> for the set of matched elements.
	 * <p>The <code>.removeUniqueId()</code> will remove ids that were set by <a href="/uniqueId"><code>.uniqueId()</code></a>. Calling <code>.removeUniqueId()</code> on an element that did not have its id set by <code>.uniqueId()</code> will have no affect, even if the element has an id.</p>
	 * Get the closest ancestor element that is scrollable.
	 * <p>This method finds the nearest ancestor that allows scrolling. In other words, the <code>.scrollParent()</code> method finds the element that the currently selected element will scroll within.</p><p><em>Note: This method only works on jQuery objects containing one element.</em></p>
	 * Display the matched elements, using custom effects.
	 * <xi:include href="../includes/core-extension-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" />
	 * Adds and removes the specified class(es) to each of the set of matched elements while animating all style changes.
	 * <p>The <code>.switchClass()</code> method allows you to animate the transition of adding and removing classes at the same time.</p><xi:include href="../includes/class-animation-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" /><xi:include href="../includes/core-extension-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" />
	 * Display or hide the matched elements, using custom effects.
	 * <xi:include href="../includes/core-extension-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" />
	 * Add or remove one or more classes from each element in the set of matched elements, depending on either the class's presence or the value of the switch argument, while animating all style changes.
	 * <xi:include href="../includes/class-animation-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" /><xi:include href="../includes/core-extension-desc.xml" xmlns:xi="http://www.w3.org/2003/XInclude" />
	 * Generate and apply a unique id for the set of matched elements.
	 * <p>Many widgets need to generate unique ids for elements. <code>.uniqueId()</code> will check if the element has an id, and if not, it will generate one and set it on the element. It is safe to call <code>.uniqueId()</code> on an element without checking if it already has an id. If/when the widget needs to clean up after itself, the <a href="/removeUniqueId"><code>.removeUniqueId()</code></a> method will remove the id from the element if it was added by <code>.uniqueId()</code> and leave the id alone if it was not. <code>.removeUniqueId()</code> is able to be smart about this because the generated ids have a prefix of <code>"ui-id-"</code>.</p>
	 * Get the z-index for an element.
	 * <p>The <code>.zIndex()</code> method is useful for finding the z-index of an element, regardless of whether the z-index is set directly on the element or on one of its ancestors. In order to determine the z-index, this method will start at the specified element and walk up the DOM until it finds an element that is positioned and has a z-index set. If no such element is found, then the method will return a value of <code>0</code>.</p><p>This method assumes that elements with nested z-indexes would not have a z-index of <code>0</code>. For example, given the following DOM the inner element will be treated as if it does not have a z-index set because it is impossible to differentiate between an explicit value of <code>0</code> and no value in Internet Explorer.</p><pre><code>
	 * &lt;div style="z-index: -10;"&gt;
	 * &lt;div style="z-index: 0;"&gt;&lt;/div&gt;
	 * &lt;/div&gt;
	 * </code></pre>
	 * Set the z-index for an element.
	 * <p>This is equivalent to <code>.css( "zIndex", zIndex )</code>.</p>
	 */
	[JavaScript(export="false", name="JQuery")]
	public class JQueryUI {
	}
}
