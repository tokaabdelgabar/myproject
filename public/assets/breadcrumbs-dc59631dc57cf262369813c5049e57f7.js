function breadcrumbs(){if(document.getElementById&&document.getElementById("breadcrumb_dynamic")){var e=location.href,n=e.indexOf("#");-1!=n&&(e=e.substr(0,n));var n=e.indexOf("?");-1!=n&&(e=e.substr(0,n)),e=unescape(e);var r=/<.*/g;e=e.replace(r,"");var t=e.split("/"),a='<a href="/">Home</a>',c="/";if((""==t[t.length-1]||t[t.length-1].match(/^index\.|^default\./i))&&t.length--,t.length>3){for(counter=3;counter<t.length-1;counter++)c+=t[counter]+"/",a+=' | <a href="'+c+'">'+t[counter].replace(/_/g," ")+"</a>";a+=" | <strong>"+t[t.length-1].replace(/_/g," ").replace(/\.\w{3,5}$/,"")+"</strong>"}document.getElementById("breadcrumb_dynamic").innerHTML=a}}addLoadEvent(breadcrumbs);