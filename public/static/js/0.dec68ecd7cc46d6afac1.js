webpackJsonp([0],{"/Luh":function(t,n,e){(function(n){
/*!
 *
 * Copyright 2009-2017 Kris Kowal under the terms of the MIT
 * license found at https://github.com/kriskowal/q/blob/v1/LICENSE
 *
 * With parts by Tyler Close
 * Copyright 2007-2009 Tyler Close under the terms of the MIT X license found
 * at http://www.opensource.org/licenses/mit-license.html
 * Forked at ref_send.js version: 2009-05-11
 *
 * With parts by Mark Miller
 * Copyright (C) 2011 Google Inc.
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
 */
!function(n){"use strict";"function"==typeof bootstrap?bootstrap("promise",n):t.exports=n()}(function(){"use strict";var t=!1;try{throw new Error}catch(n){t=!!n.stack}var e,r=w(),o=function(){},i=function(){var t={task:void 0,next:null},e=t,r=!1,o=void 0,u=!1,c=[];function f(){for(var n,e;t.next;)n=(t=t.next).task,t.task=void 0,(e=t.domain)&&(t.domain=void 0,e.enter()),a(n,e);for(;c.length;)a(n=c.pop());r=!1}function a(t,n){try{t()}catch(t){if(u)throw n&&n.exit(),setTimeout(f,0),n&&n.enter(),t;setTimeout(function(){throw t},0)}n&&n.exit()}if(i=function(t){e=e.next={task:t,domain:u&&n.domain,next:null},r||(r=!0,o())},"object"==typeof n&&"[object process]"===n.toString()&&n.nextTick)u=!0,o=function(){n.nextTick(f)};else if("function"==typeof setImmediate)o="undefined"!=typeof window?setImmediate.bind(window,f):function(){setImmediate(f)};else if("undefined"!=typeof MessageChannel){var p=new MessageChannel;p.port1.onmessage=function(){o=s,p.port1.onmessage=f,f()};var s=function(){p.port2.postMessage(0)};o=function(){setTimeout(f,0),s()}}else o=function(){setTimeout(f,0)};return i.runAfter=function(t){c.push(t),r||(r=!0,o())},i}(),u=Function.call;function c(t){return function(){return u.apply(t,arguments)}}var f,a=c(Array.prototype.slice),p=c(Array.prototype.reduce||function(t,n){var e=0,r=this.length;if(1===arguments.length)for(;;){if(e in this){n=this[e++];break}if(++e>=r)throw new TypeError}for(;e<r;e++)e in this&&(n=t(n,this[e],e));return n}),s=c(Array.prototype.indexOf||function(t){for(var n=0;n<this.length;n++)if(this[n]===t)return n;return-1}),l=c(Array.prototype.map||function(t,n){var e=this,r=[];return p(e,function(o,i,u){r.push(t.call(n,i,u,e))},void 0),r}),d=Object.create||function(t){function n(){}return n.prototype=t,new n},h=Object.defineProperty||function(t,n,e){return t[n]=e.value,t},v=c(Object.prototype.hasOwnProperty),y=Object.keys||function(t){var n=[];for(var e in t)v(t,e)&&n.push(e);return n},m=c(Object.prototype.toString);f="undefined"!=typeof ReturnValue?ReturnValue:function(t){this.value=t};var j="From previous event:";function k(n,e){if(t&&e.stack&&"object"==typeof n&&null!==n&&n.stack){for(var r=[],o=e;o;o=o.source)o.stack&&(!n.__minimumStackCounter__||n.__minimumStackCounter__>o.stackCounter)&&(h(n,"__minimumStackCounter__",{value:o.stackCounter,configurable:!0}),r.unshift(o.stack));r.unshift(n.stack);var i=function(t){for(var n=t.split("\n"),e=[],r=0;r<n.length;++r){var o=n[r];!g(o)&&(-1===(i=o).indexOf("(module.js:")&&-1===i.indexOf("(node.js:"))&&o&&e.push(o)}var i;return e.join("\n")}(r.join("\n"+j+"\n"));h(n,"stack",{value:i,configurable:!0})}}function b(t){var n=/at .+ \((.+):(\d+):(?:\d+)\)$/.exec(t);if(n)return[n[1],Number(n[2])];var e=/at ([^ ]+):(\d+):(?:\d+)$/.exec(t);if(e)return[e[1],Number(e[2])];var r=/.*@(.+):(\d+)$/.exec(t);return r?[r[1],Number(r[2])]:void 0}function g(t){var n=b(t);if(!n)return!1;var o=n[0],i=n[1];return o===e&&i>=r&&i<=W}function w(){if(t)try{throw new Error}catch(t){var n=t.stack.split("\n"),r=b(n[0].indexOf("@")>0?n[1]:n[2]);if(!r)return;return e=r[0],r[1]}}function x(t){return t instanceof S?t:C(t)?(n=t,e=T(),x.nextTick(function(){try{n.then(e.resolve,e.reject,e.notify)}catch(t){e.reject(t)}}),e.promise):B(t);var n,e}x.resolve=x,x.nextTick=i,x.longStackSupport=!1;var O=1;function T(){var n,e=[],r=[],o=d(T.prototype),i=d(S.prototype);if(i.promiseDispatch=function(t,o,i){var u=a(arguments);e?(e.push(u),"when"===o&&i[1]&&r.push(i[1])):x.nextTick(function(){n.promiseDispatch.apply(n,u)})},i.valueOf=function(){if(e)return i;var t=N(n);return D(t)&&(n=t),t},i.inspect=function(){return n?n.inspect():{state:"pending"}},x.longStackSupport&&t)try{throw new Error}catch(t){i.stack=t.stack.substring(t.stack.indexOf("\n")+1),i.stackCounter=O++}function u(o){n=o,x.longStackSupport&&t&&(i.source=o),p(e,function(t,n){x.nextTick(function(){o.promiseDispatch.apply(o,n)})},void 0),e=void 0,r=void 0}return o.promise=i,o.resolve=function(t){n||u(x(t))},o.fulfill=function(t){n||u(B(t))},o.reject=function(t){n||u(V(t))},o.notify=function(t){n||p(r,function(n,e){x.nextTick(function(){e(t)})},void 0)},o}function R(t){if("function"!=typeof t)throw new TypeError("resolver must be a function.");var n=T();try{t(n.resolve,n.reject,n.notify)}catch(t){n.reject(t)}return n.promise}function E(t){return R(function(n,e){for(var r=0,o=t.length;r<o;r++)x(t[r]).then(n,e)})}function S(t,n,e){void 0===n&&(n=function(t){return V(new Error("Promise does not support operation: "+t))}),void 0===e&&(e=function(){return{state:"unknown"}});var r=d(S.prototype);if(r.promiseDispatch=function(e,o,i){var u;try{u=t[o]?t[o].apply(r,i):n.call(r,o,i)}catch(t){u=V(t)}e&&e(u)},r.inspect=e,e){var o=e();"rejected"===o.state&&(r.exception=o.reason),r.valueOf=function(){var t=e();return"pending"===t.state||"rejected"===t.state?r:t.value}}return r}function _(t,n,e,r){return x(t).then(n,e,r)}function N(t){if(D(t)){var n=t.inspect();if("fulfilled"===n.state)return n.value}return t}function D(t){return t instanceof S}function C(t){return(n=t)===Object(n)&&"function"==typeof t.then;var n}"object"==typeof n&&n&&Object({NODE_ENV:"production"})&&Object({NODE_ENV:"production"}).Q_DEBUG&&(x.longStackSupport=!0),x.defer=T,T.prototype.makeNodeResolver=function(){var t=this;return function(n,e){n?t.reject(n):arguments.length>2?t.resolve(a(arguments,1)):t.resolve(e)}},x.Promise=R,x.promise=R,R.race=E,R.all=G,R.reject=V,R.resolve=x,x.passByCopy=function(t){return t},S.prototype.passByCopy=function(){return this},x.join=function(t,n){return x(t).join(n)},S.prototype.join=function(t){return x([this,t]).spread(function(t,n){if(t===n)return t;throw new Error("Q can't join: not the same: "+t+" "+n)})},x.race=E,S.prototype.race=function(){return this.then(x.race)},x.makePromise=S,S.prototype.toString=function(){return"[object Promise]"},S.prototype.then=function(t,n,e){var r=this,o=T(),i=!1;return x.nextTick(function(){r.promiseDispatch(function(n){i||(i=!0,o.resolve(function(n){try{return"function"==typeof t?t(n):n}catch(t){return V(t)}}(n)))},"when",[function(t){i||(i=!0,o.resolve(function(t){if("function"==typeof n){k(t,r);try{return n(t)}catch(t){return V(t)}}return V(t)}(t)))}])}),r.promiseDispatch(void 0,"when",[void 0,function(t){var n,r=!1;try{n=function(t){return"function"==typeof e?e(t):t}(t)}catch(t){if(r=!0,!x.onerror)throw t;x.onerror(t)}r||o.notify(n)}]),o.promise},x.tap=function(t,n){return x(t).tap(n)},S.prototype.tap=function(t){return t=x(t),this.then(function(n){return t.fcall(n).thenResolve(n)})},x.when=_,S.prototype.thenResolve=function(t){return this.then(function(){return t})},x.thenResolve=function(t,n){return x(t).thenResolve(n)},S.prototype.thenReject=function(t){return this.then(function(){throw t})},x.thenReject=function(t,n){return x(t).thenReject(n)},x.nearer=N,x.isPromise=D,x.isPromiseAlike=C,x.isPending=function(t){return D(t)&&"pending"===t.inspect().state},S.prototype.isPending=function(){return"pending"===this.inspect().state},x.isFulfilled=function(t){return!D(t)||"fulfilled"===t.inspect().state},S.prototype.isFulfilled=function(){return"fulfilled"===this.inspect().state},x.isRejected=function(t){return D(t)&&"rejected"===t.inspect().state},S.prototype.isRejected=function(){return"rejected"===this.inspect().state};var P,A,Q,U=[],I=[],F=[],L=!0;function M(){U.length=0,I.length=0,L||(L=!0)}function V(t){var e=S({when:function(e){return e&&function(t){if(L){var e=s(I,t);-1!==e&&("object"==typeof n&&"function"==typeof n.emit&&x.nextTick.runAfter(function(){var r=s(F,t);-1!==r&&(n.emit("rejectionHandled",U[e],t),F.splice(r,1))}),I.splice(e,1),U.splice(e,1))}}(this),e?e(t):this}},function(){return this},function(){return{state:"rejected",reason:t}});return function(t,e){L&&("object"==typeof n&&"function"==typeof n.emit&&x.nextTick.runAfter(function(){-1!==s(I,t)&&(n.emit("unhandledRejection",e,t),F.push(t))}),I.push(t),e&&void 0!==e.stack?U.push(e.stack):U.push("(no stack) "+e))}(e,t),e}function B(t){return S({when:function(){return t},get:function(n){return t[n]},set:function(n,e){t[n]=e},delete:function(n){delete t[n]},post:function(n,e){return null===n||void 0===n?t.apply(void 0,e):t[n].apply(t,e)},apply:function(n,e){return t.apply(n,e)},keys:function(){return y(t)}},void 0,function(){return{state:"fulfilled",value:t}})}function $(t,n,e){return x(t).spread(n,e)}function z(t,n,e){return x(t).dispatch(n,e)}function G(t){return _(t,function(t){var n=0,e=T();return p(t,function(r,o,i){var u;D(o)&&"fulfilled"===(u=o.inspect()).state?t[i]=u.value:(++n,_(o,function(r){t[i]=r,0==--n&&e.resolve(t)},e.reject,function(t){e.notify({index:i,value:t})}))},void 0),0===n&&e.resolve(t),e.promise})}function H(t){if(0===t.length)return x.resolve();var n=x.defer(),e=0;return p(t,function(r,o,i){var u=t[i];e++,_(u,function(t){n.resolve(t)},function(t){if(0==--e){var r=t||new Error(""+t);r.message="Q can't get fulfillment value from any promise, all promises were rejected. Last error message: "+r.message,n.reject(r)}},function(t){n.notify({index:i,value:t})})},void 0),n.promise}function J(t){return _(t,function(t){return t=l(t,x),_(G(l(t,function(t){return _(t,o,o)})),function(){return t})})}x.resetUnhandledRejections=M,x.getUnhandledReasons=function(){return U.slice()},x.stopUnhandledRejectionTracking=function(){M(),L=!1},M(),x.reject=V,x.fulfill=B,x.master=function(t){return S({isDef:function(){}},function(n,e){return z(t,n,e)},function(){return x(t).inspect()})},x.spread=$,S.prototype.spread=function(t,n){return this.all().then(function(n){return t.apply(void 0,n)},n)},x.async=function(t){return function(){function n(t,n){var i;if("undefined"==typeof StopIteration){try{i=e[t](n)}catch(t){return V(t)}return i.done?x(i.value):_(i.value,r,o)}try{i=e[t](n)}catch(t){return function(t){return"[object StopIteration]"===m(t)||t instanceof f}(t)?x(t.value):V(t)}return _(i,r,o)}var e=t.apply(this,arguments),r=n.bind(n,"next"),o=n.bind(n,"throw");return r()}},x.spawn=function(t){x.done(x.async(t)())},x.return=function(t){throw new f(t)},x.promised=function(t){return function(){return $([this,G(arguments)],function(n,e){return t.apply(n,e)})}},x.dispatch=z,S.prototype.dispatch=function(t,n){var e=this,r=T();return x.nextTick(function(){e.promiseDispatch(r.resolve,t,n)}),r.promise},x.get=function(t,n){return x(t).dispatch("get",[n])},S.prototype.get=function(t){return this.dispatch("get",[t])},x.set=function(t,n,e){return x(t).dispatch("set",[n,e])},S.prototype.set=function(t,n){return this.dispatch("set",[t,n])},x.del=x.delete=function(t,n){return x(t).dispatch("delete",[n])},S.prototype.del=S.prototype.delete=function(t){return this.dispatch("delete",[t])},x.mapply=x.post=function(t,n,e){return x(t).dispatch("post",[n,e])},S.prototype.mapply=S.prototype.post=function(t,n){return this.dispatch("post",[t,n])},x.send=x.mcall=x.invoke=function(t,n){return x(t).dispatch("post",[n,a(arguments,2)])},S.prototype.send=S.prototype.mcall=S.prototype.invoke=function(t){return this.dispatch("post",[t,a(arguments,1)])},x.fapply=function(t,n){return x(t).dispatch("apply",[void 0,n])},S.prototype.fapply=function(t){return this.dispatch("apply",[void 0,t])},x.try=x.fcall=function(t){return x(t).dispatch("apply",[void 0,a(arguments,1)])},S.prototype.fcall=function(){return this.dispatch("apply",[void 0,a(arguments)])},x.fbind=function(t){var n=x(t),e=a(arguments,1);return function(){return n.dispatch("apply",[this,e.concat(a(arguments))])}},S.prototype.fbind=function(){var t=this,n=a(arguments);return function(){return t.dispatch("apply",[this,n.concat(a(arguments))])}},x.keys=function(t){return x(t).dispatch("keys",[])},S.prototype.keys=function(){return this.dispatch("keys",[])},x.all=G,S.prototype.all=function(){return G(this)},x.any=H,S.prototype.any=function(){return H(this)},x.allResolved=(P=J,A="allResolved",Q="allSettled",function(){return"undefined"!=typeof console&&"function"==typeof console.warn&&console.warn(A+" is deprecated, use "+Q+" instead.",new Error("").stack),P.apply(P,arguments)}),S.prototype.allResolved=function(){return J(this)},x.allSettled=function(t){return x(t).allSettled()},S.prototype.allSettled=function(){return this.then(function(t){return G(l(t,function(t){function n(){return t.inspect()}return(t=x(t)).then(n,n)}))})},x.fail=x.catch=function(t,n){return x(t).then(void 0,n)},S.prototype.fail=S.prototype.catch=function(t){return this.then(void 0,t)},x.progress=function(t,n){return x(t).then(void 0,void 0,n)},S.prototype.progress=function(t){return this.then(void 0,void 0,t)},x.fin=x.finally=function(t,n){return x(t).finally(n)},S.prototype.fin=S.prototype.finally=function(t){if(!t||"function"!=typeof t.apply)throw new Error("Q can't apply finally callback");return t=x(t),this.then(function(n){return t.fcall().then(function(){return n})},function(n){return t.fcall().then(function(){throw n})})},x.done=function(t,n,e,r){return x(t).done(n,e,r)},S.prototype.done=function(t,e,r){var o=function(t){x.nextTick(function(){if(k(t,i),!x.onerror)throw t;x.onerror(t)})},i=t||e||r?this.then(t,e,r):this;"object"==typeof n&&n&&n.domain&&(o=n.domain.bind(o)),i.then(void 0,o)},x.timeout=function(t,n,e){return x(t).timeout(n,e)},S.prototype.timeout=function(t,n){var e=T(),r=setTimeout(function(){n&&"string"!=typeof n||((n=new Error(n||"Timed out after "+t+" ms")).code="ETIMEDOUT"),e.reject(n)},t);return this.then(function(t){clearTimeout(r),e.resolve(t)},function(t){clearTimeout(r),e.reject(t)},e.notify),e.promise},x.delay=function(t,n){return void 0===n&&(n=t,t=void 0),x(t).delay(n)},S.prototype.delay=function(t){return this.then(function(n){var e=T();return setTimeout(function(){e.resolve(n)},t),e.promise})},x.nfapply=function(t,n){return x(t).nfapply(n)},S.prototype.nfapply=function(t){var n=T(),e=a(t);return e.push(n.makeNodeResolver()),this.fapply(e).fail(n.reject),n.promise},x.nfcall=function(t){var n=a(arguments,1);return x(t).nfapply(n)},S.prototype.nfcall=function(){var t=a(arguments),n=T();return t.push(n.makeNodeResolver()),this.fapply(t).fail(n.reject),n.promise},x.nfbind=x.denodeify=function(t){if(void 0===t)throw new Error("Q can't wrap an undefined function");var n=a(arguments,1);return function(){var e=n.concat(a(arguments)),r=T();return e.push(r.makeNodeResolver()),x(t).fapply(e).fail(r.reject),r.promise}},S.prototype.nfbind=S.prototype.denodeify=function(){var t=a(arguments);return t.unshift(this),x.denodeify.apply(void 0,t)},x.nbind=function(t,n){var e=a(arguments,2);return function(){var r=e.concat(a(arguments)),o=T();return r.push(o.makeNodeResolver()),x(function(){return t.apply(n,arguments)}).fapply(r).fail(o.reject),o.promise}},S.prototype.nbind=function(){var t=a(arguments,0);return t.unshift(this),x.nbind.apply(void 0,t)},x.nmapply=x.npost=function(t,n,e){return x(t).npost(n,e)},S.prototype.nmapply=S.prototype.npost=function(t,n){var e=a(n||[]),r=T();return e.push(r.makeNodeResolver()),this.dispatch("post",[t,e]).fail(r.reject),r.promise},x.nsend=x.nmcall=x.ninvoke=function(t,n){var e=a(arguments,2),r=T();return e.push(r.makeNodeResolver()),x(t).dispatch("post",[n,e]).fail(r.reject),r.promise},S.prototype.nsend=S.prototype.nmcall=S.prototype.ninvoke=function(t){var n=a(arguments,1),e=T();return n.push(e.makeNodeResolver()),this.dispatch("post",[t,n]).fail(e.reject),e.promise},x.nodeify=function(t,n){return x(t).nodeify(n)},S.prototype.nodeify=function(t){if(!t)return this;this.then(function(n){x.nextTick(function(){t(null,n)})},function(n){x.nextTick(function(){t(n)})})},x.noConflict=function(){throw new Error("Q.noConflict only works when Q is used as a global")};var W=w();return x})}).call(n,e("W2nU"))},bUp0:function(t,n,e){"use strict";n.a=function(t){return Object(r.a)({url:"/v1/menu/store",method:"post",data:t})},n.e=function(t){return Object(r.a)({url:"/v1/menu/index",method:"get",params:t})},n.f=function(t){return Object(r.a)({url:"/v1/menu/select",method:"get",params:t})},n.b=function(t){return Object(r.a)({url:"/v1/menu/delete",method:"delete",data:t})},n.d=function(t){return Object(r.a)({url:"/v1/menu/update",method:"post",data:t})},n.c=function(t){return Object(r.a)({url:"/v1/menu/detail",method:"get",params:t})},n.g=function(t){return Object(r.a)({url:"/v1/menu/tree",method:"get",params:t})},n.h=function(t){return Object(r.a)({url:"/v1/menu/user_menu",method:"get",params:t})};var r=e("vLgD")},zp1X:function(t,n,e){"use strict";n.a=function(t){return Object(r.a)({url:"/v1/perm/store",method:"post",data:t})},n.e=function(t){return Object(r.a)({url:"/v1/perm/index",method:"get",params:t})},n.b=function(t){return Object(r.a)({url:"/v1/perm/delete",method:"delete",data:t})},n.f=function(t){return Object(r.a)({url:"/v1/perm/select",method:"get",params:t})},n.c=function(t){return Object(r.a)({url:"/v1/perm/detail",method:"get",params:t})},n.d=function(t){return Object(r.a)({url:"/v1/perm/update",method:"post",data:t})},n.g=function(t){return Object(r.a)({url:"/v1/perm/tree",method:"get",params:t})};var r=e("vLgD")}});
//# sourceMappingURL=0.dec68ecd7cc46d6afac1.js.map