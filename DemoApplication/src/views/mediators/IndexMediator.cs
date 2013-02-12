/***
 * Copyright 2012 LTN Consulting, Inc. /dba Digital Primates®
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

using demo.behaviors;
using randori.attributes;
using randori.behaviors;

namespace demo.views.mediators {

    public class IndexMediator : AbstractMediator {

        [View(required = true)] 
        public ViewStack viewStack;

        [View(required = true)]
        public VerticalTabs menu;

        public override void setViewData(object viewData) {
        }

        protected override void onRegister() {

            var menuItems = new MenuItem[] {
                new MenuItem {name = "Targets", url = "views/targets.html"},
                new MenuItem { name = "Labs", url = "views/labs.html" },
                new MenuItem { name = "Intel", url = "views/intel.html" }
            };

            menu.menuItemSelected = menuItemSelected;
            menu.data = menuItems;
        }

        protected override void onDeregister() {
        }

        void menuItemSelected( MenuItem menuData ) {
            viewStack.popView();
            var promise = viewStack.pushView(menuData.url);

            promise.then( delegate( AbstractMediator result ) {
                return null;
            } );
        }

        public IndexMediator() {
        }
    }
}
