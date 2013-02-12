/***
 * Copyright 2013 LTN Consulting, Inc. /dba Digital Primates®
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * 
 * @author Michael Labriola <labriola@digitalprimates.net>
 */
package randori.behaviors {
	import randori.async.Promise;
	import randori.behaviors.viewStack.MediatorCapturer;
	import randori.behaviors.viewStack.ViewChangeAnimator;
	import randori.content.ContentLoader;
	import randori.content.ContentParser;
	import randori.dom.DomWalker;
	import randori.jquery.JQuery;
	import randori.jquery.JQueryStatic;
	import randori.webkit.html.HTMLDivElement;

	public class ViewStack extends AbstractBehavior {

		private var contentLoader:ContentLoader;
		private var contentParser:ContentParser;
		private var viewChangeAnimator:ViewChangeAnimator;
		private var domWalker:DomWalker;

		private var _currentView:JQuery;
		private var viewFragmentStack:Vector.<JQuery>;
		private var mediators:Object;

		public function get currentViewUrl():String {
			return ( (_currentView != null)?_currentView.data("url"):null );
		}
		
		public function hasView(url:String):Boolean {
			var fragment:JQuery = null;
			var allFragments:JQuery = decoratedNode.children();
			
			if ( allFragments.length > 0 ) {
				fragment = allFragments.find("[data-url='" + url + "']");    
			}
			
			return ((fragment != null) && fragment.length>0);
		}
		
		public function pushView(url:String ):Promise {
			var promise:Promise;
			
			var stack:ViewStack = this;
			var div:HTMLDivElement = new HTMLDivElement();
			var fragment:JQuery = JQueryStatic.J(div);
			fragment.hide();
			fragment.css("width", "100%");
			fragment.css("height", "100%");
			fragment.css("position", "absolute");
			fragment.css("top", "0");
			fragment.css("left", "0");
			fragment.data( "url", url ) ;
			
			promise = contentLoader.asynchronousLoad(url).then( 
				function(result:String):AbstractMediator {
					var content:String = contentParser.parse(result);
					
					fragment.html(content);
					fragment.attr( "data-url", url );
					decoratedNode.append(div);
					
					var mediatorCapturer:MediatorCapturer = new MediatorCapturer();
					domWalker.walkDomFragment(div, mediatorCapturer);
					
					viewFragmentStack.push(fragment);
					var mediator:AbstractMediator = mediatorCapturer.mediator;
					mediators[ url ] = mediator;
					
					showView(_currentView, fragment);
					
					return mediator;
				} 
			);
			
			return promise;
		}

		
		public function popView():void {
			var oldView:JQuery = viewFragmentStack.pop();
			if (oldView != null ) {
				oldView.remove();
				var url:String = oldView.data( "url" );
				var mediator:AbstractMediator = mediators[url];
				
				if (mediator != null ) {
					mediator.removeAndCleanup();
					delete mediators[url];
				}
				
			}
			
			if ( viewFragmentStack.length > 0 ) {
				_currentView = viewFragmentStack[ viewFragmentStack.length - 1 ];
				if ( _currentView != null ) {
					_currentView.show();
				}
			} else {
				_currentView = null;
			}
		}

		public function selectView(url:String):void {
			
			if (currentViewUrl != url) {
				
				var fragment:JQuery = decoratedNode.children().filter("[data-url=" + url + "]");
				
				if (fragment == null) {
					throw new Error("Unknown View");
				}
				
				fragment.detach();
				decoratedNode.append( fragment );
				
				showView( _currentView, fragment );
				
				_currentView = fragment;
			} 
		}

		private function showView( oldFragment:JQuery, newFragment:JQuery ):void  {
			if (oldFragment != null) {
				oldFragment.hide();
			}
			
			if (newFragment != null) {
				newFragment.show();
			}            
		}

		private function transitionViews(arrivingView:JQuery, departingView:JQuery, data:Object = null):JQuery {
			return null;
		}

		override protected function onRegister():void {
			mediators = new Object();
			
			//We may eventually want to look for existing elements and hold onto them... not today
			decoratedNode.empty();
		}
		
		override protected function onDeregister():void  {
			mediators = new Object();

			decoratedNode.empty();
		}

		public function ViewStack( contentLoader:ContentLoader, contentParser:ContentParser, domWalker:DomWalker, viewChangeAnimator:ViewChangeAnimator ) {
			super();
			
			this.contentLoader = contentLoader;
			this.contentParser = contentParser;
			this.viewChangeAnimator = viewChangeAnimator;
			this.domWalker = domWalker;
			
			viewFragmentStack = new Vector.<JQuery>();
		}
	}
}