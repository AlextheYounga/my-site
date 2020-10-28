// $(document).ready(function() {
//     $(window).on('scroll', function() {
//         if ($(window).scrollTop() > 0) {
//             $('#desktop-nav').addClass('styled');
//         } else {
//             $('#desktop-nav').removeClass('styled');
//         }
//     });
//     if ($(window).scrollTop() > 0) {
//         $('#desktop-nav').addClass('styled');
//     } else {
//         $('#desktop-nav').removeClass('styled');
//     }
// });


window.getLangStats = function getLangStats(repos) {
    var mapper = function(ent){return ent.language},
    reducer = function(stats, lang) {stats[lang] = (stats[lang] || 0) + 1; return stats},
    langStats = repos.map(mapper).reduce(reducer, {});
    delete langStats['null'];
    return Object.keys(langStats).sort(function(a,b){return langStats[b] - langStats[a]});
  };
  
  window.ghApiCallHandler = function(result) {
    if (Math.floor(result.meta.status/100) == 2)
      alert(getLangStats(result.data).join(' >= '));
    else
      alert('Request failed with code ' + result.meta.status);
  };
  
  window.ghApiCall = function(user) {
    var scrElm = document.createElement('script');
    scrElm.src = 'https://api.github.com/users/' + encodeURI(user) + '/repos?callback=ghApiCallHandler&per_page=100';
    (document.head || document.getElementsByTagName('head')[0]).appendChild(scrElm);
  };
  
  ghApiCall(prompt('Enter username'));