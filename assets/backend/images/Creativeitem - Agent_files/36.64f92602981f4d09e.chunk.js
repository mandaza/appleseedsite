(window.webpackJsonp=window.webpackJsonp||[]).push([[36],{1884:function(t,e,n){"use strict";n.r(e);var r,o,a=n(0),c=n.n(a),i=function t(e){return e||!t.hasLocalStorage()?new t.NativeStore:new t.LocalStore};i.hasLocalStorage=function(){var t,e,n;try{return null!=(t=window.localStorage)&&(t.setItem("__hasLocalStorage__","true"),e="true"===t.getItem("__hasLocalStorage__"),t.removeItem("hasLocalStorage"),e)}catch(t){if(22===t.code||("SECURITY_ERR"===(n=t.name)||"SecurityError"===n))return!1;if("NS_ERROR_FILE_CORRUPTED"===t.name)return!1;throw t}};var u=function(t,e){var n=[];for(var r in e=new RegExp(e),t)if(t.hasOwnProperty(r)){if(e&&!e.test(r))continue;n.push(r)}return n};(i.NativeStore=function(){r={},o=function(){var t=0;for(var e in r)r.hasOwnProperty(e)&&(t+=1);this.length=t}}).prototype={length:0,getItem:function(t){return void 0===r[t]?null:r[t]},setItem:function(t,e){r[t]=e,o.call(this)},removeItem:function(t){delete r[t],o.call(this)},clear:function(){r={},o.call(this)},keys:function(t){return u(r,t)},storageType:function(){return"Native"}},(i.LocalStore=function(){o=function(){this.length=window.localStorage.length}}).prototype={length:0,getItem:function(t){try{return JSON.parse(window.localStorage.getItem(t))}catch(t){return null}},setItem:function(t,e){var n=window.localStorage.setItem(t,JSON.stringify(e));return o.call(this),n},removeItem:function(t){var e=window.localStorage.removeItem(t);return o.call(this),e},clear:function(){var t=window.localStorage.clear();return o.call(this),t},keys:function(t){return u(window.localStorage,t)},storageType:function(){return"LocalStorage"}};var l=i;function f(t){return(f="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function s(t,e){for(var n=0;n<e.length;n++){var r=e[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(t,r.key,r)}}function p(t){return(p=Object.setPrototypeOf?Object.getPrototypeOf:function(t){return t.__proto__||Object.getPrototypeOf(t)})(t)}function y(t){if(void 0===t)throw new ReferenceError("this hasn't been initialised - super() hasn't been called");return t}function h(t,e){return(h=Object.setPrototypeOf||function(t,e){return t.__proto__=e,t})(t,e)}n.d(e,"default",function(){return w});var w=function(t){function e(){var t,n,r,o,a,c,i;!function(t,e){if(!(t instanceof e))throw new TypeError("Cannot call a class as a function")}(this,e);for(var u=arguments.length,s=new Array(u),h=0;h<u;h++)s[h]=arguments[h];return r=this,n=!(o=(t=p(e)).call.apply(t,[this].concat(s)))||"object"!==f(o)&&"function"!=typeof o?y(r):o,a=y(n),c="localStorage",i=new l,c in a?Object.defineProperty(a,c,{value:i,enumerable:!0,configurable:!0,writable:!0}):a[c]=i,n}var n,r,o;return function(t,e){if("function"!=typeof e&&null!==e)throw new TypeError("Super expression must either be null or a function");t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,writable:!0,configurable:!0}}),e&&h(t,e)}(e,c.a.PureComponent),n=e,(r=[{key:"render",value:function(){return null}}])&&s(n.prototype,r),o&&s(n,o),e}()}}]);
//# sourceMappingURL=36.64f92602981f4d09e.chunk.js.map