// var arenaLoadJquery = function(){
//   var head      = document.head || document.getElementsByTagName('head')[0] || document.documentElement, script;
//   script        = document.createElement('script');
//   script.src    = 'https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js';
  
//   script.onload = script.onreadystatechange = function(){
//     if(!this.readyState || this.readyState === "loaded" || this.readyState === "complete"){
//       script.onload = script.onreadystatechange = null;
//     }
//   };
//   head.appendChild(script);
// };

// // Load in jQuery if missing
// if(typeof(jQuery) === 'undefined'){
//   arenaLoadJquery();
// } else {
//   // Do some check for version here
// }