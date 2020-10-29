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

function calculateTotal(values) {
  result = 0
  for (val of values) {
    result += val;
  }
  return result;
}

function round(value, decimals) {
  return Number(Math.round(value + 'e' + decimals) + 'e-' + decimals);
}

function buildLanguageGrid(langs) {
  var langValues = Object.values(langs);
  var total = calculateTotal(langValues);
  var widths = {};
  
  for (const [lang, val] of Object.entries(langs)) {
    if ((val !== 0) || (total !== 0)) {
      widths[lang] = round(((val / total) * 100), 2);
    }
  }
  return widths;
}