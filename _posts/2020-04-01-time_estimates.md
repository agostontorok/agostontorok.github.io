---
title: "Why overdue tasks take still a long time to finish?"
layout: post
date: '2020-04-01'
tags: lean business data science product
---

<!DOCTYPE html>
<html>
<head><meta charset="utf-8" />

<title>Are we close to finishing</title>

<script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>



<style type="text/css">
    /*!
*
* Twitter Bootstrap
*
*/
/*!
 * Bootstrap v3.3.7 (http://getbootstrap.com)
 * Copyright 2011-2016 Twitter, Inc.
 * Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
 */
/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */
html {
  font-family: sans-serif;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
}
body {
  margin: 0;
}
article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
main,
menu,
nav,
section,
summary {
  display: block;
}
audio,
canvas,
progress,
video {
  display: inline-block;
  vertical-align: baseline;
}
audio:not([controls]) {
  display: none;
  height: 0;
}
[hidden],
template {
  display: none;
}
a {
  background-color: transparent;
}
a:active,
a:hover {
  outline: 0;
}
abbr[title] {
  border-bottom: 1px dotted;
}
b,
strong {
  font-weight: bold;
}
dfn {
  font-style: italic;
}
h1 {
  font-size: 2em;
  margin: 0.67em 0;
}
mark {
  background: #ff0;
  color: #000;
}
small {
  font-size: 80%;
}
sub,
sup {
  font-size: 75%;
  line-height: 0;
  position: relative;
  vertical-align: baseline;
}
sup {
  top: -0.5em;
}
sub {
  bottom: -0.25em;
}
img {
  border: 0;
}
svg:not(:root) {
  overflow: hidden;
}
figure {
  margin: 1em 40px;
}
hr {
  box-sizing: content-box;
  height: 0;
}
pre {
  overflow: auto;
}
code,
kbd,
pre,
samp {
  font-family: monospace, monospace;
  font-size: 1em;
}
button,
input,
optgroup,
select,
textarea {
  color: inherit;
  font: inherit;
  margin: 0;
}
button {
  overflow: visible;
}
button,
select {
  text-transform: none;
}
button,
html input[type="button"],
input[type="reset"],
input[type="submit"] {
  -webkit-appearance: button;
  cursor: pointer;
}
button[disabled],
html input[disabled] {
  cursor: default;
}
button::-moz-focus-inner,
input::-moz-focus-inner {
  border: 0;
  padding: 0;
}
input {
  line-height: normal;
}
input[type="checkbox"],
input[type="radio"] {
  box-sizing: border-box;
  padding: 0;
}
input[type="number"]::-webkit-inner-spin-button,
input[type="number"]::-webkit-outer-spin-button {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: textfield;
  box-sizing: content-box;
}
input[type="search"]::-webkit-search-cancel-button,
input[type="search"]::-webkit-search-decoration {
  -webkit-appearance: none;
}
fieldset {
  border: 1px solid #c0c0c0;
  margin: 0 2px;
  padding: 0.35em 0.625em 0.75em;
}
legend {
  border: 0;
  padding: 0;
}
textarea {
  overflow: auto;
}
optgroup {
  font-weight: bold;
}
table {
  border-collapse: collapse;
  border-spacing: 0;
}
td,
th {
  padding: 0;
}
/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */
@media print {
  *,
  *:before,
  *:after {
    background: transparent !important;
    box-shadow: none !important;
    text-shadow: none !important;
  }
  a,
  a:visited {
    text-decoration: underline;
  }
  a[href]:after {
    content: " (" attr(href) ")";
  }
  abbr[title]:after {
    content: " (" attr(title) ")";
  }
  a[href^="#"]:after,
  a[href^="javascript:"]:after {
    content: "";
  }
  pre,
  blockquote {
    border: 1px solid #999;
    page-break-inside: avoid;
  }
  thead {
    display: table-header-group;
  }
  tr,
  img {
    page-break-inside: avoid;
  }
  img {
    max-width: 100% !important;
  }
  p,
  h2,
  h3 {
    orphans: 3;
    widows: 3;
  }
  h2,
  h3 {
    page-break-after: avoid;
  }
  .navbar {
    display: none;
  }
  .btn > .caret,
  .dropup > .btn > .caret {
    border-top-color: #000 !important;
  }
  .label {
    border: 1px solid #000;
  }
  .table {
    border-collapse: collapse !important;
  }
  .table td,
  .table th {
    background-color: #fff !important;
  }
  .table-bordered th,
  .table-bordered td {
    border: 1px solid #ddd !important;
  }
}
@font-face {
  font-family: 'Glyphicons Halflings';
  src: url('../components/bootstrap/fonts/glyphicons-halflings-regular.eot');
  src: url('../components/bootstrap/fonts/glyphicons-halflings-regular.eot?#iefix') format('embedded-opentype'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.woff2') format('woff2'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.woff') format('woff'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.ttf') format('truetype'), url('../components/bootstrap/fonts/glyphicons-halflings-regular.svg#glyphicons_halflingsregular') format('svg');
}
.glyphicon {
  position: relative;
  top: 1px;
  display: inline-block;
  font-family: 'Glyphicons Halflings';
  font-style: normal;
  font-weight: normal;
  line-height: 1;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.glyphicon-asterisk:before {
  content: "\002a";
}
.glyphicon-plus:before {
  content: "\002b";
}
.glyphicon-euro:before,
.glyphicon-eur:before {
  content: "\20ac";
}
.glyphicon-minus:before {
  content: "\2212";
}
.glyphicon-cloud:before {
  content: "\2601";
}
.glyphicon-envelope:before {
  content: "\2709";
}
.glyphicon-pencil:before {
  content: "\270f";
}
.glyphicon-glass:before {
  content: "\e001";
}
.glyphicon-music:before {
  content: "\e002";
}
.glyphicon-search:before {
  content: "\e003";
}
.glyphicon-heart:before {
  content: "\e005";
}
.glyphicon-star:before {
  content: "\e006";
}
.glyphicon-star-empty:before {
  content: "\e007";
}
.glyphicon-user:before {
  content: "\e008";
}
.glyphicon-film:before {
  content: "\e009";
}
.glyphicon-th-large:before {
  content: "\e010";
}
.glyphicon-th:before {
  content: "\e011";
}
.glyphicon-th-list:before {
  content: "\e012";
}
.glyphicon-ok:before {
  content: "\e013";
}
.glyphicon-remove:before {
  content: "\e014";
}
.glyphicon-zoom-in:before {
  content: "\e015";
}
.glyphicon-zoom-out:before {
  content: "\e016";
}
.glyphicon-off:before {
  content: "\e017";
}
.glyphicon-signal:before {
  content: "\e018";
}
.glyphicon-cog:before {
  content: "\e019";
}
.glyphicon-trash:before {
  content: "\e020";
}
.glyphicon-home:before {
  content: "\e021";
}
.glyphicon-file:before {
  content: "\e022";
}
.glyphicon-time:before {
  content: "\e023";
}
.glyphicon-road:before {
  content: "\e024";
}
.glyphicon-download-alt:before {
  content: "\e025";
}
.glyphicon-download:before {
  content: "\e026";
}
.glyphicon-upload:before {
  content: "\e027";
}
.glyphicon-inbox:before {
  content: "\e028";
}
.glyphicon-play-circle:before {
  content: "\e029";
}
.glyphicon-repeat:before {
  content: "\e030";
}
.glyphicon-refresh:before {
  content: "\e031";
}
.glyphicon-list-alt:before {
  content: "\e032";
}
.glyphicon-lock:before {
  content: "\e033";
}
.glyphicon-flag:before {
  content: "\e034";
}
.glyphicon-headphones:before {
  content: "\e035";
}
.glyphicon-volume-off:before {
  content: "\e036";
}
.glyphicon-volume-down:before {
  content: "\e037";
}
.glyphicon-volume-up:before {
  content: "\e038";
}
.glyphicon-qrcode:before {
  content: "\e039";
}
.glyphicon-barcode:before {
  content: "\e040";
}
.glyphicon-tag:before {
  content: "\e041";
}
.glyphicon-tags:before {
  content: "\e042";
}
.glyphicon-book:before {
  content: "\e043";
}
.glyphicon-bookmark:before {
  content: "\e044";
}
.glyphicon-print:before {
  content: "\e045";
}
.glyphicon-camera:before {
  content: "\e046";
}
.glyphicon-font:before {
  content: "\e047";
}
.glyphicon-bold:before {
  content: "\e048";
}
.glyphicon-italic:before {
  content: "\e049";
}
.glyphicon-text-height:before {
  content: "\e050";
}
.glyphicon-text-width:before {
  content: "\e051";
}
.glyphicon-align-left:before {
  content: "\e052";
}
.glyphicon-align-center:before {
  content: "\e053";
}
.glyphicon-align-right:before {
  content: "\e054";
}
.glyphicon-align-justify:before {
  content: "\e055";
}
.glyphicon-list:before {
  content: "\e056";
}
.glyphicon-indent-left:before {
  content: "\e057";
}
.glyphicon-indent-right:before {
  content: "\e058";
}
.glyphicon-facetime-video:before {
  content: "\e059";
}
.glyphicon-picture:before {
  content: "\e060";
}
.glyphicon-map-marker:before {
  content: "\e062";
}
.glyphicon-adjust:before {
  content: "\e063";
}
.glyphicon-tint:before {
  content: "\e064";
}
.glyphicon-edit:before {
  content: "\e065";
}
.glyphicon-share:before {
  content: "\e066";
}
.glyphicon-check:before {
  content: "\e067";
}
.glyphicon-move:before {
  content: "\e068";
}
.glyphicon-step-backward:before {
  content: "\e069";
}
.glyphicon-fast-backward:before {
  content: "\e070";
}
.glyphicon-backward:before {
  content: "\e071";
}
.glyphicon-play:before {
  content: "\e072";
}
.glyphicon-pause:before {
  content: "\e073";
}
.glyphicon-stop:before {
  content: "\e074";
}
.glyphicon-forward:before {
  content: "\e075";
}
.glyphicon-fast-forward:before {
  content: "\e076";
}
.glyphicon-step-forward:before {
  content: "\e077";
}
.glyphicon-eject:before {
  content: "\e078";
}
.glyphicon-chevron-left:before {
  content: "\e079";
}
.glyphicon-chevron-right:before {
  content: "\e080";
}
.glyphicon-plus-sign:before {
  content: "\e081";
}
.glyphicon-minus-sign:before {
  content: "\e082";
}
.glyphicon-remove-sign:before {
  content: "\e083";
}
.glyphicon-ok-sign:before {
  content: "\e084";
}
.glyphicon-question-sign:before {
  content: "\e085";
}
.glyphicon-info-sign:before {
  content: "\e086";
}
.glyphicon-screenshot:before {
  content: "\e087";
}
.glyphicon-remove-circle:before {
  content: "\e088";
}
.glyphicon-ok-circle:before {
  content: "\e089";
}
.glyphicon-ban-circle:before {
  content: "\e090";
}
.glyphicon-arrow-left:before {
  content: "\e091";
}
.glyphicon-arrow-right:before {
  content: "\e092";
}
.glyphicon-arrow-up:before {
  content: "\e093";
}
.glyphicon-arrow-down:before {
  content: "\e094";
}
.glyphicon-share-alt:before {
  content: "\e095";
}
.glyphicon-resize-full:before {
  content: "\e096";
}
.glyphicon-resize-small:before {
  content: "\e097";
}
.glyphicon-exclamation-sign:before {
  content: "\e101";
}
.glyphicon-gift:before {
  content: "\e102";
}
.glyphicon-leaf:before {
  content: "\e103";
}
.glyphicon-fire:before {
  content: "\e104";
}
.glyphicon-eye-open:before {
  content: "\e105";
}
.glyphicon-eye-close:before {
  content: "\e106";
}
.glyphicon-warning-sign:before {
  content: "\e107";
}
.glyphicon-plane:before {
  content: "\e108";
}
.glyphicon-calendar:before {
  content: "\e109";
}
.glyphicon-random:before {
  content: "\e110";
}
.glyphicon-comment:before {
  content: "\e111";
}
.glyphicon-magnet:before {
  content: "\e112";
}
.glyphicon-chevron-up:before {
  content: "\e113";
}
.glyphicon-chevron-down:before {
  content: "\e114";
}
.glyphicon-retweet:before {
  content: "\e115";
}
.glyphicon-shopping-cart:before {
  content: "\e116";
}
.glyphicon-folder-close:before {
  content: "\e117";
}
.glyphicon-folder-open:before {
  content: "\e118";
}
.glyphicon-resize-vertical:before {
  content: "\e119";
}
.glyphicon-resize-horizontal:before {
  content: "\e120";
}
.glyphicon-hdd:before {
  content: "\e121";
}
.glyphicon-bullhorn:before {
  content: "\e122";
}
.glyphicon-bell:before {
  content: "\e123";
}
.glyphicon-certificate:before {
  content: "\e124";
}
.glyphicon-thumbs-up:before {
  content: "\e125";
}
.glyphicon-thumbs-down:before {
  content: "\e126";
}
.glyphicon-hand-right:before {
  content: "\e127";
}
.glyphicon-hand-left:before {
  content: "\e128";
}
.glyphicon-hand-up:before {
  content: "\e129";
}
.glyphicon-hand-down:before {
  content: "\e130";
}
.glyphicon-circle-arrow-right:before {
  content: "\e131";
}
.glyphicon-circle-arrow-left:before {
  content: "\e132";
}
.glyphicon-circle-arrow-up:before {
  content: "\e133";
}
.glyphicon-circle-arrow-down:before {
  content: "\e134";
}
.glyphicon-globe:before {
  content: "\e135";
}
.glyphicon-wrench:before {
  content: "\e136";
}
.glyphicon-tasks:before {
  content: "\e137";
}
.glyphicon-filter:before {
  content: "\e138";
}
.glyphicon-briefcase:before {
  content: "\e139";
}
.glyphicon-fullscreen:before {
  content: "\e140";
}
.glyphicon-dashboard:before {
  content: "\e141";
}
.glyphicon-paperclip:before {
  content: "\e142";
}
.glyphicon-heart-empty:before {
  content: "\e143";
}
.glyphicon-link:before {
  content: "\e144";
}
.glyphicon-phone:before {
  content: "\e145";
}
.glyphicon-pushpin:before {
  content: "\e146";
}
.glyphicon-usd:before {
  content: "\e148";
}
.glyphicon-gbp:before {
  content: "\e149";
}
.glyphicon-sort:before {
  content: "\e150";
}
.glyphicon-sort-by-alphabet:before {
  content: "\e151";
}
.glyphicon-sort-by-alphabet-alt:before {
  content: "\e152";
}
.glyphicon-sort-by-order:before {
  content: "\e153";
}
.glyphicon-sort-by-order-alt:before {
  content: "\e154";
}
.glyphicon-sort-by-attributes:before {
  content: "\e155";
}
.glyphicon-sort-by-attributes-alt:before {
  content: "\e156";
}
.glyphicon-unchecked:before {
  content: "\e157";
}
.glyphicon-expand:before {
  content: "\e158";
}
.glyphicon-collapse-down:before {
  content: "\e159";
}
.glyphicon-collapse-up:before {
  content: "\e160";
}
.glyphicon-log-in:before {
  content: "\e161";
}
.glyphicon-flash:before {
  content: "\e162";
}
.glyphicon-log-out:before {
  content: "\e163";
}
.glyphicon-new-window:before {
  content: "\e164";
}
.glyphicon-record:before {
  content: "\e165";
}
.glyphicon-save:before {
  content: "\e166";
}
.glyphicon-open:before {
  content: "\e167";
}
.glyphicon-saved:before {
  content: "\e168";
}
.glyphicon-import:before {
  content: "\e169";
}
.glyphicon-export:before {
  content: "\e170";
}
.glyphicon-send:before {
  content: "\e171";
}
.glyphicon-floppy-disk:before {
  content: "\e172";
}
.glyphicon-floppy-saved:before {
  content: "\e173";
}
.glyphicon-floppy-remove:before {
  content: "\e174";
}
.glyphicon-floppy-save:before {
  content: "\e175";
}
.glyphicon-floppy-open:before {
  content: "\e176";
}
.glyphicon-credit-card:before {
  content: "\e177";
}
.glyphicon-transfer:before {
  content: "\e178";
}
.glyphicon-cutlery:before {
  content: "\e179";
}
.glyphicon-header:before {
  content: "\e180";
}
.glyphicon-compressed:before {
  content: "\e181";
}
.glyphicon-earphone:before {
  content: "\e182";
}
.glyphicon-phone-alt:before {
  content: "\e183";
}
.glyphicon-tower:before {
  content: "\e184";
}
.glyphicon-stats:before {
  content: "\e185";
}
.glyphicon-sd-video:before {
  content: "\e186";
}
.glyphicon-hd-video:before {
  content: "\e187";
}
.glyphicon-subtitles:before {
  content: "\e188";
}
.glyphicon-sound-stereo:before {
  content: "\e189";
}
.glyphicon-sound-dolby:before {
  content: "\e190";
}
.glyphicon-sound-5-1:before {
  content: "\e191";
}
.glyphicon-sound-6-1:before {
  content: "\e192";
}
.glyphicon-sound-7-1:before {
  content: "\e193";
}
.glyphicon-copyright-mark:before {
  content: "\e194";
}
.glyphicon-registration-mark:before {
  content: "\e195";
}
.glyphicon-cloud-download:before {
  content: "\e197";
}
.glyphicon-cloud-upload:before {
  content: "\e198";
}
.glyphicon-tree-conifer:before {
  content: "\e199";
}
.glyphicon-tree-deciduous:before {
  content: "\e200";
}
.glyphicon-cd:before {
  content: "\e201";
}
.glyphicon-save-file:before {
  content: "\e202";
}
.glyphicon-open-file:before {
  content: "\e203";
}
.glyphicon-level-up:before {
  content: "\e204";
}
.glyphicon-copy:before {
  content: "\e205";
}
.glyphicon-paste:before {
  content: "\e206";
}
.glyphicon-alert:before {
  content: "\e209";
}
.glyphicon-equalizer:before {
  content: "\e210";
}
.glyphicon-king:before {
  content: "\e211";
}
.glyphicon-queen:before {
  content: "\e212";
}
.glyphicon-pawn:before {
  content: "\e213";
}
.glyphicon-bishop:before {
  content: "\e214";
}
.glyphicon-knight:before {
  content: "\e215";
}
.glyphicon-baby-formula:before {
  content: "\e216";
}
.glyphicon-tent:before {
  content: "\26fa";
}
.glyphicon-blackboard:before {
  content: "\e218";
}
.glyphicon-bed:before {
  content: "\e219";
}
.glyphicon-apple:before {
  content: "\f8ff";
}
.glyphicon-erase:before {
  content: "\e221";
}
.glyphicon-hourglass:before {
  content: "\231b";
}
.glyphicon-lamp:before {
  content: "\e223";
}
.glyphicon-duplicate:before {
  content: "\e224";
}
.glyphicon-piggy-bank:before {
  content: "\e225";
}
.glyphicon-scissors:before {
  content: "\e226";
}
.glyphicon-bitcoin:before {
  content: "\e227";
}
.glyphicon-btc:before {
  content: "\e227";
}
.glyphicon-xbt:before {
  content: "\e227";
}
.glyphicon-yen:before {
  content: "\00a5";
}
.glyphicon-jpy:before {
  content: "\00a5";
}
.glyphicon-ruble:before {
  content: "\20bd";
}
.glyphicon-rub:before {
  content: "\20bd";
}
.glyphicon-scale:before {
  content: "\e230";
}
.glyphicon-ice-lolly:before {
  content: "\e231";
}
.glyphicon-ice-lolly-tasted:before {
  content: "\e232";
}
.glyphicon-education:before {
  content: "\e233";
}
.glyphicon-option-horizontal:before {
  content: "\e234";
}
.glyphicon-option-vertical:before {
  content: "\e235";
}
.glyphicon-menu-hamburger:before {
  content: "\e236";
}
.glyphicon-modal-window:before {
  content: "\e237";
}
.glyphicon-oil:before {
  content: "\e238";
}
.glyphicon-grain:before {
  content: "\e239";
}
.glyphicon-sunglasses:before {
  content: "\e240";
}
.glyphicon-text-size:before {
  content: "\e241";
}
.glyphicon-text-color:before {
  content: "\e242";
}
.glyphicon-text-background:before {
  content: "\e243";
}
.glyphicon-object-align-top:before {
  content: "\e244";
}
.glyphicon-object-align-bottom:before {
  content: "\e245";
}
.glyphicon-object-align-horizontal:before {
  content: "\e246";
}
.glyphicon-object-align-left:before {
  content: "\e247";
}
.glyphicon-object-align-vertical:before {
  content: "\e248";
}
.glyphicon-object-align-right:before {
  content: "\e249";
}
.glyphicon-triangle-right:before {
  content: "\e250";
}
.glyphicon-triangle-left:before {
  content: "\e251";
}
.glyphicon-triangle-bottom:before {
  content: "\e252";
}
.glyphicon-triangle-top:before {
  content: "\e253";
}
.glyphicon-console:before {
  content: "\e254";
}
.glyphicon-superscript:before {
  content: "\e255";
}
.glyphicon-subscript:before {
  content: "\e256";
}
.glyphicon-menu-left:before {
  content: "\e257";
}
.glyphicon-menu-right:before {
  content: "\e258";
}
.glyphicon-menu-down:before {
  content: "\e259";
}
.glyphicon-menu-up:before {
  content: "\e260";
}
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
*:before,
*:after {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
html {
  font-size: 10px;
  -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}
body {
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  line-height: 1.42857143;
  color: #000;
  background-color: #fff;
}
input,
button,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
}
a {
  color: #337ab7;
  text-decoration: none;
}
a:hover,
a:focus {
  color: #23527c;
  text-decoration: underline;
}
a:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
figure {
  margin: 0;
}
img {
  vertical-align: middle;
}
.img-responsive,
.thumbnail > img,
.thumbnail a > img,
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  display: block;
  max-width: 100%;
  height: auto;
}
.img-rounded {
  border-radius: 3px;
}
.img-thumbnail {
  padding: 4px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 2px;
  -webkit-transition: all 0.2s ease-in-out;
  -o-transition: all 0.2s ease-in-out;
  transition: all 0.2s ease-in-out;
  display: inline-block;
  max-width: 100%;
  height: auto;
}
.img-circle {
  border-radius: 50%;
}
hr {
  margin-top: 18px;
  margin-bottom: 18px;
  border: 0;
  border-top: 1px solid #eeeeee;
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  margin: -1px;
  padding: 0;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
[role="button"] {
  cursor: pointer;
}
h1,
h2,
h3,
h4,
h5,
h6,
.h1,
.h2,
.h3,
.h4,
.h5,
.h6 {
  font-family: inherit;
  font-weight: 500;
  line-height: 1.1;
  color: inherit;
}
h1 small,
h2 small,
h3 small,
h4 small,
h5 small,
h6 small,
.h1 small,
.h2 small,
.h3 small,
.h4 small,
.h5 small,
.h6 small,
h1 .small,
h2 .small,
h3 .small,
h4 .small,
h5 .small,
h6 .small,
.h1 .small,
.h2 .small,
.h3 .small,
.h4 .small,
.h5 .small,
.h6 .small {
  font-weight: normal;
  line-height: 1;
  color: #777777;
}
h1,
.h1,
h2,
.h2,
h3,
.h3 {
  margin-top: 18px;
  margin-bottom: 9px;
}
h1 small,
.h1 small,
h2 small,
.h2 small,
h3 small,
.h3 small,
h1 .small,
.h1 .small,
h2 .small,
.h2 .small,
h3 .small,
.h3 .small {
  font-size: 65%;
}
h4,
.h4,
h5,
.h5,
h6,
.h6 {
  margin-top: 9px;
  margin-bottom: 9px;
}
h4 small,
.h4 small,
h5 small,
.h5 small,
h6 small,
.h6 small,
h4 .small,
.h4 .small,
h5 .small,
.h5 .small,
h6 .small,
.h6 .small {
  font-size: 75%;
}
h1,
.h1 {
  font-size: 33px;
}
h2,
.h2 {
  font-size: 27px;
}
h3,
.h3 {
  font-size: 23px;
}
h4,
.h4 {
  font-size: 17px;
}
h5,
.h5 {
  font-size: 13px;
}
h6,
.h6 {
  font-size: 12px;
}
p {
  margin: 0 0 9px;
}
.lead {
  margin-bottom: 18px;
  font-size: 14px;
  font-weight: 300;
  line-height: 1.4;
}
@media (min-width: 768px) {
  .lead {
    font-size: 19.5px;
  }
}
small,
.small {
  font-size: 92%;
}
mark,
.mark {
  background-color: #fcf8e3;
  padding: .2em;
}
.text-left {
  text-align: left;
}
.text-right {
  text-align: right;
}
.text-center {
  text-align: center;
}
.text-justify {
  text-align: justify;
}
.text-nowrap {
  white-space: nowrap;
}
.text-lowercase {
  text-transform: lowercase;
}
.text-uppercase {
  text-transform: uppercase;
}
.text-capitalize {
  text-transform: capitalize;
}
.text-muted {
  color: #777777;
}
.text-primary {
  color: #337ab7;
}
a.text-primary:hover,
a.text-primary:focus {
  color: #286090;
}
.text-success {
  color: #3c763d;
}
a.text-success:hover,
a.text-success:focus {
  color: #2b542c;
}
.text-info {
  color: #31708f;
}
a.text-info:hover,
a.text-info:focus {
  color: #245269;
}
.text-warning {
  color: #8a6d3b;
}
a.text-warning:hover,
a.text-warning:focus {
  color: #66512c;
}
.text-danger {
  color: #a94442;
}
a.text-danger:hover,
a.text-danger:focus {
  color: #843534;
}
.bg-primary {
  color: #fff;
  background-color: #337ab7;
}
a.bg-primary:hover,
a.bg-primary:focus {
  background-color: #286090;
}
.bg-success {
  background-color: #dff0d8;
}
a.bg-success:hover,
a.bg-success:focus {
  background-color: #c1e2b3;
}
.bg-info {
  background-color: #d9edf7;
}
a.bg-info:hover,
a.bg-info:focus {
  background-color: #afd9ee;
}
.bg-warning {
  background-color: #fcf8e3;
}
a.bg-warning:hover,
a.bg-warning:focus {
  background-color: #f7ecb5;
}
.bg-danger {
  background-color: #f2dede;
}
a.bg-danger:hover,
a.bg-danger:focus {
  background-color: #e4b9b9;
}
.page-header {
  padding-bottom: 8px;
  margin: 36px 0 18px;
  border-bottom: 1px solid #eeeeee;
}
ul,
ol {
  margin-top: 0;
  margin-bottom: 9px;
}
ul ul,
ol ul,
ul ol,
ol ol {
  margin-bottom: 0;
}
.list-unstyled {
  padding-left: 0;
  list-style: none;
}
.list-inline {
  padding-left: 0;
  list-style: none;
  margin-left: -5px;
}
.list-inline > li {
  display: inline-block;
  padding-left: 5px;
  padding-right: 5px;
}
dl {
  margin-top: 0;
  margin-bottom: 18px;
}
dt,
dd {
  line-height: 1.42857143;
}
dt {
  font-weight: bold;
}
dd {
  margin-left: 0;
}
@media (min-width: 541px) {
  .dl-horizontal dt {
    float: left;
    width: 160px;
    clear: left;
    text-align: right;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .dl-horizontal dd {
    margin-left: 180px;
  }
}
abbr[title],
abbr[data-original-title] {
  cursor: help;
  border-bottom: 1px dotted #777777;
}
.initialism {
  font-size: 90%;
  text-transform: uppercase;
}
blockquote {
  padding: 9px 18px;
  margin: 0 0 18px;
  font-size: inherit;
  border-left: 5px solid #eeeeee;
}
blockquote p:last-child,
blockquote ul:last-child,
blockquote ol:last-child {
  margin-bottom: 0;
}
blockquote footer,
blockquote small,
blockquote .small {
  display: block;
  font-size: 80%;
  line-height: 1.42857143;
  color: #777777;
}
blockquote footer:before,
blockquote small:before,
blockquote .small:before {
  content: '\2014 \00A0';
}
.blockquote-reverse,
blockquote.pull-right {
  padding-right: 15px;
  padding-left: 0;
  border-right: 5px solid #eeeeee;
  border-left: 0;
  text-align: right;
}
.blockquote-reverse footer:before,
blockquote.pull-right footer:before,
.blockquote-reverse small:before,
blockquote.pull-right small:before,
.blockquote-reverse .small:before,
blockquote.pull-right .small:before {
  content: '';
}
.blockquote-reverse footer:after,
blockquote.pull-right footer:after,
.blockquote-reverse small:after,
blockquote.pull-right small:after,
.blockquote-reverse .small:after,
blockquote.pull-right .small:after {
  content: '\00A0 \2014';
}
address {
  margin-bottom: 18px;
  font-style: normal;
  line-height: 1.42857143;
}
code,
kbd,
pre,
samp {
  font-family: monospace;
}
code {
  padding: 2px 4px;
  font-size: 90%;
  color: #c7254e;
  background-color: #f9f2f4;
  border-radius: 2px;
}
kbd {
  padding: 2px 4px;
  font-size: 90%;
  color: #888;
  background-color: transparent;
  border-radius: 1px;
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.25);
}
kbd kbd {
  padding: 0;
  font-size: 100%;
  font-weight: bold;
  box-shadow: none;
}
pre {
  display: block;
  padding: 8.5px;
  margin: 0 0 9px;
  font-size: 12px;
  line-height: 1.42857143;
  word-break: break-all;
  word-wrap: break-word;
  color: #333333;
  background-color: #f5f5f5;
  border: 1px solid #ccc;
  border-radius: 2px;
}
pre code {
  padding: 0;
  font-size: inherit;
  color: inherit;
  white-space: pre-wrap;
  background-color: transparent;
  border-radius: 0;
}
.pre-scrollable {
  max-height: 340px;
  overflow-y: scroll;
}
.container {
  margin-right: auto;
  margin-left: auto;
  padding-left: 0px;
  padding-right: 0px;
}
@media (min-width: 768px) {
  .container {
    width: 768px;
  }
}
@media (min-width: 992px) {
  .container {
    width: 940px;
  }
}
@media (min-width: 1200px) {
  .container {
    width: 1140px;
  }
}
.container-fluid {
  margin-right: auto;
  margin-left: auto;
  padding-left: 0px;
  padding-right: 0px;
}
.row {
  margin-left: 0px;
  margin-right: 0px;
}
.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
  position: relative;
  min-height: 1px;
  padding-left: 0px;
  padding-right: 0px;
}
.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
  float: left;
}
.col-xs-12 {
  width: 100%;
}
.col-xs-11 {
  width: 91.66666667%;
}
.col-xs-10 {
  width: 83.33333333%;
}
.col-xs-9 {
  width: 75%;
}
.col-xs-8 {
  width: 66.66666667%;
}
.col-xs-7 {
  width: 58.33333333%;
}
.col-xs-6 {
  width: 50%;
}
.col-xs-5 {
  width: 41.66666667%;
}
.col-xs-4 {
  width: 33.33333333%;
}
.col-xs-3 {
  width: 25%;
}
.col-xs-2 {
  width: 16.66666667%;
}
.col-xs-1 {
  width: 8.33333333%;
}
.col-xs-pull-12 {
  right: 100%;
}
.col-xs-pull-11 {
  right: 91.66666667%;
}
.col-xs-pull-10 {
  right: 83.33333333%;
}
.col-xs-pull-9 {
  right: 75%;
}
.col-xs-pull-8 {
  right: 66.66666667%;
}
.col-xs-pull-7 {
  right: 58.33333333%;
}
.col-xs-pull-6 {
  right: 50%;
}
.col-xs-pull-5 {
  right: 41.66666667%;
}
.col-xs-pull-4 {
  right: 33.33333333%;
}
.col-xs-pull-3 {
  right: 25%;
}
.col-xs-pull-2 {
  right: 16.66666667%;
}
.col-xs-pull-1 {
  right: 8.33333333%;
}
.col-xs-pull-0 {
  right: auto;
}
.col-xs-push-12 {
  left: 100%;
}
.col-xs-push-11 {
  left: 91.66666667%;
}
.col-xs-push-10 {
  left: 83.33333333%;
}
.col-xs-push-9 {
  left: 75%;
}
.col-xs-push-8 {
  left: 66.66666667%;
}
.col-xs-push-7 {
  left: 58.33333333%;
}
.col-xs-push-6 {
  left: 50%;
}
.col-xs-push-5 {
  left: 41.66666667%;
}
.col-xs-push-4 {
  left: 33.33333333%;
}
.col-xs-push-3 {
  left: 25%;
}
.col-xs-push-2 {
  left: 16.66666667%;
}
.col-xs-push-1 {
  left: 8.33333333%;
}
.col-xs-push-0 {
  left: auto;
}
.col-xs-offset-12 {
  margin-left: 100%;
}
.col-xs-offset-11 {
  margin-left: 91.66666667%;
}
.col-xs-offset-10 {
  margin-left: 83.33333333%;
}
.col-xs-offset-9 {
  margin-left: 75%;
}
.col-xs-offset-8 {
  margin-left: 66.66666667%;
}
.col-xs-offset-7 {
  margin-left: 58.33333333%;
}
.col-xs-offset-6 {
  margin-left: 50%;
}
.col-xs-offset-5 {
  margin-left: 41.66666667%;
}
.col-xs-offset-4 {
  margin-left: 33.33333333%;
}
.col-xs-offset-3 {
  margin-left: 25%;
}
.col-xs-offset-2 {
  margin-left: 16.66666667%;
}
.col-xs-offset-1 {
  margin-left: 8.33333333%;
}
.col-xs-offset-0 {
  margin-left: 0%;
}
@media (min-width: 768px) {
  .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
    float: left;
  }
  .col-sm-12 {
    width: 100%;
  }
  .col-sm-11 {
    width: 91.66666667%;
  }
  .col-sm-10 {
    width: 83.33333333%;
  }
  .col-sm-9 {
    width: 75%;
  }
  .col-sm-8 {
    width: 66.66666667%;
  }
  .col-sm-7 {
    width: 58.33333333%;
  }
  .col-sm-6 {
    width: 50%;
  }
  .col-sm-5 {
    width: 41.66666667%;
  }
  .col-sm-4 {
    width: 33.33333333%;
  }
  .col-sm-3 {
    width: 25%;
  }
  .col-sm-2 {
    width: 16.66666667%;
  }
  .col-sm-1 {
    width: 8.33333333%;
  }
  .col-sm-pull-12 {
    right: 100%;
  }
  .col-sm-pull-11 {
    right: 91.66666667%;
  }
  .col-sm-pull-10 {
    right: 83.33333333%;
  }
  .col-sm-pull-9 {
    right: 75%;
  }
  .col-sm-pull-8 {
    right: 66.66666667%;
  }
  .col-sm-pull-7 {
    right: 58.33333333%;
  }
  .col-sm-pull-6 {
    right: 50%;
  }
  .col-sm-pull-5 {
    right: 41.66666667%;
  }
  .col-sm-pull-4 {
    right: 33.33333333%;
  }
  .col-sm-pull-3 {
    right: 25%;
  }
  .col-sm-pull-2 {
    right: 16.66666667%;
  }
  .col-sm-pull-1 {
    right: 8.33333333%;
  }
  .col-sm-pull-0 {
    right: auto;
  }
  .col-sm-push-12 {
    left: 100%;
  }
  .col-sm-push-11 {
    left: 91.66666667%;
  }
  .col-sm-push-10 {
    left: 83.33333333%;
  }
  .col-sm-push-9 {
    left: 75%;
  }
  .col-sm-push-8 {
    left: 66.66666667%;
  }
  .col-sm-push-7 {
    left: 58.33333333%;
  }
  .col-sm-push-6 {
    left: 50%;
  }
  .col-sm-push-5 {
    left: 41.66666667%;
  }
  .col-sm-push-4 {
    left: 33.33333333%;
  }
  .col-sm-push-3 {
    left: 25%;
  }
  .col-sm-push-2 {
    left: 16.66666667%;
  }
  .col-sm-push-1 {
    left: 8.33333333%;
  }
  .col-sm-push-0 {
    left: auto;
  }
  .col-sm-offset-12 {
    margin-left: 100%;
  }
  .col-sm-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-sm-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-sm-offset-9 {
    margin-left: 75%;
  }
  .col-sm-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-sm-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-sm-offset-6 {
    margin-left: 50%;
  }
  .col-sm-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-sm-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-sm-offset-3 {
    margin-left: 25%;
  }
  .col-sm-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-sm-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-sm-offset-0 {
    margin-left: 0%;
  }
}
@media (min-width: 992px) {
  .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12 {
    float: left;
  }
  .col-md-12 {
    width: 100%;
  }
  .col-md-11 {
    width: 91.66666667%;
  }
  .col-md-10 {
    width: 83.33333333%;
  }
  .col-md-9 {
    width: 75%;
  }
  .col-md-8 {
    width: 66.66666667%;
  }
  .col-md-7 {
    width: 58.33333333%;
  }
  .col-md-6 {
    width: 50%;
  }
  .col-md-5 {
    width: 41.66666667%;
  }
  .col-md-4 {
    width: 33.33333333%;
  }
  .col-md-3 {
    width: 25%;
  }
  .col-md-2 {
    width: 16.66666667%;
  }
  .col-md-1 {
    width: 8.33333333%;
  }
  .col-md-pull-12 {
    right: 100%;
  }
  .col-md-pull-11 {
    right: 91.66666667%;
  }
  .col-md-pull-10 {
    right: 83.33333333%;
  }
  .col-md-pull-9 {
    right: 75%;
  }
  .col-md-pull-8 {
    right: 66.66666667%;
  }
  .col-md-pull-7 {
    right: 58.33333333%;
  }
  .col-md-pull-6 {
    right: 50%;
  }
  .col-md-pull-5 {
    right: 41.66666667%;
  }
  .col-md-pull-4 {
    right: 33.33333333%;
  }
  .col-md-pull-3 {
    right: 25%;
  }
  .col-md-pull-2 {
    right: 16.66666667%;
  }
  .col-md-pull-1 {
    right: 8.33333333%;
  }
  .col-md-pull-0 {
    right: auto;
  }
  .col-md-push-12 {
    left: 100%;
  }
  .col-md-push-11 {
    left: 91.66666667%;
  }
  .col-md-push-10 {
    left: 83.33333333%;
  }
  .col-md-push-9 {
    left: 75%;
  }
  .col-md-push-8 {
    left: 66.66666667%;
  }
  .col-md-push-7 {
    left: 58.33333333%;
  }
  .col-md-push-6 {
    left: 50%;
  }
  .col-md-push-5 {
    left: 41.66666667%;
  }
  .col-md-push-4 {
    left: 33.33333333%;
  }
  .col-md-push-3 {
    left: 25%;
  }
  .col-md-push-2 {
    left: 16.66666667%;
  }
  .col-md-push-1 {
    left: 8.33333333%;
  }
  .col-md-push-0 {
    left: auto;
  }
  .col-md-offset-12 {
    margin-left: 100%;
  }
  .col-md-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-md-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-md-offset-9 {
    margin-left: 75%;
  }
  .col-md-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-md-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-md-offset-6 {
    margin-left: 50%;
  }
  .col-md-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-md-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-md-offset-3 {
    margin-left: 25%;
  }
  .col-md-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-md-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-md-offset-0 {
    margin-left: 0%;
  }
}
@media (min-width: 1200px) {
  .col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12 {
    float: left;
  }
  .col-lg-12 {
    width: 100%;
  }
  .col-lg-11 {
    width: 91.66666667%;
  }
  .col-lg-10 {
    width: 83.33333333%;
  }
  .col-lg-9 {
    width: 75%;
  }
  .col-lg-8 {
    width: 66.66666667%;
  }
  .col-lg-7 {
    width: 58.33333333%;
  }
  .col-lg-6 {
    width: 50%;
  }
  .col-lg-5 {
    width: 41.66666667%;
  }
  .col-lg-4 {
    width: 33.33333333%;
  }
  .col-lg-3 {
    width: 25%;
  }
  .col-lg-2 {
    width: 16.66666667%;
  }
  .col-lg-1 {
    width: 8.33333333%;
  }
  .col-lg-pull-12 {
    right: 100%;
  }
  .col-lg-pull-11 {
    right: 91.66666667%;
  }
  .col-lg-pull-10 {
    right: 83.33333333%;
  }
  .col-lg-pull-9 {
    right: 75%;
  }
  .col-lg-pull-8 {
    right: 66.66666667%;
  }
  .col-lg-pull-7 {
    right: 58.33333333%;
  }
  .col-lg-pull-6 {
    right: 50%;
  }
  .col-lg-pull-5 {
    right: 41.66666667%;
  }
  .col-lg-pull-4 {
    right: 33.33333333%;
  }
  .col-lg-pull-3 {
    right: 25%;
  }
  .col-lg-pull-2 {
    right: 16.66666667%;
  }
  .col-lg-pull-1 {
    right: 8.33333333%;
  }
  .col-lg-pull-0 {
    right: auto;
  }
  .col-lg-push-12 {
    left: 100%;
  }
  .col-lg-push-11 {
    left: 91.66666667%;
  }
  .col-lg-push-10 {
    left: 83.33333333%;
  }
  .col-lg-push-9 {
    left: 75%;
  }
  .col-lg-push-8 {
    left: 66.66666667%;
  }
  .col-lg-push-7 {
    left: 58.33333333%;
  }
  .col-lg-push-6 {
    left: 50%;
  }
  .col-lg-push-5 {
    left: 41.66666667%;
  }
  .col-lg-push-4 {
    left: 33.33333333%;
  }
  .col-lg-push-3 {
    left: 25%;
  }
  .col-lg-push-2 {
    left: 16.66666667%;
  }
  .col-lg-push-1 {
    left: 8.33333333%;
  }
  .col-lg-push-0 {
    left: auto;
  }
  .col-lg-offset-12 {
    margin-left: 100%;
  }
  .col-lg-offset-11 {
    margin-left: 91.66666667%;
  }
  .col-lg-offset-10 {
    margin-left: 83.33333333%;
  }
  .col-lg-offset-9 {
    margin-left: 75%;
  }
  .col-lg-offset-8 {
    margin-left: 66.66666667%;
  }
  .col-lg-offset-7 {
    margin-left: 58.33333333%;
  }
  .col-lg-offset-6 {
    margin-left: 50%;
  }
  .col-lg-offset-5 {
    margin-left: 41.66666667%;
  }
  .col-lg-offset-4 {
    margin-left: 33.33333333%;
  }
  .col-lg-offset-3 {
    margin-left: 25%;
  }
  .col-lg-offset-2 {
    margin-left: 16.66666667%;
  }
  .col-lg-offset-1 {
    margin-left: 8.33333333%;
  }
  .col-lg-offset-0 {
    margin-left: 0%;
  }
}
table {
  background-color: transparent;
}
caption {
  padding-top: 8px;
  padding-bottom: 8px;
  color: #777777;
  text-align: left;
}
th {
  text-align: left;
}
.table {
  width: 100%;
  max-width: 100%;
  margin-bottom: 18px;
}
.table > thead > tr > th,
.table > tbody > tr > th,
.table > tfoot > tr > th,
.table > thead > tr > td,
.table > tbody > tr > td,
.table > tfoot > tr > td {
  padding: 8px;
  line-height: 1.42857143;
  vertical-align: top;
  border-top: 1px solid #ddd;
}
.table > thead > tr > th {
  vertical-align: bottom;
  border-bottom: 2px solid #ddd;
}
.table > caption + thead > tr:first-child > th,
.table > colgroup + thead > tr:first-child > th,
.table > thead:first-child > tr:first-child > th,
.table > caption + thead > tr:first-child > td,
.table > colgroup + thead > tr:first-child > td,
.table > thead:first-child > tr:first-child > td {
  border-top: 0;
}
.table > tbody + tbody {
  border-top: 2px solid #ddd;
}
.table .table {
  background-color: #fff;
}
.table-condensed > thead > tr > th,
.table-condensed > tbody > tr > th,
.table-condensed > tfoot > tr > th,
.table-condensed > thead > tr > td,
.table-condensed > tbody > tr > td,
.table-condensed > tfoot > tr > td {
  padding: 5px;
}
.table-bordered {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > tbody > tr > th,
.table-bordered > tfoot > tr > th,
.table-bordered > thead > tr > td,
.table-bordered > tbody > tr > td,
.table-bordered > tfoot > tr > td {
  border: 1px solid #ddd;
}
.table-bordered > thead > tr > th,
.table-bordered > thead > tr > td {
  border-bottom-width: 2px;
}
.table-striped > tbody > tr:nth-of-type(odd) {
  background-color: #f9f9f9;
}
.table-hover > tbody > tr:hover {
  background-color: #f5f5f5;
}
table col[class*="col-"] {
  position: static;
  float: none;
  display: table-column;
}
table td[class*="col-"],
table th[class*="col-"] {
  position: static;
  float: none;
  display: table-cell;
}
.table > thead > tr > td.active,
.table > tbody > tr > td.active,
.table > tfoot > tr > td.active,
.table > thead > tr > th.active,
.table > tbody > tr > th.active,
.table > tfoot > tr > th.active,
.table > thead > tr.active > td,
.table > tbody > tr.active > td,
.table > tfoot > tr.active > td,
.table > thead > tr.active > th,
.table > tbody > tr.active > th,
.table > tfoot > tr.active > th {
  background-color: #f5f5f5;
}
.table-hover > tbody > tr > td.active:hover,
.table-hover > tbody > tr > th.active:hover,
.table-hover > tbody > tr.active:hover > td,
.table-hover > tbody > tr:hover > .active,
.table-hover > tbody > tr.active:hover > th {
  background-color: #e8e8e8;
}
.table > thead > tr > td.success,
.table > tbody > tr > td.success,
.table > tfoot > tr > td.success,
.table > thead > tr > th.success,
.table > tbody > tr > th.success,
.table > tfoot > tr > th.success,
.table > thead > tr.success > td,
.table > tbody > tr.success > td,
.table > tfoot > tr.success > td,
.table > thead > tr.success > th,
.table > tbody > tr.success > th,
.table > tfoot > tr.success > th {
  background-color: #dff0d8;
}
.table-hover > tbody > tr > td.success:hover,
.table-hover > tbody > tr > th.success:hover,
.table-hover > tbody > tr.success:hover > td,
.table-hover > tbody > tr:hover > .success,
.table-hover > tbody > tr.success:hover > th {
  background-color: #d0e9c6;
}
.table > thead > tr > td.info,
.table > tbody > tr > td.info,
.table > tfoot > tr > td.info,
.table > thead > tr > th.info,
.table > tbody > tr > th.info,
.table > tfoot > tr > th.info,
.table > thead > tr.info > td,
.table > tbody > tr.info > td,
.table > tfoot > tr.info > td,
.table > thead > tr.info > th,
.table > tbody > tr.info > th,
.table > tfoot > tr.info > th {
  background-color: #d9edf7;
}
.table-hover > tbody > tr > td.info:hover,
.table-hover > tbody > tr > th.info:hover,
.table-hover > tbody > tr.info:hover > td,
.table-hover > tbody > tr:hover > .info,
.table-hover > tbody > tr.info:hover > th {
  background-color: #c4e3f3;
}
.table > thead > tr > td.warning,
.table > tbody > tr > td.warning,
.table > tfoot > tr > td.warning,
.table > thead > tr > th.warning,
.table > tbody > tr > th.warning,
.table > tfoot > tr > th.warning,
.table > thead > tr.warning > td,
.table > tbody > tr.warning > td,
.table > tfoot > tr.warning > td,
.table > thead > tr.warning > th,
.table > tbody > tr.warning > th,
.table > tfoot > tr.warning > th {
  background-color: #fcf8e3;
}
.table-hover > tbody > tr > td.warning:hover,
.table-hover > tbody > tr > th.warning:hover,
.table-hover > tbody > tr.warning:hover > td,
.table-hover > tbody > tr:hover > .warning,
.table-hover > tbody > tr.warning:hover > th {
  background-color: #faf2cc;
}
.table > thead > tr > td.danger,
.table > tbody > tr > td.danger,
.table > tfoot > tr > td.danger,
.table > thead > tr > th.danger,
.table > tbody > tr > th.danger,
.table > tfoot > tr > th.danger,
.table > thead > tr.danger > td,
.table > tbody > tr.danger > td,
.table > tfoot > tr.danger > td,
.table > thead > tr.danger > th,
.table > tbody > tr.danger > th,
.table > tfoot > tr.danger > th {
  background-color: #f2dede;
}
.table-hover > tbody > tr > td.danger:hover,
.table-hover > tbody > tr > th.danger:hover,
.table-hover > tbody > tr.danger:hover > td,
.table-hover > tbody > tr:hover > .danger,
.table-hover > tbody > tr.danger:hover > th {
  background-color: #ebcccc;
}
.table-responsive {
  overflow-x: auto;
  min-height: 0.01%;
}
@media screen and (max-width: 767px) {
  .table-responsive {
    width: 100%;
    margin-bottom: 13.5px;
    overflow-y: hidden;
    -ms-overflow-style: -ms-autohiding-scrollbar;
    border: 1px solid #ddd;
  }
  .table-responsive > .table {
    margin-bottom: 0;
  }
  .table-responsive > .table > thead > tr > th,
  .table-responsive > .table > tbody > tr > th,
  .table-responsive > .table > tfoot > tr > th,
  .table-responsive > .table > thead > tr > td,
  .table-responsive > .table > tbody > tr > td,
  .table-responsive > .table > tfoot > tr > td {
    white-space: nowrap;
  }
  .table-responsive > .table-bordered {
    border: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:first-child,
  .table-responsive > .table-bordered > tbody > tr > th:first-child,
  .table-responsive > .table-bordered > tfoot > tr > th:first-child,
  .table-responsive > .table-bordered > thead > tr > td:first-child,
  .table-responsive > .table-bordered > tbody > tr > td:first-child,
  .table-responsive > .table-bordered > tfoot > tr > td:first-child {
    border-left: 0;
  }
  .table-responsive > .table-bordered > thead > tr > th:last-child,
  .table-responsive > .table-bordered > tbody > tr > th:last-child,
  .table-responsive > .table-bordered > tfoot > tr > th:last-child,
  .table-responsive > .table-bordered > thead > tr > td:last-child,
  .table-responsive > .table-bordered > tbody > tr > td:last-child,
  .table-responsive > .table-bordered > tfoot > tr > td:last-child {
    border-right: 0;
  }
  .table-responsive > .table-bordered > tbody > tr:last-child > th,
  .table-responsive > .table-bordered > tfoot > tr:last-child > th,
  .table-responsive > .table-bordered > tbody > tr:last-child > td,
  .table-responsive > .table-bordered > tfoot > tr:last-child > td {
    border-bottom: 0;
  }
}
fieldset {
  padding: 0;
  margin: 0;
  border: 0;
  min-width: 0;
}
legend {
  display: block;
  width: 100%;
  padding: 0;
  margin-bottom: 18px;
  font-size: 19.5px;
  line-height: inherit;
  color: #333333;
  border: 0;
  border-bottom: 1px solid #e5e5e5;
}
label {
  display: inline-block;
  max-width: 100%;
  margin-bottom: 5px;
  font-weight: bold;
}
input[type="search"] {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
input[type="radio"],
input[type="checkbox"] {
  margin: 4px 0 0;
  margin-top: 1px \9;
  line-height: normal;
}
input[type="file"] {
  display: block;
}
input[type="range"] {
  display: block;
  width: 100%;
}
select[multiple],
select[size] {
  height: auto;
}
input[type="file"]:focus,
input[type="radio"]:focus,
input[type="checkbox"]:focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
output {
  display: block;
  padding-top: 7px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
}
.form-control {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.form-control:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.form-control::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.form-control:-ms-input-placeholder {
  color: #999;
}
.form-control::-webkit-input-placeholder {
  color: #999;
}
.form-control::-ms-expand {
  border: 0;
  background-color: transparent;
}
.form-control[disabled],
.form-control[readonly],
fieldset[disabled] .form-control {
  background-color: #eeeeee;
  opacity: 1;
}
.form-control[disabled],
fieldset[disabled] .form-control {
  cursor: not-allowed;
}
textarea.form-control {
  height: auto;
}
input[type="search"] {
  -webkit-appearance: none;
}
@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input[type="date"].form-control,
  input[type="time"].form-control,
  input[type="datetime-local"].form-control,
  input[type="month"].form-control {
    line-height: 32px;
  }
  input[type="date"].input-sm,
  input[type="time"].input-sm,
  input[type="datetime-local"].input-sm,
  input[type="month"].input-sm,
  .input-group-sm input[type="date"],
  .input-group-sm input[type="time"],
  .input-group-sm input[type="datetime-local"],
  .input-group-sm input[type="month"] {
    line-height: 30px;
  }
  input[type="date"].input-lg,
  input[type="time"].input-lg,
  input[type="datetime-local"].input-lg,
  input[type="month"].input-lg,
  .input-group-lg input[type="date"],
  .input-group-lg input[type="time"],
  .input-group-lg input[type="datetime-local"],
  .input-group-lg input[type="month"] {
    line-height: 45px;
  }
}
.form-group {
  margin-bottom: 15px;
}
.radio,
.checkbox {
  position: relative;
  display: block;
  margin-top: 10px;
  margin-bottom: 10px;
}
.radio label,
.checkbox label {
  min-height: 18px;
  padding-left: 20px;
  margin-bottom: 0;
  font-weight: normal;
  cursor: pointer;
}
.radio input[type="radio"],
.radio-inline input[type="radio"],
.checkbox input[type="checkbox"],
.checkbox-inline input[type="checkbox"] {
  position: absolute;
  margin-left: -20px;
  margin-top: 4px \9;
}
.radio + .radio,
.checkbox + .checkbox {
  margin-top: -5px;
}
.radio-inline,
.checkbox-inline {
  position: relative;
  display: inline-block;
  padding-left: 20px;
  margin-bottom: 0;
  vertical-align: middle;
  font-weight: normal;
  cursor: pointer;
}
.radio-inline + .radio-inline,
.checkbox-inline + .checkbox-inline {
  margin-top: 0;
  margin-left: 10px;
}
input[type="radio"][disabled],
input[type="checkbox"][disabled],
input[type="radio"].disabled,
input[type="checkbox"].disabled,
fieldset[disabled] input[type="radio"],
fieldset[disabled] input[type="checkbox"] {
  cursor: not-allowed;
}
.radio-inline.disabled,
.checkbox-inline.disabled,
fieldset[disabled] .radio-inline,
fieldset[disabled] .checkbox-inline {
  cursor: not-allowed;
}
.radio.disabled label,
.checkbox.disabled label,
fieldset[disabled] .radio label,
fieldset[disabled] .checkbox label {
  cursor: not-allowed;
}
.form-control-static {
  padding-top: 7px;
  padding-bottom: 7px;
  margin-bottom: 0;
  min-height: 31px;
}
.form-control-static.input-lg,
.form-control-static.input-sm {
  padding-left: 0;
  padding-right: 0;
}
.input-sm {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
select.input-sm {
  height: 30px;
  line-height: 30px;
}
textarea.input-sm,
select[multiple].input-sm {
  height: auto;
}
.form-group-sm .form-control {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.form-group-sm select.form-control {
  height: 30px;
  line-height: 30px;
}
.form-group-sm textarea.form-control,
.form-group-sm select[multiple].form-control {
  height: auto;
}
.form-group-sm .form-control-static {
  height: 30px;
  min-height: 30px;
  padding: 6px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.input-lg {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
select.input-lg {
  height: 45px;
  line-height: 45px;
}
textarea.input-lg,
select[multiple].input-lg {
  height: auto;
}
.form-group-lg .form-control {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
.form-group-lg select.form-control {
  height: 45px;
  line-height: 45px;
}
.form-group-lg textarea.form-control,
.form-group-lg select[multiple].form-control {
  height: auto;
}
.form-group-lg .form-control-static {
  height: 45px;
  min-height: 35px;
  padding: 11px 16px;
  font-size: 17px;
  line-height: 1.3333333;
}
.has-feedback {
  position: relative;
}
.has-feedback .form-control {
  padding-right: 40px;
}
.form-control-feedback {
  position: absolute;
  top: 0;
  right: 0;
  z-index: 2;
  display: block;
  width: 32px;
  height: 32px;
  line-height: 32px;
  text-align: center;
  pointer-events: none;
}
.input-lg + .form-control-feedback,
.input-group-lg + .form-control-feedback,
.form-group-lg .form-control + .form-control-feedback {
  width: 45px;
  height: 45px;
  line-height: 45px;
}
.input-sm + .form-control-feedback,
.input-group-sm + .form-control-feedback,
.form-group-sm .form-control + .form-control-feedback {
  width: 30px;
  height: 30px;
  line-height: 30px;
}
.has-success .help-block,
.has-success .control-label,
.has-success .radio,
.has-success .checkbox,
.has-success .radio-inline,
.has-success .checkbox-inline,
.has-success.radio label,
.has-success.checkbox label,
.has-success.radio-inline label,
.has-success.checkbox-inline label {
  color: #3c763d;
}
.has-success .form-control {
  border-color: #3c763d;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-success .form-control:focus {
  border-color: #2b542c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #67b168;
}
.has-success .input-group-addon {
  color: #3c763d;
  border-color: #3c763d;
  background-color: #dff0d8;
}
.has-success .form-control-feedback {
  color: #3c763d;
}
.has-warning .help-block,
.has-warning .control-label,
.has-warning .radio,
.has-warning .checkbox,
.has-warning .radio-inline,
.has-warning .checkbox-inline,
.has-warning.radio label,
.has-warning.checkbox label,
.has-warning.radio-inline label,
.has-warning.checkbox-inline label {
  color: #8a6d3b;
}
.has-warning .form-control {
  border-color: #8a6d3b;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-warning .form-control:focus {
  border-color: #66512c;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #c0a16b;
}
.has-warning .input-group-addon {
  color: #8a6d3b;
  border-color: #8a6d3b;
  background-color: #fcf8e3;
}
.has-warning .form-control-feedback {
  color: #8a6d3b;
}
.has-error .help-block,
.has-error .control-label,
.has-error .radio,
.has-error .checkbox,
.has-error .radio-inline,
.has-error .checkbox-inline,
.has-error.radio label,
.has-error.checkbox label,
.has-error.radio-inline label,
.has-error.checkbox-inline label {
  color: #a94442;
}
.has-error .form-control {
  border-color: #a94442;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}
.has-error .form-control:focus {
  border-color: #843534;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #ce8483;
}
.has-error .input-group-addon {
  color: #a94442;
  border-color: #a94442;
  background-color: #f2dede;
}
.has-error .form-control-feedback {
  color: #a94442;
}
.has-feedback label ~ .form-control-feedback {
  top: 23px;
}
.has-feedback label.sr-only ~ .form-control-feedback {
  top: 0;
}
.help-block {
  display: block;
  margin-top: 5px;
  margin-bottom: 10px;
  color: #404040;
}
@media (min-width: 768px) {
  .form-inline .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .form-inline .form-control-static {
    display: inline-block;
  }
  .form-inline .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .form-inline .input-group .input-group-addon,
  .form-inline .input-group .input-group-btn,
  .form-inline .input-group .form-control {
    width: auto;
  }
  .form-inline .input-group > .form-control {
    width: 100%;
  }
  .form-inline .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio,
  .form-inline .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .form-inline .radio label,
  .form-inline .checkbox label {
    padding-left: 0;
  }
  .form-inline .radio input[type="radio"],
  .form-inline .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .form-inline .has-feedback .form-control-feedback {
    top: 0;
  }
}
.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  margin-top: 0;
  margin-bottom: 0;
  padding-top: 7px;
}
.form-horizontal .radio,
.form-horizontal .checkbox {
  min-height: 25px;
}
.form-horizontal .form-group {
  margin-left: 0px;
  margin-right: 0px;
}
@media (min-width: 768px) {
  .form-horizontal .control-label {
    text-align: right;
    margin-bottom: 0;
    padding-top: 7px;
  }
}
.form-horizontal .has-feedback .form-control-feedback {
  right: 0px;
}
@media (min-width: 768px) {
  .form-horizontal .form-group-lg .control-label {
    padding-top: 11px;
    font-size: 17px;
  }
}
@media (min-width: 768px) {
  .form-horizontal .form-group-sm .control-label {
    padding-top: 6px;
    font-size: 12px;
  }
}
.btn {
  display: inline-block;
  margin-bottom: 0;
  font-weight: normal;
  text-align: center;
  vertical-align: middle;
  touch-action: manipulation;
  cursor: pointer;
  background-image: none;
  border: 1px solid transparent;
  white-space: nowrap;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  border-radius: 2px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.btn:focus,
.btn:active:focus,
.btn.active:focus,
.btn.focus,
.btn:active.focus,
.btn.active.focus {
  outline: 5px auto -webkit-focus-ring-color;
  outline-offset: -2px;
}
.btn:hover,
.btn:focus,
.btn.focus {
  color: #333;
  text-decoration: none;
}
.btn:active,
.btn.active {
  outline: 0;
  background-image: none;
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn.disabled,
.btn[disabled],
fieldset[disabled] .btn {
  cursor: not-allowed;
  opacity: 0.65;
  filter: alpha(opacity=65);
  -webkit-box-shadow: none;
  box-shadow: none;
}
a.btn.disabled,
fieldset[disabled] a.btn {
  pointer-events: none;
}
.btn-default {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.btn-default:focus,
.btn-default.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.btn-default:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.btn-default:active:hover,
.btn-default.active:hover,
.open > .dropdown-toggle.btn-default:hover,
.btn-default:active:focus,
.btn-default.active:focus,
.open > .dropdown-toggle.btn-default:focus,
.btn-default:active.focus,
.btn-default.active.focus,
.open > .dropdown-toggle.btn-default.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.btn-default:active,
.btn-default.active,
.open > .dropdown-toggle.btn-default {
  background-image: none;
}
.btn-default.disabled:hover,
.btn-default[disabled]:hover,
fieldset[disabled] .btn-default:hover,
.btn-default.disabled:focus,
.btn-default[disabled]:focus,
fieldset[disabled] .btn-default:focus,
.btn-default.disabled.focus,
.btn-default[disabled].focus,
fieldset[disabled] .btn-default.focus {
  background-color: #fff;
  border-color: #ccc;
}
.btn-default .badge {
  color: #fff;
  background-color: #333;
}
.btn-primary {
  color: #fff;
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary:focus,
.btn-primary.focus {
  color: #fff;
  background-color: #286090;
  border-color: #122b40;
}
.btn-primary:hover {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  color: #fff;
  background-color: #286090;
  border-color: #204d74;
}
.btn-primary:active:hover,
.btn-primary.active:hover,
.open > .dropdown-toggle.btn-primary:hover,
.btn-primary:active:focus,
.btn-primary.active:focus,
.open > .dropdown-toggle.btn-primary:focus,
.btn-primary:active.focus,
.btn-primary.active.focus,
.open > .dropdown-toggle.btn-primary.focus {
  color: #fff;
  background-color: #204d74;
  border-color: #122b40;
}
.btn-primary:active,
.btn-primary.active,
.open > .dropdown-toggle.btn-primary {
  background-image: none;
}
.btn-primary.disabled:hover,
.btn-primary[disabled]:hover,
fieldset[disabled] .btn-primary:hover,
.btn-primary.disabled:focus,
.btn-primary[disabled]:focus,
fieldset[disabled] .btn-primary:focus,
.btn-primary.disabled.focus,
.btn-primary[disabled].focus,
fieldset[disabled] .btn-primary.focus {
  background-color: #337ab7;
  border-color: #2e6da4;
}
.btn-primary .badge {
  color: #337ab7;
  background-color: #fff;
}
.btn-success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success:focus,
.btn-success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.btn-success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.btn-success:active:hover,
.btn-success.active:hover,
.open > .dropdown-toggle.btn-success:hover,
.btn-success:active:focus,
.btn-success.active:focus,
.open > .dropdown-toggle.btn-success:focus,
.btn-success:active.focus,
.btn-success.active.focus,
.open > .dropdown-toggle.btn-success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.btn-success:active,
.btn-success.active,
.open > .dropdown-toggle.btn-success {
  background-image: none;
}
.btn-success.disabled:hover,
.btn-success[disabled]:hover,
fieldset[disabled] .btn-success:hover,
.btn-success.disabled:focus,
.btn-success[disabled]:focus,
fieldset[disabled] .btn-success:focus,
.btn-success.disabled.focus,
.btn-success[disabled].focus,
fieldset[disabled] .btn-success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.btn-success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.btn-info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info:focus,
.btn-info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.btn-info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.btn-info:active:hover,
.btn-info.active:hover,
.open > .dropdown-toggle.btn-info:hover,
.btn-info:active:focus,
.btn-info.active:focus,
.open > .dropdown-toggle.btn-info:focus,
.btn-info:active.focus,
.btn-info.active.focus,
.open > .dropdown-toggle.btn-info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.btn-info:active,
.btn-info.active,
.open > .dropdown-toggle.btn-info {
  background-image: none;
}
.btn-info.disabled:hover,
.btn-info[disabled]:hover,
fieldset[disabled] .btn-info:hover,
.btn-info.disabled:focus,
.btn-info[disabled]:focus,
fieldset[disabled] .btn-info:focus,
.btn-info.disabled.focus,
.btn-info[disabled].focus,
fieldset[disabled] .btn-info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.btn-info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.btn-warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning:focus,
.btn-warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.btn-warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.btn-warning:active:hover,
.btn-warning.active:hover,
.open > .dropdown-toggle.btn-warning:hover,
.btn-warning:active:focus,
.btn-warning.active:focus,
.open > .dropdown-toggle.btn-warning:focus,
.btn-warning:active.focus,
.btn-warning.active.focus,
.open > .dropdown-toggle.btn-warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.btn-warning:active,
.btn-warning.active,
.open > .dropdown-toggle.btn-warning {
  background-image: none;
}
.btn-warning.disabled:hover,
.btn-warning[disabled]:hover,
fieldset[disabled] .btn-warning:hover,
.btn-warning.disabled:focus,
.btn-warning[disabled]:focus,
fieldset[disabled] .btn-warning:focus,
.btn-warning.disabled.focus,
.btn-warning[disabled].focus,
fieldset[disabled] .btn-warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.btn-warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.btn-danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger:focus,
.btn-danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.btn-danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.btn-danger:active:hover,
.btn-danger.active:hover,
.open > .dropdown-toggle.btn-danger:hover,
.btn-danger:active:focus,
.btn-danger.active:focus,
.open > .dropdown-toggle.btn-danger:focus,
.btn-danger:active.focus,
.btn-danger.active.focus,
.open > .dropdown-toggle.btn-danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.btn-danger:active,
.btn-danger.active,
.open > .dropdown-toggle.btn-danger {
  background-image: none;
}
.btn-danger.disabled:hover,
.btn-danger[disabled]:hover,
fieldset[disabled] .btn-danger:hover,
.btn-danger.disabled:focus,
.btn-danger[disabled]:focus,
fieldset[disabled] .btn-danger:focus,
.btn-danger.disabled.focus,
.btn-danger[disabled].focus,
fieldset[disabled] .btn-danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.btn-danger .badge {
  color: #d9534f;
  background-color: #fff;
}
.btn-link {
  color: #337ab7;
  font-weight: normal;
  border-radius: 0;
}
.btn-link,
.btn-link:active,
.btn-link.active,
.btn-link[disabled],
fieldset[disabled] .btn-link {
  background-color: transparent;
  -webkit-box-shadow: none;
  box-shadow: none;
}
.btn-link,
.btn-link:hover,
.btn-link:focus,
.btn-link:active {
  border-color: transparent;
}
.btn-link:hover,
.btn-link:focus {
  color: #23527c;
  text-decoration: underline;
  background-color: transparent;
}
.btn-link[disabled]:hover,
fieldset[disabled] .btn-link:hover,
.btn-link[disabled]:focus,
fieldset[disabled] .btn-link:focus {
  color: #777777;
  text-decoration: none;
}
.btn-lg,
.btn-group-lg > .btn {
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
.btn-sm,
.btn-group-sm > .btn {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.btn-xs,
.btn-group-xs > .btn {
  padding: 1px 5px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
.btn-block {
  display: block;
  width: 100%;
}
.btn-block + .btn-block {
  margin-top: 5px;
}
input[type="submit"].btn-block,
input[type="reset"].btn-block,
input[type="button"].btn-block {
  width: 100%;
}
.fade {
  opacity: 0;
  -webkit-transition: opacity 0.15s linear;
  -o-transition: opacity 0.15s linear;
  transition: opacity 0.15s linear;
}
.fade.in {
  opacity: 1;
}
.collapse {
  display: none;
}
.collapse.in {
  display: block;
}
tr.collapse.in {
  display: table-row;
}
tbody.collapse.in {
  display: table-row-group;
}
.collapsing {
  position: relative;
  height: 0;
  overflow: hidden;
  -webkit-transition-property: height, visibility;
  transition-property: height, visibility;
  -webkit-transition-duration: 0.35s;
  transition-duration: 0.35s;
  -webkit-transition-timing-function: ease;
  transition-timing-function: ease;
}
.caret {
  display: inline-block;
  width: 0;
  height: 0;
  margin-left: 2px;
  vertical-align: middle;
  border-top: 4px dashed;
  border-top: 4px solid \9;
  border-right: 4px solid transparent;
  border-left: 4px solid transparent;
}
.dropup,
.dropdown {
  position: relative;
}
.dropdown-toggle:focus {
  outline: 0;
}
.dropdown-menu {
  position: absolute;
  top: 100%;
  left: 0;
  z-index: 1000;
  display: none;
  float: left;
  min-width: 160px;
  padding: 5px 0;
  margin: 2px 0 0;
  list-style: none;
  font-size: 13px;
  text-align: left;
  background-color: #fff;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.15);
  border-radius: 2px;
  -webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
  background-clip: padding-box;
}
.dropdown-menu.pull-right {
  right: 0;
  left: auto;
}
.dropdown-menu .divider {
  height: 1px;
  margin: 8px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.dropdown-menu > li > a {
  display: block;
  padding: 3px 20px;
  clear: both;
  font-weight: normal;
  line-height: 1.42857143;
  color: #333333;
  white-space: nowrap;
}
.dropdown-menu > li > a:hover,
.dropdown-menu > li > a:focus {
  text-decoration: none;
  color: #262626;
  background-color: #f5f5f5;
}
.dropdown-menu > .active > a,
.dropdown-menu > .active > a:hover,
.dropdown-menu > .active > a:focus {
  color: #fff;
  text-decoration: none;
  outline: 0;
  background-color: #337ab7;
}
.dropdown-menu > .disabled > a,
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  color: #777777;
}
.dropdown-menu > .disabled > a:hover,
.dropdown-menu > .disabled > a:focus {
  text-decoration: none;
  background-color: transparent;
  background-image: none;
  filter: progid:DXImageTransform.Microsoft.gradient(enabled = false);
  cursor: not-allowed;
}
.open > .dropdown-menu {
  display: block;
}
.open > a {
  outline: 0;
}
.dropdown-menu-right {
  left: auto;
  right: 0;
}
.dropdown-menu-left {
  left: 0;
  right: auto;
}
.dropdown-header {
  display: block;
  padding: 3px 20px;
  font-size: 12px;
  line-height: 1.42857143;
  color: #777777;
  white-space: nowrap;
}
.dropdown-backdrop {
  position: fixed;
  left: 0;
  right: 0;
  bottom: 0;
  top: 0;
  z-index: 990;
}
.pull-right > .dropdown-menu {
  right: 0;
  left: auto;
}
.dropup .caret,
.navbar-fixed-bottom .dropdown .caret {
  border-top: 0;
  border-bottom: 4px dashed;
  border-bottom: 4px solid \9;
  content: "";
}
.dropup .dropdown-menu,
.navbar-fixed-bottom .dropdown .dropdown-menu {
  top: auto;
  bottom: 100%;
  margin-bottom: 2px;
}
@media (min-width: 541px) {
  .navbar-right .dropdown-menu {
    left: auto;
    right: 0;
  }
  .navbar-right .dropdown-menu-left {
    left: 0;
    right: auto;
  }
}
.btn-group,
.btn-group-vertical {
  position: relative;
  display: inline-block;
  vertical-align: middle;
}
.btn-group > .btn,
.btn-group-vertical > .btn {
  position: relative;
  float: left;
}
.btn-group > .btn:hover,
.btn-group-vertical > .btn:hover,
.btn-group > .btn:focus,
.btn-group-vertical > .btn:focus,
.btn-group > .btn:active,
.btn-group-vertical > .btn:active,
.btn-group > .btn.active,
.btn-group-vertical > .btn.active {
  z-index: 2;
}
.btn-group .btn + .btn,
.btn-group .btn + .btn-group,
.btn-group .btn-group + .btn,
.btn-group .btn-group + .btn-group {
  margin-left: -1px;
}
.btn-toolbar {
  margin-left: -5px;
}
.btn-toolbar .btn,
.btn-toolbar .btn-group,
.btn-toolbar .input-group {
  float: left;
}
.btn-toolbar > .btn,
.btn-toolbar > .btn-group,
.btn-toolbar > .input-group {
  margin-left: 5px;
}
.btn-group > .btn:not(:first-child):not(:last-child):not(.dropdown-toggle) {
  border-radius: 0;
}
.btn-group > .btn:first-child {
  margin-left: 0;
}
.btn-group > .btn:first-child:not(:last-child):not(.dropdown-toggle) {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.btn-group > .btn:last-child:not(:first-child),
.btn-group > .dropdown-toggle:not(:first-child) {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.btn-group > .btn-group {
  float: left;
}
.btn-group > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.btn-group > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.btn-group .dropdown-toggle:active,
.btn-group.open .dropdown-toggle {
  outline: 0;
}
.btn-group > .btn + .dropdown-toggle {
  padding-left: 8px;
  padding-right: 8px;
}
.btn-group > .btn-lg + .dropdown-toggle {
  padding-left: 12px;
  padding-right: 12px;
}
.btn-group.open .dropdown-toggle {
  -webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
  box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
}
.btn-group.open .dropdown-toggle.btn-link {
  -webkit-box-shadow: none;
  box-shadow: none;
}
.btn .caret {
  margin-left: 0;
}
.btn-lg .caret {
  border-width: 5px 5px 0;
  border-bottom-width: 0;
}
.dropup .btn-lg .caret {
  border-width: 0 5px 5px;
}
.btn-group-vertical > .btn,
.btn-group-vertical > .btn-group,
.btn-group-vertical > .btn-group > .btn {
  display: block;
  float: none;
  width: 100%;
  max-width: 100%;
}
.btn-group-vertical > .btn-group > .btn {
  float: none;
}
.btn-group-vertical > .btn + .btn,
.btn-group-vertical > .btn + .btn-group,
.btn-group-vertical > .btn-group + .btn,
.btn-group-vertical > .btn-group + .btn-group {
  margin-top: -1px;
  margin-left: 0;
}
.btn-group-vertical > .btn:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.btn-group-vertical > .btn:first-child:not(:last-child) {
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn:last-child:not(:first-child) {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
.btn-group-vertical > .btn-group:not(:first-child):not(:last-child) > .btn {
  border-radius: 0;
}
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .btn:last-child,
.btn-group-vertical > .btn-group:first-child:not(:last-child) > .dropdown-toggle {
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.btn-group-vertical > .btn-group:last-child:not(:first-child) > .btn:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.btn-group-justified {
  display: table;
  width: 100%;
  table-layout: fixed;
  border-collapse: separate;
}
.btn-group-justified > .btn,
.btn-group-justified > .btn-group {
  float: none;
  display: table-cell;
  width: 1%;
}
.btn-group-justified > .btn-group .btn {
  width: 100%;
}
.btn-group-justified > .btn-group .dropdown-menu {
  left: auto;
}
[data-toggle="buttons"] > .btn input[type="radio"],
[data-toggle="buttons"] > .btn-group > .btn input[type="radio"],
[data-toggle="buttons"] > .btn input[type="checkbox"],
[data-toggle="buttons"] > .btn-group > .btn input[type="checkbox"] {
  position: absolute;
  clip: rect(0, 0, 0, 0);
  pointer-events: none;
}
.input-group {
  position: relative;
  display: table;
  border-collapse: separate;
}
.input-group[class*="col-"] {
  float: none;
  padding-left: 0;
  padding-right: 0;
}
.input-group .form-control {
  position: relative;
  z-index: 2;
  float: left;
  width: 100%;
  margin-bottom: 0;
}
.input-group .form-control:focus {
  z-index: 3;
}
.input-group-lg > .form-control,
.input-group-lg > .input-group-addon,
.input-group-lg > .input-group-btn > .btn {
  height: 45px;
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
  border-radius: 3px;
}
select.input-group-lg > .form-control,
select.input-group-lg > .input-group-addon,
select.input-group-lg > .input-group-btn > .btn {
  height: 45px;
  line-height: 45px;
}
textarea.input-group-lg > .form-control,
textarea.input-group-lg > .input-group-addon,
textarea.input-group-lg > .input-group-btn > .btn,
select[multiple].input-group-lg > .form-control,
select[multiple].input-group-lg > .input-group-addon,
select[multiple].input-group-lg > .input-group-btn > .btn {
  height: auto;
}
.input-group-sm > .form-control,
.input-group-sm > .input-group-addon,
.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
}
select.input-group-sm > .form-control,
select.input-group-sm > .input-group-addon,
select.input-group-sm > .input-group-btn > .btn {
  height: 30px;
  line-height: 30px;
}
textarea.input-group-sm > .form-control,
textarea.input-group-sm > .input-group-addon,
textarea.input-group-sm > .input-group-btn > .btn,
select[multiple].input-group-sm > .form-control,
select[multiple].input-group-sm > .input-group-addon,
select[multiple].input-group-sm > .input-group-btn > .btn {
  height: auto;
}
.input-group-addon,
.input-group-btn,
.input-group .form-control {
  display: table-cell;
}
.input-group-addon:not(:first-child):not(:last-child),
.input-group-btn:not(:first-child):not(:last-child),
.input-group .form-control:not(:first-child):not(:last-child) {
  border-radius: 0;
}
.input-group-addon,
.input-group-btn {
  width: 1%;
  white-space: nowrap;
  vertical-align: middle;
}
.input-group-addon {
  padding: 6px 12px;
  font-size: 13px;
  font-weight: normal;
  line-height: 1;
  color: #555555;
  text-align: center;
  background-color: #eeeeee;
  border: 1px solid #ccc;
  border-radius: 2px;
}
.input-group-addon.input-sm {
  padding: 5px 10px;
  font-size: 12px;
  border-radius: 1px;
}
.input-group-addon.input-lg {
  padding: 10px 16px;
  font-size: 17px;
  border-radius: 3px;
}
.input-group-addon input[type="radio"],
.input-group-addon input[type="checkbox"] {
  margin-top: 0;
}
.input-group .form-control:first-child,
.input-group-addon:first-child,
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group > .btn,
.input-group-btn:first-child > .dropdown-toggle,
.input-group-btn:last-child > .btn:not(:last-child):not(.dropdown-toggle),
.input-group-btn:last-child > .btn-group:not(:last-child) > .btn {
  border-bottom-right-radius: 0;
  border-top-right-radius: 0;
}
.input-group-addon:first-child {
  border-right: 0;
}
.input-group .form-control:last-child,
.input-group-addon:last-child,
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group > .btn,
.input-group-btn:last-child > .dropdown-toggle,
.input-group-btn:first-child > .btn:not(:first-child),
.input-group-btn:first-child > .btn-group:not(:first-child) > .btn {
  border-bottom-left-radius: 0;
  border-top-left-radius: 0;
}
.input-group-addon:last-child {
  border-left: 0;
}
.input-group-btn {
  position: relative;
  font-size: 0;
  white-space: nowrap;
}
.input-group-btn > .btn {
  position: relative;
}
.input-group-btn > .btn + .btn {
  margin-left: -1px;
}
.input-group-btn > .btn:hover,
.input-group-btn > .btn:focus,
.input-group-btn > .btn:active {
  z-index: 2;
}
.input-group-btn:first-child > .btn,
.input-group-btn:first-child > .btn-group {
  margin-right: -1px;
}
.input-group-btn:last-child > .btn,
.input-group-btn:last-child > .btn-group {
  z-index: 2;
  margin-left: -1px;
}
.nav {
  margin-bottom: 0;
  padding-left: 0;
  list-style: none;
}
.nav > li {
  position: relative;
  display: block;
}
.nav > li > a {
  position: relative;
  display: block;
  padding: 10px 15px;
}
.nav > li > a:hover,
.nav > li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.nav > li.disabled > a {
  color: #777777;
}
.nav > li.disabled > a:hover,
.nav > li.disabled > a:focus {
  color: #777777;
  text-decoration: none;
  background-color: transparent;
  cursor: not-allowed;
}
.nav .open > a,
.nav .open > a:hover,
.nav .open > a:focus {
  background-color: #eeeeee;
  border-color: #337ab7;
}
.nav .nav-divider {
  height: 1px;
  margin: 8px 0;
  overflow: hidden;
  background-color: #e5e5e5;
}
.nav > li > a > img {
  max-width: none;
}
.nav-tabs {
  border-bottom: 1px solid #ddd;
}
.nav-tabs > li {
  float: left;
  margin-bottom: -1px;
}
.nav-tabs > li > a {
  margin-right: 2px;
  line-height: 1.42857143;
  border: 1px solid transparent;
  border-radius: 2px 2px 0 0;
}
.nav-tabs > li > a:hover {
  border-color: #eeeeee #eeeeee #ddd;
}
.nav-tabs > li.active > a,
.nav-tabs > li.active > a:hover,
.nav-tabs > li.active > a:focus {
  color: #555555;
  background-color: #fff;
  border: 1px solid #ddd;
  border-bottom-color: transparent;
  cursor: default;
}
.nav-tabs.nav-justified {
  width: 100%;
  border-bottom: 0;
}
.nav-tabs.nav-justified > li {
  float: none;
}
.nav-tabs.nav-justified > li > a {
  text-align: center;
  margin-bottom: 5px;
}
.nav-tabs.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-tabs.nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs.nav-justified > li > a {
  margin-right: 0;
  border-radius: 2px;
}
.nav-tabs.nav-justified > .active > a,
.nav-tabs.nav-justified > .active > a:hover,
.nav-tabs.nav-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs.nav-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 2px 2px 0 0;
  }
  .nav-tabs.nav-justified > .active > a,
  .nav-tabs.nav-justified > .active > a:hover,
  .nav-tabs.nav-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.nav-pills > li {
  float: left;
}
.nav-pills > li > a {
  border-radius: 2px;
}
.nav-pills > li + li {
  margin-left: 2px;
}
.nav-pills > li.active > a,
.nav-pills > li.active > a:hover,
.nav-pills > li.active > a:focus {
  color: #fff;
  background-color: #337ab7;
}
.nav-stacked > li {
  float: none;
}
.nav-stacked > li + li {
  margin-top: 2px;
  margin-left: 0;
}
.nav-justified {
  width: 100%;
}
.nav-justified > li {
  float: none;
}
.nav-justified > li > a {
  text-align: center;
  margin-bottom: 5px;
}
.nav-justified > .dropdown .dropdown-menu {
  top: auto;
  left: auto;
}
@media (min-width: 768px) {
  .nav-justified > li {
    display: table-cell;
    width: 1%;
  }
  .nav-justified > li > a {
    margin-bottom: 0;
  }
}
.nav-tabs-justified {
  border-bottom: 0;
}
.nav-tabs-justified > li > a {
  margin-right: 0;
  border-radius: 2px;
}
.nav-tabs-justified > .active > a,
.nav-tabs-justified > .active > a:hover,
.nav-tabs-justified > .active > a:focus {
  border: 1px solid #ddd;
}
@media (min-width: 768px) {
  .nav-tabs-justified > li > a {
    border-bottom: 1px solid #ddd;
    border-radius: 2px 2px 0 0;
  }
  .nav-tabs-justified > .active > a,
  .nav-tabs-justified > .active > a:hover,
  .nav-tabs-justified > .active > a:focus {
    border-bottom-color: #fff;
  }
}
.tab-content > .tab-pane {
  display: none;
}
.tab-content > .active {
  display: block;
}
.nav-tabs .dropdown-menu {
  margin-top: -1px;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.navbar {
  position: relative;
  min-height: 30px;
  margin-bottom: 18px;
  border: 1px solid transparent;
}
@media (min-width: 541px) {
  .navbar {
    border-radius: 2px;
  }
}
@media (min-width: 541px) {
  .navbar-header {
    float: left;
  }
}
.navbar-collapse {
  overflow-x: visible;
  padding-right: 0px;
  padding-left: 0px;
  border-top: 1px solid transparent;
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1);
  -webkit-overflow-scrolling: touch;
}
.navbar-collapse.in {
  overflow-y: auto;
}
@media (min-width: 541px) {
  .navbar-collapse {
    width: auto;
    border-top: 0;
    box-shadow: none;
  }
  .navbar-collapse.collapse {
    display: block !important;
    height: auto !important;
    padding-bottom: 0;
    overflow: visible !important;
  }
  .navbar-collapse.in {
    overflow-y: visible;
  }
  .navbar-fixed-top .navbar-collapse,
  .navbar-static-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    padding-left: 0;
    padding-right: 0;
  }
}
.navbar-fixed-top .navbar-collapse,
.navbar-fixed-bottom .navbar-collapse {
  max-height: 340px;
}
@media (max-device-width: 540px) and (orientation: landscape) {
  .navbar-fixed-top .navbar-collapse,
  .navbar-fixed-bottom .navbar-collapse {
    max-height: 200px;
  }
}
.container > .navbar-header,
.container-fluid > .navbar-header,
.container > .navbar-collapse,
.container-fluid > .navbar-collapse {
  margin-right: 0px;
  margin-left: 0px;
}
@media (min-width: 541px) {
  .container > .navbar-header,
  .container-fluid > .navbar-header,
  .container > .navbar-collapse,
  .container-fluid > .navbar-collapse {
    margin-right: 0;
    margin-left: 0;
  }
}
.navbar-static-top {
  z-index: 1000;
  border-width: 0 0 1px;
}
@media (min-width: 541px) {
  .navbar-static-top {
    border-radius: 0;
  }
}
.navbar-fixed-top,
.navbar-fixed-bottom {
  position: fixed;
  right: 0;
  left: 0;
  z-index: 1030;
}
@media (min-width: 541px) {
  .navbar-fixed-top,
  .navbar-fixed-bottom {
    border-radius: 0;
  }
}
.navbar-fixed-top {
  top: 0;
  border-width: 0 0 1px;
}
.navbar-fixed-bottom {
  bottom: 0;
  margin-bottom: 0;
  border-width: 1px 0 0;
}
.navbar-brand {
  float: left;
  padding: 6px 0px;
  font-size: 17px;
  line-height: 18px;
  height: 30px;
}
.navbar-brand:hover,
.navbar-brand:focus {
  text-decoration: none;
}
.navbar-brand > img {
  display: block;
}
@media (min-width: 541px) {
  .navbar > .container .navbar-brand,
  .navbar > .container-fluid .navbar-brand {
    margin-left: 0px;
  }
}
.navbar-toggle {
  position: relative;
  float: right;
  margin-right: 0px;
  padding: 9px 10px;
  margin-top: -2px;
  margin-bottom: -2px;
  background-color: transparent;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 2px;
}
.navbar-toggle:focus {
  outline: 0;
}
.navbar-toggle .icon-bar {
  display: block;
  width: 22px;
  height: 2px;
  border-radius: 1px;
}
.navbar-toggle .icon-bar + .icon-bar {
  margin-top: 4px;
}
@media (min-width: 541px) {
  .navbar-toggle {
    display: none;
  }
}
.navbar-nav {
  margin: 3px 0px;
}
.navbar-nav > li > a {
  padding-top: 10px;
  padding-bottom: 10px;
  line-height: 18px;
}
@media (max-width: 540px) {
  .navbar-nav .open .dropdown-menu {
    position: static;
    float: none;
    width: auto;
    margin-top: 0;
    background-color: transparent;
    border: 0;
    box-shadow: none;
  }
  .navbar-nav .open .dropdown-menu > li > a,
  .navbar-nav .open .dropdown-menu .dropdown-header {
    padding: 5px 15px 5px 25px;
  }
  .navbar-nav .open .dropdown-menu > li > a {
    line-height: 18px;
  }
  .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-nav .open .dropdown-menu > li > a:focus {
    background-image: none;
  }
}
@media (min-width: 541px) {
  .navbar-nav {
    float: left;
    margin: 0;
  }
  .navbar-nav > li {
    float: left;
  }
  .navbar-nav > li > a {
    padding-top: 6px;
    padding-bottom: 6px;
  }
}
.navbar-form {
  margin-left: 0px;
  margin-right: 0px;
  padding: 10px 0px;
  border-top: 1px solid transparent;
  border-bottom: 1px solid transparent;
  -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.1), 0 1px 0 rgba(255, 255, 255, 0.1);
  margin-top: -1px;
  margin-bottom: -1px;
}
@media (min-width: 768px) {
  .navbar-form .form-group {
    display: inline-block;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .form-control {
    display: inline-block;
    width: auto;
    vertical-align: middle;
  }
  .navbar-form .form-control-static {
    display: inline-block;
  }
  .navbar-form .input-group {
    display: inline-table;
    vertical-align: middle;
  }
  .navbar-form .input-group .input-group-addon,
  .navbar-form .input-group .input-group-btn,
  .navbar-form .input-group .form-control {
    width: auto;
  }
  .navbar-form .input-group > .form-control {
    width: 100%;
  }
  .navbar-form .control-label {
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio,
  .navbar-form .checkbox {
    display: inline-block;
    margin-top: 0;
    margin-bottom: 0;
    vertical-align: middle;
  }
  .navbar-form .radio label,
  .navbar-form .checkbox label {
    padding-left: 0;
  }
  .navbar-form .radio input[type="radio"],
  .navbar-form .checkbox input[type="checkbox"] {
    position: relative;
    margin-left: 0;
  }
  .navbar-form .has-feedback .form-control-feedback {
    top: 0;
  }
}
@media (max-width: 540px) {
  .navbar-form .form-group {
    margin-bottom: 5px;
  }
  .navbar-form .form-group:last-child {
    margin-bottom: 0;
  }
}
@media (min-width: 541px) {
  .navbar-form {
    width: auto;
    border: 0;
    margin-left: 0;
    margin-right: 0;
    padding-top: 0;
    padding-bottom: 0;
    -webkit-box-shadow: none;
    box-shadow: none;
  }
}
.navbar-nav > li > .dropdown-menu {
  margin-top: 0;
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.navbar-fixed-bottom .navbar-nav > li > .dropdown-menu {
  margin-bottom: 0;
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
.navbar-btn {
  margin-top: -1px;
  margin-bottom: -1px;
}
.navbar-btn.btn-sm {
  margin-top: 0px;
  margin-bottom: 0px;
}
.navbar-btn.btn-xs {
  margin-top: 4px;
  margin-bottom: 4px;
}
.navbar-text {
  margin-top: 6px;
  margin-bottom: 6px;
}
@media (min-width: 541px) {
  .navbar-text {
    float: left;
    margin-left: 0px;
    margin-right: 0px;
  }
}
@media (min-width: 541px) {
  .navbar-left {
    float: left !important;
    float: left;
  }
  .navbar-right {
    float: right !important;
    float: right;
    margin-right: 0px;
  }
  .navbar-right ~ .navbar-right {
    margin-right: 0;
  }
}
.navbar-default {
  background-color: #f8f8f8;
  border-color: #e7e7e7;
}
.navbar-default .navbar-brand {
  color: #777;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
  color: #5e5e5e;
  background-color: transparent;
}
.navbar-default .navbar-text {
  color: #777;
}
.navbar-default .navbar-nav > li > a {
  color: #777;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
  color: #333;
  background-color: transparent;
}
.navbar-default .navbar-nav > .active > a,
.navbar-default .navbar-nav > .active > a:hover,
.navbar-default .navbar-nav > .active > a:focus {
  color: #555;
  background-color: #e7e7e7;
}
.navbar-default .navbar-nav > .disabled > a,
.navbar-default .navbar-nav > .disabled > a:hover,
.navbar-default .navbar-nav > .disabled > a:focus {
  color: #ccc;
  background-color: transparent;
}
.navbar-default .navbar-toggle {
  border-color: #ddd;
}
.navbar-default .navbar-toggle:hover,
.navbar-default .navbar-toggle:focus {
  background-color: #ddd;
}
.navbar-default .navbar-toggle .icon-bar {
  background-color: #888;
}
.navbar-default .navbar-collapse,
.navbar-default .navbar-form {
  border-color: #e7e7e7;
}
.navbar-default .navbar-nav > .open > a,
.navbar-default .navbar-nav > .open > a:hover,
.navbar-default .navbar-nav > .open > a:focus {
  background-color: #e7e7e7;
  color: #555;
}
@media (max-width: 540px) {
  .navbar-default .navbar-nav .open .dropdown-menu > li > a {
    color: #777;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #333;
    background-color: transparent;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #555;
    background-color: #e7e7e7;
  }
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-default .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #ccc;
    background-color: transparent;
  }
}
.navbar-default .navbar-link {
  color: #777;
}
.navbar-default .navbar-link:hover {
  color: #333;
}
.navbar-default .btn-link {
  color: #777;
}
.navbar-default .btn-link:hover,
.navbar-default .btn-link:focus {
  color: #333;
}
.navbar-default .btn-link[disabled]:hover,
fieldset[disabled] .navbar-default .btn-link:hover,
.navbar-default .btn-link[disabled]:focus,
fieldset[disabled] .navbar-default .btn-link:focus {
  color: #ccc;
}
.navbar-inverse {
  background-color: #222;
  border-color: #080808;
}
.navbar-inverse .navbar-brand {
  color: #9d9d9d;
}
.navbar-inverse .navbar-brand:hover,
.navbar-inverse .navbar-brand:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-text {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a {
  color: #9d9d9d;
}
.navbar-inverse .navbar-nav > li > a:hover,
.navbar-inverse .navbar-nav > li > a:focus {
  color: #fff;
  background-color: transparent;
}
.navbar-inverse .navbar-nav > .active > a,
.navbar-inverse .navbar-nav > .active > a:hover,
.navbar-inverse .navbar-nav > .active > a:focus {
  color: #fff;
  background-color: #080808;
}
.navbar-inverse .navbar-nav > .disabled > a,
.navbar-inverse .navbar-nav > .disabled > a:hover,
.navbar-inverse .navbar-nav > .disabled > a:focus {
  color: #444;
  background-color: transparent;
}
.navbar-inverse .navbar-toggle {
  border-color: #333;
}
.navbar-inverse .navbar-toggle:hover,
.navbar-inverse .navbar-toggle:focus {
  background-color: #333;
}
.navbar-inverse .navbar-toggle .icon-bar {
  background-color: #fff;
}
.navbar-inverse .navbar-collapse,
.navbar-inverse .navbar-form {
  border-color: #101010;
}
.navbar-inverse .navbar-nav > .open > a,
.navbar-inverse .navbar-nav > .open > a:hover,
.navbar-inverse .navbar-nav > .open > a:focus {
  background-color: #080808;
  color: #fff;
}
@media (max-width: 540px) {
  .navbar-inverse .navbar-nav .open .dropdown-menu > .dropdown-header {
    border-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu .divider {
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a {
    color: #9d9d9d;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > li > a:focus {
    color: #fff;
    background-color: transparent;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: #fff;
    background-color: #080808;
  }
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:hover,
  .navbar-inverse .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: #444;
    background-color: transparent;
  }
}
.navbar-inverse .navbar-link {
  color: #9d9d9d;
}
.navbar-inverse .navbar-link:hover {
  color: #fff;
}
.navbar-inverse .btn-link {
  color: #9d9d9d;
}
.navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link:focus {
  color: #fff;
}
.navbar-inverse .btn-link[disabled]:hover,
fieldset[disabled] .navbar-inverse .btn-link:hover,
.navbar-inverse .btn-link[disabled]:focus,
fieldset[disabled] .navbar-inverse .btn-link:focus {
  color: #444;
}
.breadcrumb {
  padding: 8px 15px;
  margin-bottom: 18px;
  list-style: none;
  background-color: #f5f5f5;
  border-radius: 2px;
}
.breadcrumb > li {
  display: inline-block;
}
.breadcrumb > li + li:before {
  content: "/\00a0";
  padding: 0 5px;
  color: #5e5e5e;
}
.breadcrumb > .active {
  color: #777777;
}
.pagination {
  display: inline-block;
  padding-left: 0;
  margin: 18px 0;
  border-radius: 2px;
}
.pagination > li {
  display: inline;
}
.pagination > li > a,
.pagination > li > span {
  position: relative;
  float: left;
  padding: 6px 12px;
  line-height: 1.42857143;
  text-decoration: none;
  color: #337ab7;
  background-color: #fff;
  border: 1px solid #ddd;
  margin-left: -1px;
}
.pagination > li:first-child > a,
.pagination > li:first-child > span {
  margin-left: 0;
  border-bottom-left-radius: 2px;
  border-top-left-radius: 2px;
}
.pagination > li:last-child > a,
.pagination > li:last-child > span {
  border-bottom-right-radius: 2px;
  border-top-right-radius: 2px;
}
.pagination > li > a:hover,
.pagination > li > span:hover,
.pagination > li > a:focus,
.pagination > li > span:focus {
  z-index: 2;
  color: #23527c;
  background-color: #eeeeee;
  border-color: #ddd;
}
.pagination > .active > a,
.pagination > .active > span,
.pagination > .active > a:hover,
.pagination > .active > span:hover,
.pagination > .active > a:focus,
.pagination > .active > span:focus {
  z-index: 3;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
  cursor: default;
}
.pagination > .disabled > span,
.pagination > .disabled > span:hover,
.pagination > .disabled > span:focus,
.pagination > .disabled > a,
.pagination > .disabled > a:hover,
.pagination > .disabled > a:focus {
  color: #777777;
  background-color: #fff;
  border-color: #ddd;
  cursor: not-allowed;
}
.pagination-lg > li > a,
.pagination-lg > li > span {
  padding: 10px 16px;
  font-size: 17px;
  line-height: 1.3333333;
}
.pagination-lg > li:first-child > a,
.pagination-lg > li:first-child > span {
  border-bottom-left-radius: 3px;
  border-top-left-radius: 3px;
}
.pagination-lg > li:last-child > a,
.pagination-lg > li:last-child > span {
  border-bottom-right-radius: 3px;
  border-top-right-radius: 3px;
}
.pagination-sm > li > a,
.pagination-sm > li > span {
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
}
.pagination-sm > li:first-child > a,
.pagination-sm > li:first-child > span {
  border-bottom-left-radius: 1px;
  border-top-left-radius: 1px;
}
.pagination-sm > li:last-child > a,
.pagination-sm > li:last-child > span {
  border-bottom-right-radius: 1px;
  border-top-right-radius: 1px;
}
.pager {
  padding-left: 0;
  margin: 18px 0;
  list-style: none;
  text-align: center;
}
.pager li {
  display: inline;
}
.pager li > a,
.pager li > span {
  display: inline-block;
  padding: 5px 14px;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 15px;
}
.pager li > a:hover,
.pager li > a:focus {
  text-decoration: none;
  background-color: #eeeeee;
}
.pager .next > a,
.pager .next > span {
  float: right;
}
.pager .previous > a,
.pager .previous > span {
  float: left;
}
.pager .disabled > a,
.pager .disabled > a:hover,
.pager .disabled > a:focus,
.pager .disabled > span {
  color: #777777;
  background-color: #fff;
  cursor: not-allowed;
}
.label {
  display: inline;
  padding: .2em .6em .3em;
  font-size: 75%;
  font-weight: bold;
  line-height: 1;
  color: #fff;
  text-align: center;
  white-space: nowrap;
  vertical-align: baseline;
  border-radius: .25em;
}
a.label:hover,
a.label:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.label:empty {
  display: none;
}
.btn .label {
  position: relative;
  top: -1px;
}
.label-default {
  background-color: #777777;
}
.label-default[href]:hover,
.label-default[href]:focus {
  background-color: #5e5e5e;
}
.label-primary {
  background-color: #337ab7;
}
.label-primary[href]:hover,
.label-primary[href]:focus {
  background-color: #286090;
}
.label-success {
  background-color: #5cb85c;
}
.label-success[href]:hover,
.label-success[href]:focus {
  background-color: #449d44;
}
.label-info {
  background-color: #5bc0de;
}
.label-info[href]:hover,
.label-info[href]:focus {
  background-color: #31b0d5;
}
.label-warning {
  background-color: #f0ad4e;
}
.label-warning[href]:hover,
.label-warning[href]:focus {
  background-color: #ec971f;
}
.label-danger {
  background-color: #d9534f;
}
.label-danger[href]:hover,
.label-danger[href]:focus {
  background-color: #c9302c;
}
.badge {
  display: inline-block;
  min-width: 10px;
  padding: 3px 7px;
  font-size: 12px;
  font-weight: bold;
  color: #fff;
  line-height: 1;
  vertical-align: middle;
  white-space: nowrap;
  text-align: center;
  background-color: #777777;
  border-radius: 10px;
}
.badge:empty {
  display: none;
}
.btn .badge {
  position: relative;
  top: -1px;
}
.btn-xs .badge,
.btn-group-xs > .btn .badge {
  top: 0;
  padding: 1px 5px;
}
a.badge:hover,
a.badge:focus {
  color: #fff;
  text-decoration: none;
  cursor: pointer;
}
.list-group-item.active > .badge,
.nav-pills > .active > a > .badge {
  color: #337ab7;
  background-color: #fff;
}
.list-group-item > .badge {
  float: right;
}
.list-group-item > .badge + .badge {
  margin-right: 5px;
}
.nav-pills > li > a > .badge {
  margin-left: 3px;
}
.jumbotron {
  padding-top: 30px;
  padding-bottom: 30px;
  margin-bottom: 30px;
  color: inherit;
  background-color: #eeeeee;
}
.jumbotron h1,
.jumbotron .h1 {
  color: inherit;
}
.jumbotron p {
  margin-bottom: 15px;
  font-size: 20px;
  font-weight: 200;
}
.jumbotron > hr {
  border-top-color: #d5d5d5;
}
.container .jumbotron,
.container-fluid .jumbotron {
  border-radius: 3px;
  padding-left: 0px;
  padding-right: 0px;
}
.jumbotron .container {
  max-width: 100%;
}
@media screen and (min-width: 768px) {
  .jumbotron {
    padding-top: 48px;
    padding-bottom: 48px;
  }
  .container .jumbotron,
  .container-fluid .jumbotron {
    padding-left: 60px;
    padding-right: 60px;
  }
  .jumbotron h1,
  .jumbotron .h1 {
    font-size: 59px;
  }
}
.thumbnail {
  display: block;
  padding: 4px;
  margin-bottom: 18px;
  line-height: 1.42857143;
  background-color: #fff;
  border: 1px solid #ddd;
  border-radius: 2px;
  -webkit-transition: border 0.2s ease-in-out;
  -o-transition: border 0.2s ease-in-out;
  transition: border 0.2s ease-in-out;
}
.thumbnail > img,
.thumbnail a > img {
  margin-left: auto;
  margin-right: auto;
}
a.thumbnail:hover,
a.thumbnail:focus,
a.thumbnail.active {
  border-color: #337ab7;
}
.thumbnail .caption {
  padding: 9px;
  color: #000;
}
.alert {
  padding: 15px;
  margin-bottom: 18px;
  border: 1px solid transparent;
  border-radius: 2px;
}
.alert h4 {
  margin-top: 0;
  color: inherit;
}
.alert .alert-link {
  font-weight: bold;
}
.alert > p,
.alert > ul {
  margin-bottom: 0;
}
.alert > p + p {
  margin-top: 5px;
}
.alert-dismissable,
.alert-dismissible {
  padding-right: 35px;
}
.alert-dismissable .close,
.alert-dismissible .close {
  position: relative;
  top: -2px;
  right: -21px;
  color: inherit;
}
.alert-success {
  background-color: #dff0d8;
  border-color: #d6e9c6;
  color: #3c763d;
}
.alert-success hr {
  border-top-color: #c9e2b3;
}
.alert-success .alert-link {
  color: #2b542c;
}
.alert-info {
  background-color: #d9edf7;
  border-color: #bce8f1;
  color: #31708f;
}
.alert-info hr {
  border-top-color: #a6e1ec;
}
.alert-info .alert-link {
  color: #245269;
}
.alert-warning {
  background-color: #fcf8e3;
  border-color: #faebcc;
  color: #8a6d3b;
}
.alert-warning hr {
  border-top-color: #f7e1b5;
}
.alert-warning .alert-link {
  color: #66512c;
}
.alert-danger {
  background-color: #f2dede;
  border-color: #ebccd1;
  color: #a94442;
}
.alert-danger hr {
  border-top-color: #e4b9c0;
}
.alert-danger .alert-link {
  color: #843534;
}
@-webkit-keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
@keyframes progress-bar-stripes {
  from {
    background-position: 40px 0;
  }
  to {
    background-position: 0 0;
  }
}
.progress {
  overflow: hidden;
  height: 18px;
  margin-bottom: 18px;
  background-color: #f5f5f5;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
  box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}
.progress-bar {
  float: left;
  width: 0%;
  height: 100%;
  font-size: 12px;
  line-height: 18px;
  color: #fff;
  text-align: center;
  background-color: #337ab7;
  -webkit-box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 -1px 0 rgba(0, 0, 0, 0.15);
  -webkit-transition: width 0.6s ease;
  -o-transition: width 0.6s ease;
  transition: width 0.6s ease;
}
.progress-striped .progress-bar,
.progress-bar-striped {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-size: 40px 40px;
}
.progress.active .progress-bar,
.progress-bar.active {
  -webkit-animation: progress-bar-stripes 2s linear infinite;
  -o-animation: progress-bar-stripes 2s linear infinite;
  animation: progress-bar-stripes 2s linear infinite;
}
.progress-bar-success {
  background-color: #5cb85c;
}
.progress-striped .progress-bar-success {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-info {
  background-color: #5bc0de;
}
.progress-striped .progress-bar-info {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-warning {
  background-color: #f0ad4e;
}
.progress-striped .progress-bar-warning {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.progress-bar-danger {
  background-color: #d9534f;
}
.progress-striped .progress-bar-danger {
  background-image: -webkit-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: -o-linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
  background-image: linear-gradient(45deg, rgba(255, 255, 255, 0.15) 25%, transparent 25%, transparent 50%, rgba(255, 255, 255, 0.15) 50%, rgba(255, 255, 255, 0.15) 75%, transparent 75%, transparent);
}
.media {
  margin-top: 15px;
}
.media:first-child {
  margin-top: 0;
}
.media,
.media-body {
  zoom: 1;
  overflow: hidden;
}
.media-body {
  width: 10000px;
}
.media-object {
  display: block;
}
.media-object.img-thumbnail {
  max-width: none;
}
.media-right,
.media > .pull-right {
  padding-left: 10px;
}
.media-left,
.media > .pull-left {
  padding-right: 10px;
}
.media-left,
.media-right,
.media-body {
  display: table-cell;
  vertical-align: top;
}
.media-middle {
  vertical-align: middle;
}
.media-bottom {
  vertical-align: bottom;
}
.media-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.media-list {
  padding-left: 0;
  list-style: none;
}
.list-group {
  margin-bottom: 20px;
  padding-left: 0;
}
.list-group-item {
  position: relative;
  display: block;
  padding: 10px 15px;
  margin-bottom: -1px;
  background-color: #fff;
  border: 1px solid #ddd;
}
.list-group-item:first-child {
  border-top-right-radius: 2px;
  border-top-left-radius: 2px;
}
.list-group-item:last-child {
  margin-bottom: 0;
  border-bottom-right-radius: 2px;
  border-bottom-left-radius: 2px;
}
a.list-group-item,
button.list-group-item {
  color: #555;
}
a.list-group-item .list-group-item-heading,
button.list-group-item .list-group-item-heading {
  color: #333;
}
a.list-group-item:hover,
button.list-group-item:hover,
a.list-group-item:focus,
button.list-group-item:focus {
  text-decoration: none;
  color: #555;
  background-color: #f5f5f5;
}
button.list-group-item {
  width: 100%;
  text-align: left;
}
.list-group-item.disabled,
.list-group-item.disabled:hover,
.list-group-item.disabled:focus {
  background-color: #eeeeee;
  color: #777777;
  cursor: not-allowed;
}
.list-group-item.disabled .list-group-item-heading,
.list-group-item.disabled:hover .list-group-item-heading,
.list-group-item.disabled:focus .list-group-item-heading {
  color: inherit;
}
.list-group-item.disabled .list-group-item-text,
.list-group-item.disabled:hover .list-group-item-text,
.list-group-item.disabled:focus .list-group-item-text {
  color: #777777;
}
.list-group-item.active,
.list-group-item.active:hover,
.list-group-item.active:focus {
  z-index: 2;
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.list-group-item.active .list-group-item-heading,
.list-group-item.active:hover .list-group-item-heading,
.list-group-item.active:focus .list-group-item-heading,
.list-group-item.active .list-group-item-heading > small,
.list-group-item.active:hover .list-group-item-heading > small,
.list-group-item.active:focus .list-group-item-heading > small,
.list-group-item.active .list-group-item-heading > .small,
.list-group-item.active:hover .list-group-item-heading > .small,
.list-group-item.active:focus .list-group-item-heading > .small {
  color: inherit;
}
.list-group-item.active .list-group-item-text,
.list-group-item.active:hover .list-group-item-text,
.list-group-item.active:focus .list-group-item-text {
  color: #c7ddef;
}
.list-group-item-success {
  color: #3c763d;
  background-color: #dff0d8;
}
a.list-group-item-success,
button.list-group-item-success {
  color: #3c763d;
}
a.list-group-item-success .list-group-item-heading,
button.list-group-item-success .list-group-item-heading {
  color: inherit;
}
a.list-group-item-success:hover,
button.list-group-item-success:hover,
a.list-group-item-success:focus,
button.list-group-item-success:focus {
  color: #3c763d;
  background-color: #d0e9c6;
}
a.list-group-item-success.active,
button.list-group-item-success.active,
a.list-group-item-success.active:hover,
button.list-group-item-success.active:hover,
a.list-group-item-success.active:focus,
button.list-group-item-success.active:focus {
  color: #fff;
  background-color: #3c763d;
  border-color: #3c763d;
}
.list-group-item-info {
  color: #31708f;
  background-color: #d9edf7;
}
a.list-group-item-info,
button.list-group-item-info {
  color: #31708f;
}
a.list-group-item-info .list-group-item-heading,
button.list-group-item-info .list-group-item-heading {
  color: inherit;
}
a.list-group-item-info:hover,
button.list-group-item-info:hover,
a.list-group-item-info:focus,
button.list-group-item-info:focus {
  color: #31708f;
  background-color: #c4e3f3;
}
a.list-group-item-info.active,
button.list-group-item-info.active,
a.list-group-item-info.active:hover,
button.list-group-item-info.active:hover,
a.list-group-item-info.active:focus,
button.list-group-item-info.active:focus {
  color: #fff;
  background-color: #31708f;
  border-color: #31708f;
}
.list-group-item-warning {
  color: #8a6d3b;
  background-color: #fcf8e3;
}
a.list-group-item-warning,
button.list-group-item-warning {
  color: #8a6d3b;
}
a.list-group-item-warning .list-group-item-heading,
button.list-group-item-warning .list-group-item-heading {
  color: inherit;
}
a.list-group-item-warning:hover,
button.list-group-item-warning:hover,
a.list-group-item-warning:focus,
button.list-group-item-warning:focus {
  color: #8a6d3b;
  background-color: #faf2cc;
}
a.list-group-item-warning.active,
button.list-group-item-warning.active,
a.list-group-item-warning.active:hover,
button.list-group-item-warning.active:hover,
a.list-group-item-warning.active:focus,
button.list-group-item-warning.active:focus {
  color: #fff;
  background-color: #8a6d3b;
  border-color: #8a6d3b;
}
.list-group-item-danger {
  color: #a94442;
  background-color: #f2dede;
}
a.list-group-item-danger,
button.list-group-item-danger {
  color: #a94442;
}
a.list-group-item-danger .list-group-item-heading,
button.list-group-item-danger .list-group-item-heading {
  color: inherit;
}
a.list-group-item-danger:hover,
button.list-group-item-danger:hover,
a.list-group-item-danger:focus,
button.list-group-item-danger:focus {
  color: #a94442;
  background-color: #ebcccc;
}
a.list-group-item-danger.active,
button.list-group-item-danger.active,
a.list-group-item-danger.active:hover,
button.list-group-item-danger.active:hover,
a.list-group-item-danger.active:focus,
button.list-group-item-danger.active:focus {
  color: #fff;
  background-color: #a94442;
  border-color: #a94442;
}
.list-group-item-heading {
  margin-top: 0;
  margin-bottom: 5px;
}
.list-group-item-text {
  margin-bottom: 0;
  line-height: 1.3;
}
.panel {
  margin-bottom: 18px;
  background-color: #fff;
  border: 1px solid transparent;
  border-radius: 2px;
  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.05);
}
.panel-body {
  padding: 15px;
}
.panel-heading {
  padding: 10px 15px;
  border-bottom: 1px solid transparent;
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel-heading > .dropdown .dropdown-toggle {
  color: inherit;
}
.panel-title {
  margin-top: 0;
  margin-bottom: 0;
  font-size: 15px;
  color: inherit;
}
.panel-title > a,
.panel-title > small,
.panel-title > .small,
.panel-title > small > a,
.panel-title > .small > a {
  color: inherit;
}
.panel-footer {
  padding: 10px 15px;
  background-color: #f5f5f5;
  border-top: 1px solid #ddd;
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .list-group,
.panel > .panel-collapse > .list-group {
  margin-bottom: 0;
}
.panel > .list-group .list-group-item,
.panel > .panel-collapse > .list-group .list-group-item {
  border-width: 1px 0;
  border-radius: 0;
}
.panel > .list-group:first-child .list-group-item:first-child,
.panel > .panel-collapse > .list-group:first-child .list-group-item:first-child {
  border-top: 0;
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel > .list-group:last-child .list-group-item:last-child,
.panel > .panel-collapse > .list-group:last-child .list-group-item:last-child {
  border-bottom: 0;
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .panel-heading + .panel-collapse > .list-group .list-group-item:first-child {
  border-top-right-radius: 0;
  border-top-left-radius: 0;
}
.panel-heading + .list-group .list-group-item:first-child {
  border-top-width: 0;
}
.list-group + .panel-footer {
  border-top-width: 0;
}
.panel > .table,
.panel > .table-responsive > .table,
.panel > .panel-collapse > .table {
  margin-bottom: 0;
}
.panel > .table caption,
.panel > .table-responsive > .table caption,
.panel > .panel-collapse > .table caption {
  padding-left: 15px;
  padding-right: 15px;
}
.panel > .table:first-child,
.panel > .table-responsive:first-child > .table:first-child {
  border-top-right-radius: 1px;
  border-top-left-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child {
  border-top-left-radius: 1px;
  border-top-right-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:first-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:first-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:first-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:first-child {
  border-top-left-radius: 1px;
}
.panel > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child td:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child td:last-child,
.panel > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > thead:first-child > tr:first-child th:last-child,
.panel > .table:first-child > tbody:first-child > tr:first-child th:last-child,
.panel > .table-responsive:first-child > .table:first-child > tbody:first-child > tr:first-child th:last-child {
  border-top-right-radius: 1px;
}
.panel > .table:last-child,
.panel > .table-responsive:last-child > .table:last-child {
  border-bottom-right-radius: 1px;
  border-bottom-left-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child {
  border-bottom-left-radius: 1px;
  border-bottom-right-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:first-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:first-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:first-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:first-child {
  border-bottom-left-radius: 1px;
}
.panel > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child td:last-child,
.panel > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tbody:last-child > tr:last-child th:last-child,
.panel > .table:last-child > tfoot:last-child > tr:last-child th:last-child,
.panel > .table-responsive:last-child > .table:last-child > tfoot:last-child > tr:last-child th:last-child {
  border-bottom-right-radius: 1px;
}
.panel > .panel-body + .table,
.panel > .panel-body + .table-responsive,
.panel > .table + .panel-body,
.panel > .table-responsive + .panel-body {
  border-top: 1px solid #ddd;
}
.panel > .table > tbody:first-child > tr:first-child th,
.panel > .table > tbody:first-child > tr:first-child td {
  border-top: 0;
}
.panel > .table-bordered,
.panel > .table-responsive > .table-bordered {
  border: 0;
}
.panel > .table-bordered > thead > tr > th:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:first-child,
.panel > .table-bordered > tbody > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:first-child,
.panel > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:first-child,
.panel > .table-bordered > thead > tr > td:first-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:first-child,
.panel > .table-bordered > tbody > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:first-child,
.panel > .table-bordered > tfoot > tr > td:first-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:first-child {
  border-left: 0;
}
.panel > .table-bordered > thead > tr > th:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > th:last-child,
.panel > .table-bordered > tbody > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > th:last-child,
.panel > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > th:last-child,
.panel > .table-bordered > thead > tr > td:last-child,
.panel > .table-responsive > .table-bordered > thead > tr > td:last-child,
.panel > .table-bordered > tbody > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tbody > tr > td:last-child,
.panel > .table-bordered > tfoot > tr > td:last-child,
.panel > .table-responsive > .table-bordered > tfoot > tr > td:last-child {
  border-right: 0;
}
.panel > .table-bordered > thead > tr:first-child > td,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > td,
.panel > .table-bordered > tbody > tr:first-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > td,
.panel > .table-bordered > thead > tr:first-child > th,
.panel > .table-responsive > .table-bordered > thead > tr:first-child > th,
.panel > .table-bordered > tbody > tr:first-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:first-child > th {
  border-bottom: 0;
}
.panel > .table-bordered > tbody > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > td,
.panel > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > td,
.panel > .table-bordered > tbody > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tbody > tr:last-child > th,
.panel > .table-bordered > tfoot > tr:last-child > th,
.panel > .table-responsive > .table-bordered > tfoot > tr:last-child > th {
  border-bottom: 0;
}
.panel > .table-responsive {
  border: 0;
  margin-bottom: 0;
}
.panel-group {
  margin-bottom: 18px;
}
.panel-group .panel {
  margin-bottom: 0;
  border-radius: 2px;
}
.panel-group .panel + .panel {
  margin-top: 5px;
}
.panel-group .panel-heading {
  border-bottom: 0;
}
.panel-group .panel-heading + .panel-collapse > .panel-body,
.panel-group .panel-heading + .panel-collapse > .list-group {
  border-top: 1px solid #ddd;
}
.panel-group .panel-footer {
  border-top: 0;
}
.panel-group .panel-footer + .panel-collapse .panel-body {
  border-bottom: 1px solid #ddd;
}
.panel-default {
  border-color: #ddd;
}
.panel-default > .panel-heading {
  color: #333333;
  background-color: #f5f5f5;
  border-color: #ddd;
}
.panel-default > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ddd;
}
.panel-default > .panel-heading .badge {
  color: #f5f5f5;
  background-color: #333333;
}
.panel-default > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ddd;
}
.panel-primary {
  border-color: #337ab7;
}
.panel-primary > .panel-heading {
  color: #fff;
  background-color: #337ab7;
  border-color: #337ab7;
}
.panel-primary > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #337ab7;
}
.panel-primary > .panel-heading .badge {
  color: #337ab7;
  background-color: #fff;
}
.panel-primary > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #337ab7;
}
.panel-success {
  border-color: #d6e9c6;
}
.panel-success > .panel-heading {
  color: #3c763d;
  background-color: #dff0d8;
  border-color: #d6e9c6;
}
.panel-success > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #d6e9c6;
}
.panel-success > .panel-heading .badge {
  color: #dff0d8;
  background-color: #3c763d;
}
.panel-success > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #d6e9c6;
}
.panel-info {
  border-color: #bce8f1;
}
.panel-info > .panel-heading {
  color: #31708f;
  background-color: #d9edf7;
  border-color: #bce8f1;
}
.panel-info > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #bce8f1;
}
.panel-info > .panel-heading .badge {
  color: #d9edf7;
  background-color: #31708f;
}
.panel-info > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #bce8f1;
}
.panel-warning {
  border-color: #faebcc;
}
.panel-warning > .panel-heading {
  color: #8a6d3b;
  background-color: #fcf8e3;
  border-color: #faebcc;
}
.panel-warning > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #faebcc;
}
.panel-warning > .panel-heading .badge {
  color: #fcf8e3;
  background-color: #8a6d3b;
}
.panel-warning > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #faebcc;
}
.panel-danger {
  border-color: #ebccd1;
}
.panel-danger > .panel-heading {
  color: #a94442;
  background-color: #f2dede;
  border-color: #ebccd1;
}
.panel-danger > .panel-heading + .panel-collapse > .panel-body {
  border-top-color: #ebccd1;
}
.panel-danger > .panel-heading .badge {
  color: #f2dede;
  background-color: #a94442;
}
.panel-danger > .panel-footer + .panel-collapse > .panel-body {
  border-bottom-color: #ebccd1;
}
.embed-responsive {
  position: relative;
  display: block;
  height: 0;
  padding: 0;
  overflow: hidden;
}
.embed-responsive .embed-responsive-item,
.embed-responsive iframe,
.embed-responsive embed,
.embed-responsive object,
.embed-responsive video {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  height: 100%;
  width: 100%;
  border: 0;
}
.embed-responsive-16by9 {
  padding-bottom: 56.25%;
}
.embed-responsive-4by3 {
  padding-bottom: 75%;
}
.well {
  min-height: 20px;
  padding: 19px;
  margin-bottom: 20px;
  background-color: #f5f5f5;
  border: 1px solid #e3e3e3;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.05);
}
.well blockquote {
  border-color: #ddd;
  border-color: rgba(0, 0, 0, 0.15);
}
.well-lg {
  padding: 24px;
  border-radius: 3px;
}
.well-sm {
  padding: 9px;
  border-radius: 1px;
}
.close {
  float: right;
  font-size: 19.5px;
  font-weight: bold;
  line-height: 1;
  color: #000;
  text-shadow: 0 1px 0 #fff;
  opacity: 0.2;
  filter: alpha(opacity=20);
}
.close:hover,
.close:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
  opacity: 0.5;
  filter: alpha(opacity=50);
}
button.close {
  padding: 0;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
}
.modal-open {
  overflow: hidden;
}
.modal {
  display: none;
  overflow: hidden;
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1050;
  -webkit-overflow-scrolling: touch;
  outline: 0;
}
.modal.fade .modal-dialog {
  -webkit-transform: translate(0, -25%);
  -ms-transform: translate(0, -25%);
  -o-transform: translate(0, -25%);
  transform: translate(0, -25%);
  -webkit-transition: -webkit-transform 0.3s ease-out;
  -moz-transition: -moz-transform 0.3s ease-out;
  -o-transition: -o-transform 0.3s ease-out;
  transition: transform 0.3s ease-out;
}
.modal.in .modal-dialog {
  -webkit-transform: translate(0, 0);
  -ms-transform: translate(0, 0);
  -o-transform: translate(0, 0);
  transform: translate(0, 0);
}
.modal-open .modal {
  overflow-x: hidden;
  overflow-y: auto;
}
.modal-dialog {
  position: relative;
  width: auto;
  margin: 10px;
}
.modal-content {
  position: relative;
  background-color: #fff;
  border: 1px solid #999;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  -webkit-box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
  background-clip: padding-box;
  outline: 0;
}
.modal-backdrop {
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: 1040;
  background-color: #000;
}
.modal-backdrop.fade {
  opacity: 0;
  filter: alpha(opacity=0);
}
.modal-backdrop.in {
  opacity: 0.5;
  filter: alpha(opacity=50);
}
.modal-header {
  padding: 15px;
  border-bottom: 1px solid #e5e5e5;
}
.modal-header .close {
  margin-top: -2px;
}
.modal-title {
  margin: 0;
  line-height: 1.42857143;
}
.modal-body {
  position: relative;
  padding: 15px;
}
.modal-footer {
  padding: 15px;
  text-align: right;
  border-top: 1px solid #e5e5e5;
}
.modal-footer .btn + .btn {
  margin-left: 5px;
  margin-bottom: 0;
}
.modal-footer .btn-group .btn + .btn {
  margin-left: -1px;
}
.modal-footer .btn-block + .btn-block {
  margin-left: 0;
}
.modal-scrollbar-measure {
  position: absolute;
  top: -9999px;
  width: 50px;
  height: 50px;
  overflow: scroll;
}
@media (min-width: 768px) {
  .modal-dialog {
    width: 600px;
    margin: 30px auto;
  }
  .modal-content {
    -webkit-box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.5);
  }
  .modal-sm {
    width: 300px;
  }
}
@media (min-width: 992px) {
  .modal-lg {
    width: 900px;
  }
}
.tooltip {
  position: absolute;
  z-index: 1070;
  display: block;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 12px;
  opacity: 0;
  filter: alpha(opacity=0);
}
.tooltip.in {
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.tooltip.top {
  margin-top: -3px;
  padding: 5px 0;
}
.tooltip.right {
  margin-left: 3px;
  padding: 0 5px;
}
.tooltip.bottom {
  margin-top: 3px;
  padding: 5px 0;
}
.tooltip.left {
  margin-left: -3px;
  padding: 0 5px;
}
.tooltip-inner {
  max-width: 200px;
  padding: 3px 8px;
  color: #fff;
  text-align: center;
  background-color: #000;
  border-radius: 2px;
}
.tooltip-arrow {
  position: absolute;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.tooltip.top .tooltip-arrow {
  bottom: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-left .tooltip-arrow {
  bottom: 0;
  right: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.top-right .tooltip-arrow {
  bottom: 0;
  left: 5px;
  margin-bottom: -5px;
  border-width: 5px 5px 0;
  border-top-color: #000;
}
.tooltip.right .tooltip-arrow {
  top: 50%;
  left: 0;
  margin-top: -5px;
  border-width: 5px 5px 5px 0;
  border-right-color: #000;
}
.tooltip.left .tooltip-arrow {
  top: 50%;
  right: 0;
  margin-top: -5px;
  border-width: 5px 0 5px 5px;
  border-left-color: #000;
}
.tooltip.bottom .tooltip-arrow {
  top: 0;
  left: 50%;
  margin-left: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-left .tooltip-arrow {
  top: 0;
  right: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.tooltip.bottom-right .tooltip-arrow {
  top: 0;
  left: 5px;
  margin-top: -5px;
  border-width: 0 5px 5px;
  border-bottom-color: #000;
}
.popover {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1060;
  display: none;
  max-width: 276px;
  padding: 1px;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: normal;
  font-weight: normal;
  letter-spacing: normal;
  line-break: auto;
  line-height: 1.42857143;
  text-align: left;
  text-align: start;
  text-decoration: none;
  text-shadow: none;
  text-transform: none;
  white-space: normal;
  word-break: normal;
  word-spacing: normal;
  word-wrap: normal;
  font-size: 13px;
  background-color: #fff;
  background-clip: padding-box;
  border: 1px solid #ccc;
  border: 1px solid rgba(0, 0, 0, 0.2);
  border-radius: 3px;
  -webkit-box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}
.popover.top {
  margin-top: -10px;
}
.popover.right {
  margin-left: 10px;
}
.popover.bottom {
  margin-top: 10px;
}
.popover.left {
  margin-left: -10px;
}
.popover-title {
  margin: 0;
  padding: 8px 14px;
  font-size: 13px;
  background-color: #f7f7f7;
  border-bottom: 1px solid #ebebeb;
  border-radius: 2px 2px 0 0;
}
.popover-content {
  padding: 9px 14px;
}
.popover > .arrow,
.popover > .arrow:after {
  position: absolute;
  display: block;
  width: 0;
  height: 0;
  border-color: transparent;
  border-style: solid;
}
.popover > .arrow {
  border-width: 11px;
}
.popover > .arrow:after {
  border-width: 10px;
  content: "";
}
.popover.top > .arrow {
  left: 50%;
  margin-left: -11px;
  border-bottom-width: 0;
  border-top-color: #999999;
  border-top-color: rgba(0, 0, 0, 0.25);
  bottom: -11px;
}
.popover.top > .arrow:after {
  content: " ";
  bottom: 1px;
  margin-left: -10px;
  border-bottom-width: 0;
  border-top-color: #fff;
}
.popover.right > .arrow {
  top: 50%;
  left: -11px;
  margin-top: -11px;
  border-left-width: 0;
  border-right-color: #999999;
  border-right-color: rgba(0, 0, 0, 0.25);
}
.popover.right > .arrow:after {
  content: " ";
  left: 1px;
  bottom: -10px;
  border-left-width: 0;
  border-right-color: #fff;
}
.popover.bottom > .arrow {
  left: 50%;
  margin-left: -11px;
  border-top-width: 0;
  border-bottom-color: #999999;
  border-bottom-color: rgba(0, 0, 0, 0.25);
  top: -11px;
}
.popover.bottom > .arrow:after {
  content: " ";
  top: 1px;
  margin-left: -10px;
  border-top-width: 0;
  border-bottom-color: #fff;
}
.popover.left > .arrow {
  top: 50%;
  right: -11px;
  margin-top: -11px;
  border-right-width: 0;
  border-left-color: #999999;
  border-left-color: rgba(0, 0, 0, 0.25);
}
.popover.left > .arrow:after {
  content: " ";
  right: 1px;
  border-right-width: 0;
  border-left-color: #fff;
  bottom: -10px;
}
.carousel {
  position: relative;
}
.carousel-inner {
  position: relative;
  overflow: hidden;
  width: 100%;
}
.carousel-inner > .item {
  display: none;
  position: relative;
  -webkit-transition: 0.6s ease-in-out left;
  -o-transition: 0.6s ease-in-out left;
  transition: 0.6s ease-in-out left;
}
.carousel-inner > .item > img,
.carousel-inner > .item > a > img {
  line-height: 1;
}
@media all and (transform-3d), (-webkit-transform-3d) {
  .carousel-inner > .item {
    -webkit-transition: -webkit-transform 0.6s ease-in-out;
    -moz-transition: -moz-transform 0.6s ease-in-out;
    -o-transition: -o-transform 0.6s ease-in-out;
    transition: transform 0.6s ease-in-out;
    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    backface-visibility: hidden;
    -webkit-perspective: 1000px;
    -moz-perspective: 1000px;
    perspective: 1000px;
  }
  .carousel-inner > .item.next,
  .carousel-inner > .item.active.right {
    -webkit-transform: translate3d(100%, 0, 0);
    transform: translate3d(100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.prev,
  .carousel-inner > .item.active.left {
    -webkit-transform: translate3d(-100%, 0, 0);
    transform: translate3d(-100%, 0, 0);
    left: 0;
  }
  .carousel-inner > .item.next.left,
  .carousel-inner > .item.prev.right,
  .carousel-inner > .item.active {
    -webkit-transform: translate3d(0, 0, 0);
    transform: translate3d(0, 0, 0);
    left: 0;
  }
}
.carousel-inner > .active,
.carousel-inner > .next,
.carousel-inner > .prev {
  display: block;
}
.carousel-inner > .active {
  left: 0;
}
.carousel-inner > .next,
.carousel-inner > .prev {
  position: absolute;
  top: 0;
  width: 100%;
}
.carousel-inner > .next {
  left: 100%;
}
.carousel-inner > .prev {
  left: -100%;
}
.carousel-inner > .next.left,
.carousel-inner > .prev.right {
  left: 0;
}
.carousel-inner > .active.left {
  left: -100%;
}
.carousel-inner > .active.right {
  left: 100%;
}
.carousel-control {
  position: absolute;
  top: 0;
  left: 0;
  bottom: 0;
  width: 15%;
  opacity: 0.5;
  filter: alpha(opacity=50);
  font-size: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
  background-color: rgba(0, 0, 0, 0);
}
.carousel-control.left {
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.0001) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1);
}
.carousel-control.right {
  left: auto;
  right: 0;
  background-image: -webkit-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: -o-linear-gradient(left, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-image: linear-gradient(to right, rgba(0, 0, 0, 0.0001) 0%, rgba(0, 0, 0, 0.5) 100%);
  background-repeat: repeat-x;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1);
}
.carousel-control:hover,
.carousel-control:focus {
  outline: 0;
  color: #fff;
  text-decoration: none;
  opacity: 0.9;
  filter: alpha(opacity=90);
}
.carousel-control .icon-prev,
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-left,
.carousel-control .glyphicon-chevron-right {
  position: absolute;
  top: 50%;
  margin-top: -10px;
  z-index: 5;
  display: inline-block;
}
.carousel-control .icon-prev,
.carousel-control .glyphicon-chevron-left {
  left: 50%;
  margin-left: -10px;
}
.carousel-control .icon-next,
.carousel-control .glyphicon-chevron-right {
  right: 50%;
  margin-right: -10px;
}
.carousel-control .icon-prev,
.carousel-control .icon-next {
  width: 20px;
  height: 20px;
  line-height: 1;
  font-family: serif;
}
.carousel-control .icon-prev:before {
  content: '\2039';
}
.carousel-control .icon-next:before {
  content: '\203a';
}
.carousel-indicators {
  position: absolute;
  bottom: 10px;
  left: 50%;
  z-index: 15;
  width: 60%;
  margin-left: -30%;
  padding-left: 0;
  list-style: none;
  text-align: center;
}
.carousel-indicators li {
  display: inline-block;
  width: 10px;
  height: 10px;
  margin: 1px;
  text-indent: -999px;
  border: 1px solid #fff;
  border-radius: 10px;
  cursor: pointer;
  background-color: #000 \9;
  background-color: rgba(0, 0, 0, 0);
}
.carousel-indicators .active {
  margin: 0;
  width: 12px;
  height: 12px;
  background-color: #fff;
}
.carousel-caption {
  position: absolute;
  left: 15%;
  right: 15%;
  bottom: 20px;
  z-index: 10;
  padding-top: 20px;
  padding-bottom: 20px;
  color: #fff;
  text-align: center;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.6);
}
.carousel-caption .btn {
  text-shadow: none;
}
@media screen and (min-width: 768px) {
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-prev,
  .carousel-control .icon-next {
    width: 30px;
    height: 30px;
    margin-top: -10px;
    font-size: 30px;
  }
  .carousel-control .glyphicon-chevron-left,
  .carousel-control .icon-prev {
    margin-left: -10px;
  }
  .carousel-control .glyphicon-chevron-right,
  .carousel-control .icon-next {
    margin-right: -10px;
  }
  .carousel-caption {
    left: 20%;
    right: 20%;
    padding-bottom: 30px;
  }
  .carousel-indicators {
    bottom: 20px;
  }
}
.clearfix:before,
.clearfix:after,
.dl-horizontal dd:before,
.dl-horizontal dd:after,
.container:before,
.container:after,
.container-fluid:before,
.container-fluid:after,
.row:before,
.row:after,
.form-horizontal .form-group:before,
.form-horizontal .form-group:after,
.btn-toolbar:before,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:before,
.btn-group-vertical > .btn-group:after,
.nav:before,
.nav:after,
.navbar:before,
.navbar:after,
.navbar-header:before,
.navbar-header:after,
.navbar-collapse:before,
.navbar-collapse:after,
.pager:before,
.pager:after,
.panel-body:before,
.panel-body:after,
.modal-header:before,
.modal-header:after,
.modal-footer:before,
.modal-footer:after,
.item_buttons:before,
.item_buttons:after {
  content: " ";
  display: table;
}
.clearfix:after,
.dl-horizontal dd:after,
.container:after,
.container-fluid:after,
.row:after,
.form-horizontal .form-group:after,
.btn-toolbar:after,
.btn-group-vertical > .btn-group:after,
.nav:after,
.navbar:after,
.navbar-header:after,
.navbar-collapse:after,
.pager:after,
.panel-body:after,
.modal-header:after,
.modal-footer:after,
.item_buttons:after {
  clear: both;
}
.center-block {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.pull-right {
  float: right !important;
}
.pull-left {
  float: left !important;
}
.hide {
  display: none !important;
}
.show {
  display: block !important;
}
.invisible {
  visibility: hidden;
}
.text-hide {
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}
.hidden {
  display: none !important;
}
.affix {
  position: fixed;
}
@-ms-viewport {
  width: device-width;
}
.visible-xs,
.visible-sm,
.visible-md,
.visible-lg {
  display: none !important;
}
.visible-xs-block,
.visible-xs-inline,
.visible-xs-inline-block,
.visible-sm-block,
.visible-sm-inline,
.visible-sm-inline-block,
.visible-md-block,
.visible-md-inline,
.visible-md-inline-block,
.visible-lg-block,
.visible-lg-inline,
.visible-lg-inline-block {
  display: none !important;
}
@media (max-width: 767px) {
  .visible-xs {
    display: block !important;
  }
  table.visible-xs {
    display: table !important;
  }
  tr.visible-xs {
    display: table-row !important;
  }
  th.visible-xs,
  td.visible-xs {
    display: table-cell !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-block {
    display: block !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline {
    display: inline !important;
  }
}
@media (max-width: 767px) {
  .visible-xs-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm {
    display: block !important;
  }
  table.visible-sm {
    display: table !important;
  }
  tr.visible-sm {
    display: table-row !important;
  }
  th.visible-sm,
  td.visible-sm {
    display: table-cell !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-block {
    display: block !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline {
    display: inline !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .visible-sm-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md {
    display: block !important;
  }
  table.visible-md {
    display: table !important;
  }
  tr.visible-md {
    display: table-row !important;
  }
  th.visible-md,
  td.visible-md {
    display: table-cell !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-block {
    display: block !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline {
    display: inline !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .visible-md-inline-block {
    display: inline-block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg {
    display: block !important;
  }
  table.visible-lg {
    display: table !important;
  }
  tr.visible-lg {
    display: table-row !important;
  }
  th.visible-lg,
  td.visible-lg {
    display: table-cell !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-block {
    display: block !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline {
    display: inline !important;
  }
}
@media (min-width: 1200px) {
  .visible-lg-inline-block {
    display: inline-block !important;
  }
}
@media (max-width: 767px) {
  .hidden-xs {
    display: none !important;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  .hidden-sm {
    display: none !important;
  }
}
@media (min-width: 992px) and (max-width: 1199px) {
  .hidden-md {
    display: none !important;
  }
}
@media (min-width: 1200px) {
  .hidden-lg {
    display: none !important;
  }
}
.visible-print {
  display: none !important;
}
@media print {
  .visible-print {
    display: block !important;
  }
  table.visible-print {
    display: table !important;
  }
  tr.visible-print {
    display: table-row !important;
  }
  th.visible-print,
  td.visible-print {
    display: table-cell !important;
  }
}
.visible-print-block {
  display: none !important;
}
@media print {
  .visible-print-block {
    display: block !important;
  }
}
.visible-print-inline {
  display: none !important;
}
@media print {
  .visible-print-inline {
    display: inline !important;
  }
}
.visible-print-inline-block {
  display: none !important;
}
@media print {
  .visible-print-inline-block {
    display: inline-block !important;
  }
}
@media print {
  .hidden-print {
    display: none !important;
  }
}
/*!
*
* Font Awesome
*
*/
/*!
 *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome
 *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)
 */
/* FONT PATH
 * -------------------------- */
@font-face {
  font-family: 'FontAwesome';
  src: url('../components/font-awesome/fonts/fontawesome-webfont.eot?v=4.7.0');
  src: url('../components/font-awesome/fonts/fontawesome-webfont.eot?#iefix&v=4.7.0') format('embedded-opentype'), url('../components/font-awesome/fonts/fontawesome-webfont.woff2?v=4.7.0') format('woff2'), url('../components/font-awesome/fonts/fontawesome-webfont.woff?v=4.7.0') format('woff'), url('../components/font-awesome/fonts/fontawesome-webfont.ttf?v=4.7.0') format('truetype'), url('../components/font-awesome/fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular') format('svg');
  font-weight: normal;
  font-style: normal;
}
.fa {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
/* makes the font 33% larger relative to the icon container */
.fa-lg {
  font-size: 1.33333333em;
  line-height: 0.75em;
  vertical-align: -15%;
}
.fa-2x {
  font-size: 2em;
}
.fa-3x {
  font-size: 3em;
}
.fa-4x {
  font-size: 4em;
}
.fa-5x {
  font-size: 5em;
}
.fa-fw {
  width: 1.28571429em;
  text-align: center;
}
.fa-ul {
  padding-left: 0;
  margin-left: 2.14285714em;
  list-style-type: none;
}
.fa-ul > li {
  position: relative;
}
.fa-li {
  position: absolute;
  left: -2.14285714em;
  width: 2.14285714em;
  top: 0.14285714em;
  text-align: center;
}
.fa-li.fa-lg {
  left: -1.85714286em;
}
.fa-border {
  padding: .2em .25em .15em;
  border: solid 0.08em #eee;
  border-radius: .1em;
}
.fa-pull-left {
  float: left;
}
.fa-pull-right {
  float: right;
}
.fa.fa-pull-left {
  margin-right: .3em;
}
.fa.fa-pull-right {
  margin-left: .3em;
}
/* Deprecated as of 4.4.0 */
.pull-right {
  float: right;
}
.pull-left {
  float: left;
}
.fa.pull-left {
  margin-right: .3em;
}
.fa.pull-right {
  margin-left: .3em;
}
.fa-spin {
  -webkit-animation: fa-spin 2s infinite linear;
  animation: fa-spin 2s infinite linear;
}
.fa-pulse {
  -webkit-animation: fa-spin 1s infinite steps(8);
  animation: fa-spin 1s infinite steps(8);
}
@-webkit-keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg);
  }
}
@keyframes fa-spin {
  0% {
    -webkit-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(359deg);
    transform: rotate(359deg);
  }
}
.fa-rotate-90 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=1)";
  -webkit-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  transform: rotate(90deg);
}
.fa-rotate-180 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2)";
  -webkit-transform: rotate(180deg);
  -ms-transform: rotate(180deg);
  transform: rotate(180deg);
}
.fa-rotate-270 {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=3)";
  -webkit-transform: rotate(270deg);
  -ms-transform: rotate(270deg);
  transform: rotate(270deg);
}
.fa-flip-horizontal {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)";
  -webkit-transform: scale(-1, 1);
  -ms-transform: scale(-1, 1);
  transform: scale(-1, 1);
}
.fa-flip-vertical {
  -ms-filter: "progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)";
  -webkit-transform: scale(1, -1);
  -ms-transform: scale(1, -1);
  transform: scale(1, -1);
}
:root .fa-rotate-90,
:root .fa-rotate-180,
:root .fa-rotate-270,
:root .fa-flip-horizontal,
:root .fa-flip-vertical {
  filter: none;
}
.fa-stack {
  position: relative;
  display: inline-block;
  width: 2em;
  height: 2em;
  line-height: 2em;
  vertical-align: middle;
}
.fa-stack-1x,
.fa-stack-2x {
  position: absolute;
  left: 0;
  width: 100%;
  text-align: center;
}
.fa-stack-1x {
  line-height: inherit;
}
.fa-stack-2x {
  font-size: 2em;
}
.fa-inverse {
  color: #fff;
}
/* Font Awesome uses the Unicode Private Use Area (PUA) to ensure screen
   readers do not read off random characters that represent icons */
.fa-glass:before {
  content: "\f000";
}
.fa-music:before {
  content: "\f001";
}
.fa-search:before {
  content: "\f002";
}
.fa-envelope-o:before {
  content: "\f003";
}
.fa-heart:before {
  content: "\f004";
}
.fa-star:before {
  content: "\f005";
}
.fa-star-o:before {
  content: "\f006";
}
.fa-user:before {
  content: "\f007";
}
.fa-film:before {
  content: "\f008";
}
.fa-th-large:before {
  content: "\f009";
}
.fa-th:before {
  content: "\f00a";
}
.fa-th-list:before {
  content: "\f00b";
}
.fa-check:before {
  content: "\f00c";
}
.fa-remove:before,
.fa-close:before,
.fa-times:before {
  content: "\f00d";
}
.fa-search-plus:before {
  content: "\f00e";
}
.fa-search-minus:before {
  content: "\f010";
}
.fa-power-off:before {
  content: "\f011";
}
.fa-signal:before {
  content: "\f012";
}
.fa-gear:before,
.fa-cog:before {
  content: "\f013";
}
.fa-trash-o:before {
  content: "\f014";
}
.fa-home:before {
  content: "\f015";
}
.fa-file-o:before {
  content: "\f016";
}
.fa-clock-o:before {
  content: "\f017";
}
.fa-road:before {
  content: "\f018";
}
.fa-download:before {
  content: "\f019";
}
.fa-arrow-circle-o-down:before {
  content: "\f01a";
}
.fa-arrow-circle-o-up:before {
  content: "\f01b";
}
.fa-inbox:before {
  content: "\f01c";
}
.fa-play-circle-o:before {
  content: "\f01d";
}
.fa-rotate-right:before,
.fa-repeat:before {
  content: "\f01e";
}
.fa-refresh:before {
  content: "\f021";
}
.fa-list-alt:before {
  content: "\f022";
}
.fa-lock:before {
  content: "\f023";
}
.fa-flag:before {
  content: "\f024";
}
.fa-headphones:before {
  content: "\f025";
}
.fa-volume-off:before {
  content: "\f026";
}
.fa-volume-down:before {
  content: "\f027";
}
.fa-volume-up:before {
  content: "\f028";
}
.fa-qrcode:before {
  content: "\f029";
}
.fa-barcode:before {
  content: "\f02a";
}
.fa-tag:before {
  content: "\f02b";
}
.fa-tags:before {
  content: "\f02c";
}
.fa-book:before {
  content: "\f02d";
}
.fa-bookmark:before {
  content: "\f02e";
}
.fa-print:before {
  content: "\f02f";
}
.fa-camera:before {
  content: "\f030";
}
.fa-font:before {
  content: "\f031";
}
.fa-bold:before {
  content: "\f032";
}
.fa-italic:before {
  content: "\f033";
}
.fa-text-height:before {
  content: "\f034";
}
.fa-text-width:before {
  content: "\f035";
}
.fa-align-left:before {
  content: "\f036";
}
.fa-align-center:before {
  content: "\f037";
}
.fa-align-right:before {
  content: "\f038";
}
.fa-align-justify:before {
  content: "\f039";
}
.fa-list:before {
  content: "\f03a";
}
.fa-dedent:before,
.fa-outdent:before {
  content: "\f03b";
}
.fa-indent:before {
  content: "\f03c";
}
.fa-video-camera:before {
  content: "\f03d";
}
.fa-photo:before,
.fa-image:before,
.fa-picture-o:before {
  content: "\f03e";
}
.fa-pencil:before {
  content: "\f040";
}
.fa-map-marker:before {
  content: "\f041";
}
.fa-adjust:before {
  content: "\f042";
}
.fa-tint:before {
  content: "\f043";
}
.fa-edit:before,
.fa-pencil-square-o:before {
  content: "\f044";
}
.fa-share-square-o:before {
  content: "\f045";
}
.fa-check-square-o:before {
  content: "\f046";
}
.fa-arrows:before {
  content: "\f047";
}
.fa-step-backward:before {
  content: "\f048";
}
.fa-fast-backward:before {
  content: "\f049";
}
.fa-backward:before {
  content: "\f04a";
}
.fa-play:before {
  content: "\f04b";
}
.fa-pause:before {
  content: "\f04c";
}
.fa-stop:before {
  content: "\f04d";
}
.fa-forward:before {
  content: "\f04e";
}
.fa-fast-forward:before {
  content: "\f050";
}
.fa-step-forward:before {
  content: "\f051";
}
.fa-eject:before {
  content: "\f052";
}
.fa-chevron-left:before {
  content: "\f053";
}
.fa-chevron-right:before {
  content: "\f054";
}
.fa-plus-circle:before {
  content: "\f055";
}
.fa-minus-circle:before {
  content: "\f056";
}
.fa-times-circle:before {
  content: "\f057";
}
.fa-check-circle:before {
  content: "\f058";
}
.fa-question-circle:before {
  content: "\f059";
}
.fa-info-circle:before {
  content: "\f05a";
}
.fa-crosshairs:before {
  content: "\f05b";
}
.fa-times-circle-o:before {
  content: "\f05c";
}
.fa-check-circle-o:before {
  content: "\f05d";
}
.fa-ban:before {
  content: "\f05e";
}
.fa-arrow-left:before {
  content: "\f060";
}
.fa-arrow-right:before {
  content: "\f061";
}
.fa-arrow-up:before {
  content: "\f062";
}
.fa-arrow-down:before {
  content: "\f063";
}
.fa-mail-forward:before,
.fa-share:before {
  content: "\f064";
}
.fa-expand:before {
  content: "\f065";
}
.fa-compress:before {
  content: "\f066";
}
.fa-plus:before {
  content: "\f067";
}
.fa-minus:before {
  content: "\f068";
}
.fa-asterisk:before {
  content: "\f069";
}
.fa-exclamation-circle:before {
  content: "\f06a";
}
.fa-gift:before {
  content: "\f06b";
}
.fa-leaf:before {
  content: "\f06c";
}
.fa-fire:before {
  content: "\f06d";
}
.fa-eye:before {
  content: "\f06e";
}
.fa-eye-slash:before {
  content: "\f070";
}
.fa-warning:before,
.fa-exclamation-triangle:before {
  content: "\f071";
}
.fa-plane:before {
  content: "\f072";
}
.fa-calendar:before {
  content: "\f073";
}
.fa-random:before {
  content: "\f074";
}
.fa-comment:before {
  content: "\f075";
}
.fa-magnet:before {
  content: "\f076";
}
.fa-chevron-up:before {
  content: "\f077";
}
.fa-chevron-down:before {
  content: "\f078";
}
.fa-retweet:before {
  content: "\f079";
}
.fa-shopping-cart:before {
  content: "\f07a";
}
.fa-folder:before {
  content: "\f07b";
}
.fa-folder-open:before {
  content: "\f07c";
}
.fa-arrows-v:before {
  content: "\f07d";
}
.fa-arrows-h:before {
  content: "\f07e";
}
.fa-bar-chart-o:before,
.fa-bar-chart:before {
  content: "\f080";
}
.fa-twitter-square:before {
  content: "\f081";
}
.fa-facebook-square:before {
  content: "\f082";
}
.fa-camera-retro:before {
  content: "\f083";
}
.fa-key:before {
  content: "\f084";
}
.fa-gears:before,
.fa-cogs:before {
  content: "\f085";
}
.fa-comments:before {
  content: "\f086";
}
.fa-thumbs-o-up:before {
  content: "\f087";
}
.fa-thumbs-o-down:before {
  content: "\f088";
}
.fa-star-half:before {
  content: "\f089";
}
.fa-heart-o:before {
  content: "\f08a";
}
.fa-sign-out:before {
  content: "\f08b";
}
.fa-linkedin-square:before {
  content: "\f08c";
}
.fa-thumb-tack:before {
  content: "\f08d";
}
.fa-external-link:before {
  content: "\f08e";
}
.fa-sign-in:before {
  content: "\f090";
}
.fa-trophy:before {
  content: "\f091";
}
.fa-github-square:before {
  content: "\f092";
}
.fa-upload:before {
  content: "\f093";
}
.fa-lemon-o:before {
  content: "\f094";
}
.fa-phone:before {
  content: "\f095";
}
.fa-square-o:before {
  content: "\f096";
}
.fa-bookmark-o:before {
  content: "\f097";
}
.fa-phone-square:before {
  content: "\f098";
}
.fa-twitter:before {
  content: "\f099";
}
.fa-facebook-f:before,
.fa-facebook:before {
  content: "\f09a";
}
.fa-github:before {
  content: "\f09b";
}
.fa-unlock:before {
  content: "\f09c";
}
.fa-credit-card:before {
  content: "\f09d";
}
.fa-feed:before,
.fa-rss:before {
  content: "\f09e";
}
.fa-hdd-o:before {
  content: "\f0a0";
}
.fa-bullhorn:before {
  content: "\f0a1";
}
.fa-bell:before {
  content: "\f0f3";
}
.fa-certificate:before {
  content: "\f0a3";
}
.fa-hand-o-right:before {
  content: "\f0a4";
}
.fa-hand-o-left:before {
  content: "\f0a5";
}
.fa-hand-o-up:before {
  content: "\f0a6";
}
.fa-hand-o-down:before {
  content: "\f0a7";
}
.fa-arrow-circle-left:before {
  content: "\f0a8";
}
.fa-arrow-circle-right:before {
  content: "\f0a9";
}
.fa-arrow-circle-up:before {
  content: "\f0aa";
}
.fa-arrow-circle-down:before {
  content: "\f0ab";
}
.fa-globe:before {
  content: "\f0ac";
}
.fa-wrench:before {
  content: "\f0ad";
}
.fa-tasks:before {
  content: "\f0ae";
}
.fa-filter:before {
  content: "\f0b0";
}
.fa-briefcase:before {
  content: "\f0b1";
}
.fa-arrows-alt:before {
  content: "\f0b2";
}
.fa-group:before,
.fa-users:before {
  content: "\f0c0";
}
.fa-chain:before,
.fa-link:before {
  content: "\f0c1";
}
.fa-cloud:before {
  content: "\f0c2";
}
.fa-flask:before {
  content: "\f0c3";
}
.fa-cut:before,
.fa-scissors:before {
  content: "\f0c4";
}
.fa-copy:before,
.fa-files-o:before {
  content: "\f0c5";
}
.fa-paperclip:before {
  content: "\f0c6";
}
.fa-save:before,
.fa-floppy-o:before {
  content: "\f0c7";
}
.fa-square:before {
  content: "\f0c8";
}
.fa-navicon:before,
.fa-reorder:before,
.fa-bars:before {
  content: "\f0c9";
}
.fa-list-ul:before {
  content: "\f0ca";
}
.fa-list-ol:before {
  content: "\f0cb";
}
.fa-strikethrough:before {
  content: "\f0cc";
}
.fa-underline:before {
  content: "\f0cd";
}
.fa-table:before {
  content: "\f0ce";
}
.fa-magic:before {
  content: "\f0d0";
}
.fa-truck:before {
  content: "\f0d1";
}
.fa-pinterest:before {
  content: "\f0d2";
}
.fa-pinterest-square:before {
  content: "\f0d3";
}
.fa-google-plus-square:before {
  content: "\f0d4";
}
.fa-google-plus:before {
  content: "\f0d5";
}
.fa-money:before {
  content: "\f0d6";
}
.fa-caret-down:before {
  content: "\f0d7";
}
.fa-caret-up:before {
  content: "\f0d8";
}
.fa-caret-left:before {
  content: "\f0d9";
}
.fa-caret-right:before {
  content: "\f0da";
}
.fa-columns:before {
  content: "\f0db";
}
.fa-unsorted:before,
.fa-sort:before {
  content: "\f0dc";
}
.fa-sort-down:before,
.fa-sort-desc:before {
  content: "\f0dd";
}
.fa-sort-up:before,
.fa-sort-asc:before {
  content: "\f0de";
}
.fa-envelope:before {
  content: "\f0e0";
}
.fa-linkedin:before {
  content: "\f0e1";
}
.fa-rotate-left:before,
.fa-undo:before {
  content: "\f0e2";
}
.fa-legal:before,
.fa-gavel:before {
  content: "\f0e3";
}
.fa-dashboard:before,
.fa-tachometer:before {
  content: "\f0e4";
}
.fa-comment-o:before {
  content: "\f0e5";
}
.fa-comments-o:before {
  content: "\f0e6";
}
.fa-flash:before,
.fa-bolt:before {
  content: "\f0e7";
}
.fa-sitemap:before {
  content: "\f0e8";
}
.fa-umbrella:before {
  content: "\f0e9";
}
.fa-paste:before,
.fa-clipboard:before {
  content: "\f0ea";
}
.fa-lightbulb-o:before {
  content: "\f0eb";
}
.fa-exchange:before {
  content: "\f0ec";
}
.fa-cloud-download:before {
  content: "\f0ed";
}
.fa-cloud-upload:before {
  content: "\f0ee";
}
.fa-user-md:before {
  content: "\f0f0";
}
.fa-stethoscope:before {
  content: "\f0f1";
}
.fa-suitcase:before {
  content: "\f0f2";
}
.fa-bell-o:before {
  content: "\f0a2";
}
.fa-coffee:before {
  content: "\f0f4";
}
.fa-cutlery:before {
  content: "\f0f5";
}
.fa-file-text-o:before {
  content: "\f0f6";
}
.fa-building-o:before {
  content: "\f0f7";
}
.fa-hospital-o:before {
  content: "\f0f8";
}
.fa-ambulance:before {
  content: "\f0f9";
}
.fa-medkit:before {
  content: "\f0fa";
}
.fa-fighter-jet:before {
  content: "\f0fb";
}
.fa-beer:before {
  content: "\f0fc";
}
.fa-h-square:before {
  content: "\f0fd";
}
.fa-plus-square:before {
  content: "\f0fe";
}
.fa-angle-double-left:before {
  content: "\f100";
}
.fa-angle-double-right:before {
  content: "\f101";
}
.fa-angle-double-up:before {
  content: "\f102";
}
.fa-angle-double-down:before {
  content: "\f103";
}
.fa-angle-left:before {
  content: "\f104";
}
.fa-angle-right:before {
  content: "\f105";
}
.fa-angle-up:before {
  content: "\f106";
}
.fa-angle-down:before {
  content: "\f107";
}
.fa-desktop:before {
  content: "\f108";
}
.fa-laptop:before {
  content: "\f109";
}
.fa-tablet:before {
  content: "\f10a";
}
.fa-mobile-phone:before,
.fa-mobile:before {
  content: "\f10b";
}
.fa-circle-o:before {
  content: "\f10c";
}
.fa-quote-left:before {
  content: "\f10d";
}
.fa-quote-right:before {
  content: "\f10e";
}
.fa-spinner:before {
  content: "\f110";
}
.fa-circle:before {
  content: "\f111";
}
.fa-mail-reply:before,
.fa-reply:before {
  content: "\f112";
}
.fa-github-alt:before {
  content: "\f113";
}
.fa-folder-o:before {
  content: "\f114";
}
.fa-folder-open-o:before {
  content: "\f115";
}
.fa-smile-o:before {
  content: "\f118";
}
.fa-frown-o:before {
  content: "\f119";
}
.fa-meh-o:before {
  content: "\f11a";
}
.fa-gamepad:before {
  content: "\f11b";
}
.fa-keyboard-o:before {
  content: "\f11c";
}
.fa-flag-o:before {
  content: "\f11d";
}
.fa-flag-checkered:before {
  content: "\f11e";
}
.fa-terminal:before {
  content: "\f120";
}
.fa-code:before {
  content: "\f121";
}
.fa-mail-reply-all:before,
.fa-reply-all:before {
  content: "\f122";
}
.fa-star-half-empty:before,
.fa-star-half-full:before,
.fa-star-half-o:before {
  content: "\f123";
}
.fa-location-arrow:before {
  content: "\f124";
}
.fa-crop:before {
  content: "\f125";
}
.fa-code-fork:before {
  content: "\f126";
}
.fa-unlink:before,
.fa-chain-broken:before {
  content: "\f127";
}
.fa-question:before {
  content: "\f128";
}
.fa-info:before {
  content: "\f129";
}
.fa-exclamation:before {
  content: "\f12a";
}
.fa-superscript:before {
  content: "\f12b";
}
.fa-subscript:before {
  content: "\f12c";
}
.fa-eraser:before {
  content: "\f12d";
}
.fa-puzzle-piece:before {
  content: "\f12e";
}
.fa-microphone:before {
  content: "\f130";
}
.fa-microphone-slash:before {
  content: "\f131";
}
.fa-shield:before {
  content: "\f132";
}
.fa-calendar-o:before {
  content: "\f133";
}
.fa-fire-extinguisher:before {
  content: "\f134";
}
.fa-rocket:before {
  content: "\f135";
}
.fa-maxcdn:before {
  content: "\f136";
}
.fa-chevron-circle-left:before {
  content: "\f137";
}
.fa-chevron-circle-right:before {
  content: "\f138";
}
.fa-chevron-circle-up:before {
  content: "\f139";
}
.fa-chevron-circle-down:before {
  content: "\f13a";
}
.fa-html5:before {
  content: "\f13b";
}
.fa-css3:before {
  content: "\f13c";
}
.fa-anchor:before {
  content: "\f13d";
}
.fa-unlock-alt:before {
  content: "\f13e";
}
.fa-bullseye:before {
  content: "\f140";
}
.fa-ellipsis-h:before {
  content: "\f141";
}
.fa-ellipsis-v:before {
  content: "\f142";
}
.fa-rss-square:before {
  content: "\f143";
}
.fa-play-circle:before {
  content: "\f144";
}
.fa-ticket:before {
  content: "\f145";
}
.fa-minus-square:before {
  content: "\f146";
}
.fa-minus-square-o:before {
  content: "\f147";
}
.fa-level-up:before {
  content: "\f148";
}
.fa-level-down:before {
  content: "\f149";
}
.fa-check-square:before {
  content: "\f14a";
}
.fa-pencil-square:before {
  content: "\f14b";
}
.fa-external-link-square:before {
  content: "\f14c";
}
.fa-share-square:before {
  content: "\f14d";
}
.fa-compass:before {
  content: "\f14e";
}
.fa-toggle-down:before,
.fa-caret-square-o-down:before {
  content: "\f150";
}
.fa-toggle-up:before,
.fa-caret-square-o-up:before {
  content: "\f151";
}
.fa-toggle-right:before,
.fa-caret-square-o-right:before {
  content: "\f152";
}
.fa-euro:before,
.fa-eur:before {
  content: "\f153";
}
.fa-gbp:before {
  content: "\f154";
}
.fa-dollar:before,
.fa-usd:before {
  content: "\f155";
}
.fa-rupee:before,
.fa-inr:before {
  content: "\f156";
}
.fa-cny:before,
.fa-rmb:before,
.fa-yen:before,
.fa-jpy:before {
  content: "\f157";
}
.fa-ruble:before,
.fa-rouble:before,
.fa-rub:before {
  content: "\f158";
}
.fa-won:before,
.fa-krw:before {
  content: "\f159";
}
.fa-bitcoin:before,
.fa-btc:before {
  content: "\f15a";
}
.fa-file:before {
  content: "\f15b";
}
.fa-file-text:before {
  content: "\f15c";
}
.fa-sort-alpha-asc:before {
  content: "\f15d";
}
.fa-sort-alpha-desc:before {
  content: "\f15e";
}
.fa-sort-amount-asc:before {
  content: "\f160";
}
.fa-sort-amount-desc:before {
  content: "\f161";
}
.fa-sort-numeric-asc:before {
  content: "\f162";
}
.fa-sort-numeric-desc:before {
  content: "\f163";
}
.fa-thumbs-up:before {
  content: "\f164";
}
.fa-thumbs-down:before {
  content: "\f165";
}
.fa-youtube-square:before {
  content: "\f166";
}
.fa-youtube:before {
  content: "\f167";
}
.fa-xing:before {
  content: "\f168";
}
.fa-xing-square:before {
  content: "\f169";
}
.fa-youtube-play:before {
  content: "\f16a";
}
.fa-dropbox:before {
  content: "\f16b";
}
.fa-stack-overflow:before {
  content: "\f16c";
}
.fa-instagram:before {
  content: "\f16d";
}
.fa-flickr:before {
  content: "\f16e";
}
.fa-adn:before {
  content: "\f170";
}
.fa-bitbucket:before {
  content: "\f171";
}
.fa-bitbucket-square:before {
  content: "\f172";
}
.fa-tumblr:before {
  content: "\f173";
}
.fa-tumblr-square:before {
  content: "\f174";
}
.fa-long-arrow-down:before {
  content: "\f175";
}
.fa-long-arrow-up:before {
  content: "\f176";
}
.fa-long-arrow-left:before {
  content: "\f177";
}
.fa-long-arrow-right:before {
  content: "\f178";
}
.fa-apple:before {
  content: "\f179";
}
.fa-windows:before {
  content: "\f17a";
}
.fa-android:before {
  content: "\f17b";
}
.fa-linux:before {
  content: "\f17c";
}
.fa-dribbble:before {
  content: "\f17d";
}
.fa-skype:before {
  content: "\f17e";
}
.fa-foursquare:before {
  content: "\f180";
}
.fa-trello:before {
  content: "\f181";
}
.fa-female:before {
  content: "\f182";
}
.fa-male:before {
  content: "\f183";
}
.fa-gittip:before,
.fa-gratipay:before {
  content: "\f184";
}
.fa-sun-o:before {
  content: "\f185";
}
.fa-moon-o:before {
  content: "\f186";
}
.fa-archive:before {
  content: "\f187";
}
.fa-bug:before {
  content: "\f188";
}
.fa-vk:before {
  content: "\f189";
}
.fa-weibo:before {
  content: "\f18a";
}
.fa-renren:before {
  content: "\f18b";
}
.fa-pagelines:before {
  content: "\f18c";
}
.fa-stack-exchange:before {
  content: "\f18d";
}
.fa-arrow-circle-o-right:before {
  content: "\f18e";
}
.fa-arrow-circle-o-left:before {
  content: "\f190";
}
.fa-toggle-left:before,
.fa-caret-square-o-left:before {
  content: "\f191";
}
.fa-dot-circle-o:before {
  content: "\f192";
}
.fa-wheelchair:before {
  content: "\f193";
}
.fa-vimeo-square:before {
  content: "\f194";
}
.fa-turkish-lira:before,
.fa-try:before {
  content: "\f195";
}
.fa-plus-square-o:before {
  content: "\f196";
}
.fa-space-shuttle:before {
  content: "\f197";
}
.fa-slack:before {
  content: "\f198";
}
.fa-envelope-square:before {
  content: "\f199";
}
.fa-wordpress:before {
  content: "\f19a";
}
.fa-openid:before {
  content: "\f19b";
}
.fa-institution:before,
.fa-bank:before,
.fa-university:before {
  content: "\f19c";
}
.fa-mortar-board:before,
.fa-graduation-cap:before {
  content: "\f19d";
}
.fa-yahoo:before {
  content: "\f19e";
}
.fa-google:before {
  content: "\f1a0";
}
.fa-reddit:before {
  content: "\f1a1";
}
.fa-reddit-square:before {
  content: "\f1a2";
}
.fa-stumbleupon-circle:before {
  content: "\f1a3";
}
.fa-stumbleupon:before {
  content: "\f1a4";
}
.fa-delicious:before {
  content: "\f1a5";
}
.fa-digg:before {
  content: "\f1a6";
}
.fa-pied-piper-pp:before {
  content: "\f1a7";
}
.fa-pied-piper-alt:before {
  content: "\f1a8";
}
.fa-drupal:before {
  content: "\f1a9";
}
.fa-joomla:before {
  content: "\f1aa";
}
.fa-language:before {
  content: "\f1ab";
}
.fa-fax:before {
  content: "\f1ac";
}
.fa-building:before {
  content: "\f1ad";
}
.fa-child:before {
  content: "\f1ae";
}
.fa-paw:before {
  content: "\f1b0";
}
.fa-spoon:before {
  content: "\f1b1";
}
.fa-cube:before {
  content: "\f1b2";
}
.fa-cubes:before {
  content: "\f1b3";
}
.fa-behance:before {
  content: "\f1b4";
}
.fa-behance-square:before {
  content: "\f1b5";
}
.fa-steam:before {
  content: "\f1b6";
}
.fa-steam-square:before {
  content: "\f1b7";
}
.fa-recycle:before {
  content: "\f1b8";
}
.fa-automobile:before,
.fa-car:before {
  content: "\f1b9";
}
.fa-cab:before,
.fa-taxi:before {
  content: "\f1ba";
}
.fa-tree:before {
  content: "\f1bb";
}
.fa-spotify:before {
  content: "\f1bc";
}
.fa-deviantart:before {
  content: "\f1bd";
}
.fa-soundcloud:before {
  content: "\f1be";
}
.fa-database:before {
  content: "\f1c0";
}
.fa-file-pdf-o:before {
  content: "\f1c1";
}
.fa-file-word-o:before {
  content: "\f1c2";
}
.fa-file-excel-o:before {
  content: "\f1c3";
}
.fa-file-powerpoint-o:before {
  content: "\f1c4";
}
.fa-file-photo-o:before,
.fa-file-picture-o:before,
.fa-file-image-o:before {
  content: "\f1c5";
}
.fa-file-zip-o:before,
.fa-file-archive-o:before {
  content: "\f1c6";
}
.fa-file-sound-o:before,
.fa-file-audio-o:before {
  content: "\f1c7";
}
.fa-file-movie-o:before,
.fa-file-video-o:before {
  content: "\f1c8";
}
.fa-file-code-o:before {
  content: "\f1c9";
}
.fa-vine:before {
  content: "\f1ca";
}
.fa-codepen:before {
  content: "\f1cb";
}
.fa-jsfiddle:before {
  content: "\f1cc";
}
.fa-life-bouy:before,
.fa-life-buoy:before,
.fa-life-saver:before,
.fa-support:before,
.fa-life-ring:before {
  content: "\f1cd";
}
.fa-circle-o-notch:before {
  content: "\f1ce";
}
.fa-ra:before,
.fa-resistance:before,
.fa-rebel:before {
  content: "\f1d0";
}
.fa-ge:before,
.fa-empire:before {
  content: "\f1d1";
}
.fa-git-square:before {
  content: "\f1d2";
}
.fa-git:before {
  content: "\f1d3";
}
.fa-y-combinator-square:before,
.fa-yc-square:before,
.fa-hacker-news:before {
  content: "\f1d4";
}
.fa-tencent-weibo:before {
  content: "\f1d5";
}
.fa-qq:before {
  content: "\f1d6";
}
.fa-wechat:before,
.fa-weixin:before {
  content: "\f1d7";
}
.fa-send:before,
.fa-paper-plane:before {
  content: "\f1d8";
}
.fa-send-o:before,
.fa-paper-plane-o:before {
  content: "\f1d9";
}
.fa-history:before {
  content: "\f1da";
}
.fa-circle-thin:before {
  content: "\f1db";
}
.fa-header:before {
  content: "\f1dc";
}
.fa-paragraph:before {
  content: "\f1dd";
}
.fa-sliders:before {
  content: "\f1de";
}
.fa-share-alt:before {
  content: "\f1e0";
}
.fa-share-alt-square:before {
  content: "\f1e1";
}
.fa-bomb:before {
  content: "\f1e2";
}
.fa-soccer-ball-o:before,
.fa-futbol-o:before {
  content: "\f1e3";
}
.fa-tty:before {
  content: "\f1e4";
}
.fa-binoculars:before {
  content: "\f1e5";
}
.fa-plug:before {
  content: "\f1e6";
}
.fa-slideshare:before {
  content: "\f1e7";
}
.fa-twitch:before {
  content: "\f1e8";
}
.fa-yelp:before {
  content: "\f1e9";
}
.fa-newspaper-o:before {
  content: "\f1ea";
}
.fa-wifi:before {
  content: "\f1eb";
}
.fa-calculator:before {
  content: "\f1ec";
}
.fa-paypal:before {
  content: "\f1ed";
}
.fa-google-wallet:before {
  content: "\f1ee";
}
.fa-cc-visa:before {
  content: "\f1f0";
}
.fa-cc-mastercard:before {
  content: "\f1f1";
}
.fa-cc-discover:before {
  content: "\f1f2";
}
.fa-cc-amex:before {
  content: "\f1f3";
}
.fa-cc-paypal:before {
  content: "\f1f4";
}
.fa-cc-stripe:before {
  content: "\f1f5";
}
.fa-bell-slash:before {
  content: "\f1f6";
}
.fa-bell-slash-o:before {
  content: "\f1f7";
}
.fa-trash:before {
  content: "\f1f8";
}
.fa-copyright:before {
  content: "\f1f9";
}
.fa-at:before {
  content: "\f1fa";
}
.fa-eyedropper:before {
  content: "\f1fb";
}
.fa-paint-brush:before {
  content: "\f1fc";
}
.fa-birthday-cake:before {
  content: "\f1fd";
}
.fa-area-chart:before {
  content: "\f1fe";
}
.fa-pie-chart:before {
  content: "\f200";
}
.fa-line-chart:before {
  content: "\f201";
}
.fa-lastfm:before {
  content: "\f202";
}
.fa-lastfm-square:before {
  content: "\f203";
}
.fa-toggle-off:before {
  content: "\f204";
}
.fa-toggle-on:before {
  content: "\f205";
}
.fa-bicycle:before {
  content: "\f206";
}
.fa-bus:before {
  content: "\f207";
}
.fa-ioxhost:before {
  content: "\f208";
}
.fa-angellist:before {
  content: "\f209";
}
.fa-cc:before {
  content: "\f20a";
}
.fa-shekel:before,
.fa-sheqel:before,
.fa-ils:before {
  content: "\f20b";
}
.fa-meanpath:before {
  content: "\f20c";
}
.fa-buysellads:before {
  content: "\f20d";
}
.fa-connectdevelop:before {
  content: "\f20e";
}
.fa-dashcube:before {
  content: "\f210";
}
.fa-forumbee:before {
  content: "\f211";
}
.fa-leanpub:before {
  content: "\f212";
}
.fa-sellsy:before {
  content: "\f213";
}
.fa-shirtsinbulk:before {
  content: "\f214";
}
.fa-simplybuilt:before {
  content: "\f215";
}
.fa-skyatlas:before {
  content: "\f216";
}
.fa-cart-plus:before {
  content: "\f217";
}
.fa-cart-arrow-down:before {
  content: "\f218";
}
.fa-diamond:before {
  content: "\f219";
}
.fa-ship:before {
  content: "\f21a";
}
.fa-user-secret:before {
  content: "\f21b";
}
.fa-motorcycle:before {
  content: "\f21c";
}
.fa-street-view:before {
  content: "\f21d";
}
.fa-heartbeat:before {
  content: "\f21e";
}
.fa-venus:before {
  content: "\f221";
}
.fa-mars:before {
  content: "\f222";
}
.fa-mercury:before {
  content: "\f223";
}
.fa-intersex:before,
.fa-transgender:before {
  content: "\f224";
}
.fa-transgender-alt:before {
  content: "\f225";
}
.fa-venus-double:before {
  content: "\f226";
}
.fa-mars-double:before {
  content: "\f227";
}
.fa-venus-mars:before {
  content: "\f228";
}
.fa-mars-stroke:before {
  content: "\f229";
}
.fa-mars-stroke-v:before {
  content: "\f22a";
}
.fa-mars-stroke-h:before {
  content: "\f22b";
}
.fa-neuter:before {
  content: "\f22c";
}
.fa-genderless:before {
  content: "\f22d";
}
.fa-facebook-official:before {
  content: "\f230";
}
.fa-pinterest-p:before {
  content: "\f231";
}
.fa-whatsapp:before {
  content: "\f232";
}
.fa-server:before {
  content: "\f233";
}
.fa-user-plus:before {
  content: "\f234";
}
.fa-user-times:before {
  content: "\f235";
}
.fa-hotel:before,
.fa-bed:before {
  content: "\f236";
}
.fa-viacoin:before {
  content: "\f237";
}
.fa-train:before {
  content: "\f238";
}
.fa-subway:before {
  content: "\f239";
}
.fa-medium:before {
  content: "\f23a";
}
.fa-yc:before,
.fa-y-combinator:before {
  content: "\f23b";
}
.fa-optin-monster:before {
  content: "\f23c";
}
.fa-opencart:before {
  content: "\f23d";
}
.fa-expeditedssl:before {
  content: "\f23e";
}
.fa-battery-4:before,
.fa-battery:before,
.fa-battery-full:before {
  content: "\f240";
}
.fa-battery-3:before,
.fa-battery-three-quarters:before {
  content: "\f241";
}
.fa-battery-2:before,
.fa-battery-half:before {
  content: "\f242";
}
.fa-battery-1:before,
.fa-battery-quarter:before {
  content: "\f243";
}
.fa-battery-0:before,
.fa-battery-empty:before {
  content: "\f244";
}
.fa-mouse-pointer:before {
  content: "\f245";
}
.fa-i-cursor:before {
  content: "\f246";
}
.fa-object-group:before {
  content: "\f247";
}
.fa-object-ungroup:before {
  content: "\f248";
}
.fa-sticky-note:before {
  content: "\f249";
}
.fa-sticky-note-o:before {
  content: "\f24a";
}
.fa-cc-jcb:before {
  content: "\f24b";
}
.fa-cc-diners-club:before {
  content: "\f24c";
}
.fa-clone:before {
  content: "\f24d";
}
.fa-balance-scale:before {
  content: "\f24e";
}
.fa-hourglass-o:before {
  content: "\f250";
}
.fa-hourglass-1:before,
.fa-hourglass-start:before {
  content: "\f251";
}
.fa-hourglass-2:before,
.fa-hourglass-half:before {
  content: "\f252";
}
.fa-hourglass-3:before,
.fa-hourglass-end:before {
  content: "\f253";
}
.fa-hourglass:before {
  content: "\f254";
}
.fa-hand-grab-o:before,
.fa-hand-rock-o:before {
  content: "\f255";
}
.fa-hand-stop-o:before,
.fa-hand-paper-o:before {
  content: "\f256";
}
.fa-hand-scissors-o:before {
  content: "\f257";
}
.fa-hand-lizard-o:before {
  content: "\f258";
}
.fa-hand-spock-o:before {
  content: "\f259";
}
.fa-hand-pointer-o:before {
  content: "\f25a";
}
.fa-hand-peace-o:before {
  content: "\f25b";
}
.fa-trademark:before {
  content: "\f25c";
}
.fa-registered:before {
  content: "\f25d";
}
.fa-creative-commons:before {
  content: "\f25e";
}
.fa-gg:before {
  content: "\f260";
}
.fa-gg-circle:before {
  content: "\f261";
}
.fa-tripadvisor:before {
  content: "\f262";
}
.fa-odnoklassniki:before {
  content: "\f263";
}
.fa-odnoklassniki-square:before {
  content: "\f264";
}
.fa-get-pocket:before {
  content: "\f265";
}
.fa-wikipedia-w:before {
  content: "\f266";
}
.fa-safari:before {
  content: "\f267";
}
.fa-chrome:before {
  content: "\f268";
}
.fa-firefox:before {
  content: "\f269";
}
.fa-opera:before {
  content: "\f26a";
}
.fa-internet-explorer:before {
  content: "\f26b";
}
.fa-tv:before,
.fa-television:before {
  content: "\f26c";
}
.fa-contao:before {
  content: "\f26d";
}
.fa-500px:before {
  content: "\f26e";
}
.fa-amazon:before {
  content: "\f270";
}
.fa-calendar-plus-o:before {
  content: "\f271";
}
.fa-calendar-minus-o:before {
  content: "\f272";
}
.fa-calendar-times-o:before {
  content: "\f273";
}
.fa-calendar-check-o:before {
  content: "\f274";
}
.fa-industry:before {
  content: "\f275";
}
.fa-map-pin:before {
  content: "\f276";
}
.fa-map-signs:before {
  content: "\f277";
}
.fa-map-o:before {
  content: "\f278";
}
.fa-map:before {
  content: "\f279";
}
.fa-commenting:before {
  content: "\f27a";
}
.fa-commenting-o:before {
  content: "\f27b";
}
.fa-houzz:before {
  content: "\f27c";
}
.fa-vimeo:before {
  content: "\f27d";
}
.fa-black-tie:before {
  content: "\f27e";
}
.fa-fonticons:before {
  content: "\f280";
}
.fa-reddit-alien:before {
  content: "\f281";
}
.fa-edge:before {
  content: "\f282";
}
.fa-credit-card-alt:before {
  content: "\f283";
}
.fa-codiepie:before {
  content: "\f284";
}
.fa-modx:before {
  content: "\f285";
}
.fa-fort-awesome:before {
  content: "\f286";
}
.fa-usb:before {
  content: "\f287";
}
.fa-product-hunt:before {
  content: "\f288";
}
.fa-mixcloud:before {
  content: "\f289";
}
.fa-scribd:before {
  content: "\f28a";
}
.fa-pause-circle:before {
  content: "\f28b";
}
.fa-pause-circle-o:before {
  content: "\f28c";
}
.fa-stop-circle:before {
  content: "\f28d";
}
.fa-stop-circle-o:before {
  content: "\f28e";
}
.fa-shopping-bag:before {
  content: "\f290";
}
.fa-shopping-basket:before {
  content: "\f291";
}
.fa-hashtag:before {
  content: "\f292";
}
.fa-bluetooth:before {
  content: "\f293";
}
.fa-bluetooth-b:before {
  content: "\f294";
}
.fa-percent:before {
  content: "\f295";
}
.fa-gitlab:before {
  content: "\f296";
}
.fa-wpbeginner:before {
  content: "\f297";
}
.fa-wpforms:before {
  content: "\f298";
}
.fa-envira:before {
  content: "\f299";
}
.fa-universal-access:before {
  content: "\f29a";
}
.fa-wheelchair-alt:before {
  content: "\f29b";
}
.fa-question-circle-o:before {
  content: "\f29c";
}
.fa-blind:before {
  content: "\f29d";
}
.fa-audio-description:before {
  content: "\f29e";
}
.fa-volume-control-phone:before {
  content: "\f2a0";
}
.fa-braille:before {
  content: "\f2a1";
}
.fa-assistive-listening-systems:before {
  content: "\f2a2";
}
.fa-asl-interpreting:before,
.fa-american-sign-language-interpreting:before {
  content: "\f2a3";
}
.fa-deafness:before,
.fa-hard-of-hearing:before,
.fa-deaf:before {
  content: "\f2a4";
}
.fa-glide:before {
  content: "\f2a5";
}
.fa-glide-g:before {
  content: "\f2a6";
}
.fa-signing:before,
.fa-sign-language:before {
  content: "\f2a7";
}
.fa-low-vision:before {
  content: "\f2a8";
}
.fa-viadeo:before {
  content: "\f2a9";
}
.fa-viadeo-square:before {
  content: "\f2aa";
}
.fa-snapchat:before {
  content: "\f2ab";
}
.fa-snapchat-ghost:before {
  content: "\f2ac";
}
.fa-snapchat-square:before {
  content: "\f2ad";
}
.fa-pied-piper:before {
  content: "\f2ae";
}
.fa-first-order:before {
  content: "\f2b0";
}
.fa-yoast:before {
  content: "\f2b1";
}
.fa-themeisle:before {
  content: "\f2b2";
}
.fa-google-plus-circle:before,
.fa-google-plus-official:before {
  content: "\f2b3";
}
.fa-fa:before,
.fa-font-awesome:before {
  content: "\f2b4";
}
.fa-handshake-o:before {
  content: "\f2b5";
}
.fa-envelope-open:before {
  content: "\f2b6";
}
.fa-envelope-open-o:before {
  content: "\f2b7";
}
.fa-linode:before {
  content: "\f2b8";
}
.fa-address-book:before {
  content: "\f2b9";
}
.fa-address-book-o:before {
  content: "\f2ba";
}
.fa-vcard:before,
.fa-address-card:before {
  content: "\f2bb";
}
.fa-vcard-o:before,
.fa-address-card-o:before {
  content: "\f2bc";
}
.fa-user-circle:before {
  content: "\f2bd";
}
.fa-user-circle-o:before {
  content: "\f2be";
}
.fa-user-o:before {
  content: "\f2c0";
}
.fa-id-badge:before {
  content: "\f2c1";
}
.fa-drivers-license:before,
.fa-id-card:before {
  content: "\f2c2";
}
.fa-drivers-license-o:before,
.fa-id-card-o:before {
  content: "\f2c3";
}
.fa-quora:before {
  content: "\f2c4";
}
.fa-free-code-camp:before {
  content: "\f2c5";
}
.fa-telegram:before {
  content: "\f2c6";
}
.fa-thermometer-4:before,
.fa-thermometer:before,
.fa-thermometer-full:before {
  content: "\f2c7";
}
.fa-thermometer-3:before,
.fa-thermometer-three-quarters:before {
  content: "\f2c8";
}
.fa-thermometer-2:before,
.fa-thermometer-half:before {
  content: "\f2c9";
}
.fa-thermometer-1:before,
.fa-thermometer-quarter:before {
  content: "\f2ca";
}
.fa-thermometer-0:before,
.fa-thermometer-empty:before {
  content: "\f2cb";
}
.fa-shower:before {
  content: "\f2cc";
}
.fa-bathtub:before,
.fa-s15:before,
.fa-bath:before {
  content: "\f2cd";
}
.fa-podcast:before {
  content: "\f2ce";
}
.fa-window-maximize:before {
  content: "\f2d0";
}
.fa-window-minimize:before {
  content: "\f2d1";
}
.fa-window-restore:before {
  content: "\f2d2";
}
.fa-times-rectangle:before,
.fa-window-close:before {
  content: "\f2d3";
}
.fa-times-rectangle-o:before,
.fa-window-close-o:before {
  content: "\f2d4";
}
.fa-bandcamp:before {
  content: "\f2d5";
}
.fa-grav:before {
  content: "\f2d6";
}
.fa-etsy:before {
  content: "\f2d7";
}
.fa-imdb:before {
  content: "\f2d8";
}
.fa-ravelry:before {
  content: "\f2d9";
}
.fa-eercast:before {
  content: "\f2da";
}
.fa-microchip:before {
  content: "\f2db";
}
.fa-snowflake-o:before {
  content: "\f2dc";
}
.fa-superpowers:before {
  content: "\f2dd";
}
.fa-wpexplorer:before {
  content: "\f2de";
}
.fa-meetup:before {
  content: "\f2e0";
}
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
.sr-only-focusable:active,
.sr-only-focusable:focus {
  position: static;
  width: auto;
  height: auto;
  margin: 0;
  overflow: visible;
  clip: auto;
}
/*!
*
* IPython base
*
*/
.modal.fade .modal-dialog {
  -webkit-transform: translate(0, 0);
  -ms-transform: translate(0, 0);
  -o-transform: translate(0, 0);
  transform: translate(0, 0);
}
code {
  color: #000;
}
pre {
  font-size: inherit;
  line-height: inherit;
}
label {
  font-weight: normal;
}
/* Make the page background atleast 100% the height of the view port */
/* Make the page itself atleast 70% the height of the view port */
.border-box-sizing {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
.corner-all {
  border-radius: 2px;
}
.no-padding {
  padding: 0px;
}
/* Flexible box model classes */
/* Taken from Alex Russell http://infrequently.org/2009/08/css-3-progress/ */
/* This file is a compatability layer.  It allows the usage of flexible box 
model layouts accross multiple browsers, including older browsers.  The newest,
universal implementation of the flexible box model is used when available (see
`Modern browsers` comments below).  Browsers that are known to implement this 
new spec completely include:

    Firefox 28.0+
    Chrome 29.0+
    Internet Explorer 11+ 
    Opera 17.0+

Browsers not listed, including Safari, are supported via the styling under the
`Old browsers` comments below.
*/
.hbox {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
.hbox > * {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
}
.vbox {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
.vbox > * {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
}
.hbox.reverse,
.vbox.reverse,
.reverse {
  /* Old browsers */
  -webkit-box-direction: reverse;
  -moz-box-direction: reverse;
  box-direction: reverse;
  /* Modern browsers */
  flex-direction: row-reverse;
}
.hbox.box-flex0,
.vbox.box-flex0,
.box-flex0 {
  /* Old browsers */
  -webkit-box-flex: 0;
  -moz-box-flex: 0;
  box-flex: 0;
  /* Modern browsers */
  flex: none;
  width: auto;
}
.hbox.box-flex1,
.vbox.box-flex1,
.box-flex1 {
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
.hbox.box-flex,
.vbox.box-flex,
.box-flex {
  /* Old browsers */
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
.hbox.box-flex2,
.vbox.box-flex2,
.box-flex2 {
  /* Old browsers */
  -webkit-box-flex: 2;
  -moz-box-flex: 2;
  box-flex: 2;
  /* Modern browsers */
  flex: 2;
}
.box-group1 {
  /*  Deprecated */
  -webkit-box-flex-group: 1;
  -moz-box-flex-group: 1;
  box-flex-group: 1;
}
.box-group2 {
  /* Deprecated */
  -webkit-box-flex-group: 2;
  -moz-box-flex-group: 2;
  box-flex-group: 2;
}
.hbox.start,
.vbox.start,
.start {
  /* Old browsers */
  -webkit-box-pack: start;
  -moz-box-pack: start;
  box-pack: start;
  /* Modern browsers */
  justify-content: flex-start;
}
.hbox.end,
.vbox.end,
.end {
  /* Old browsers */
  -webkit-box-pack: end;
  -moz-box-pack: end;
  box-pack: end;
  /* Modern browsers */
  justify-content: flex-end;
}
.hbox.center,
.vbox.center,
.center {
  /* Old browsers */
  -webkit-box-pack: center;
  -moz-box-pack: center;
  box-pack: center;
  /* Modern browsers */
  justify-content: center;
}
.hbox.baseline,
.vbox.baseline,
.baseline {
  /* Old browsers */
  -webkit-box-pack: baseline;
  -moz-box-pack: baseline;
  box-pack: baseline;
  /* Modern browsers */
  justify-content: baseline;
}
.hbox.stretch,
.vbox.stretch,
.stretch {
  /* Old browsers */
  -webkit-box-pack: stretch;
  -moz-box-pack: stretch;
  box-pack: stretch;
  /* Modern browsers */
  justify-content: stretch;
}
.hbox.align-start,
.vbox.align-start,
.align-start {
  /* Old browsers */
  -webkit-box-align: start;
  -moz-box-align: start;
  box-align: start;
  /* Modern browsers */
  align-items: flex-start;
}
.hbox.align-end,
.vbox.align-end,
.align-end {
  /* Old browsers */
  -webkit-box-align: end;
  -moz-box-align: end;
  box-align: end;
  /* Modern browsers */
  align-items: flex-end;
}
.hbox.align-center,
.vbox.align-center,
.align-center {
  /* Old browsers */
  -webkit-box-align: center;
  -moz-box-align: center;
  box-align: center;
  /* Modern browsers */
  align-items: center;
}
.hbox.align-baseline,
.vbox.align-baseline,
.align-baseline {
  /* Old browsers */
  -webkit-box-align: baseline;
  -moz-box-align: baseline;
  box-align: baseline;
  /* Modern browsers */
  align-items: baseline;
}
.hbox.align-stretch,
.vbox.align-stretch,
.align-stretch {
  /* Old browsers */
  -webkit-box-align: stretch;
  -moz-box-align: stretch;
  box-align: stretch;
  /* Modern browsers */
  align-items: stretch;
}
div.error {
  margin: 2em;
  text-align: center;
}
div.error > h1 {
  font-size: 500%;
  line-height: normal;
}
div.error > p {
  font-size: 200%;
  line-height: normal;
}
div.traceback-wrapper {
  text-align: left;
  max-width: 800px;
  margin: auto;
}
div.traceback-wrapper pre.traceback {
  max-height: 600px;
  overflow: auto;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
body {
  background-color: #fff;
  /* This makes sure that the body covers the entire window and needs to
       be in a different element than the display: box in wrapper below */
  position: absolute;
  left: 0px;
  right: 0px;
  top: 0px;
  bottom: 0px;
  overflow: visible;
}
body > #header {
  /* Initially hidden to prevent FLOUC */
  display: none;
  background-color: #fff;
  /* Display over codemirror */
  position: relative;
  z-index: 100;
}
body > #header #header-container {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  padding: 5px;
  padding-bottom: 5px;
  padding-top: 5px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
body > #header .header-bar {
  width: 100%;
  height: 1px;
  background: #e7e7e7;
  margin-bottom: -1px;
}
@media print {
  body > #header {
    display: none !important;
  }
}
#header-spacer {
  width: 100%;
  visibility: hidden;
}
@media print {
  #header-spacer {
    display: none;
  }
}
#ipython_notebook {
  padding-left: 0px;
  padding-top: 1px;
  padding-bottom: 1px;
}
[dir="rtl"] #ipython_notebook {
  margin-right: 10px;
  margin-left: 0;
}
[dir="rtl"] #ipython_notebook.pull-left {
  float: right !important;
  float: right;
}
.flex-spacer {
  flex: 1;
}
#noscript {
  width: auto;
  padding-top: 16px;
  padding-bottom: 16px;
  text-align: center;
  font-size: 22px;
  color: red;
  font-weight: bold;
}
#ipython_notebook img {
  height: 28px;
}
#site {
  width: 100%;
  display: none;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  overflow: auto;
}
@media print {
  #site {
    height: auto !important;
  }
}
/* Smaller buttons */
.ui-button .ui-button-text {
  padding: 0.2em 0.8em;
  font-size: 77%;
}
input.ui-button {
  padding: 0.3em 0.9em;
}
span#kernel_logo_widget {
  margin: 0 10px;
}
span#login_widget {
  float: right;
}
[dir="rtl"] span#login_widget {
  float: left;
}
span#login_widget > .button,
#logout {
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
span#login_widget > .button:focus,
#logout:focus,
span#login_widget > .button.focus,
#logout.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
span#login_widget > .button:hover,
#logout:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
span#login_widget > .button:active,
#logout:active,
span#login_widget > .button.active,
#logout.active,
.open > .dropdown-togglespan#login_widget > .button,
.open > .dropdown-toggle#logout {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
span#login_widget > .button:active:hover,
#logout:active:hover,
span#login_widget > .button.active:hover,
#logout.active:hover,
.open > .dropdown-togglespan#login_widget > .button:hover,
.open > .dropdown-toggle#logout:hover,
span#login_widget > .button:active:focus,
#logout:active:focus,
span#login_widget > .button.active:focus,
#logout.active:focus,
.open > .dropdown-togglespan#login_widget > .button:focus,
.open > .dropdown-toggle#logout:focus,
span#login_widget > .button:active.focus,
#logout:active.focus,
span#login_widget > .button.active.focus,
#logout.active.focus,
.open > .dropdown-togglespan#login_widget > .button.focus,
.open > .dropdown-toggle#logout.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
span#login_widget > .button:active,
#logout:active,
span#login_widget > .button.active,
#logout.active,
.open > .dropdown-togglespan#login_widget > .button,
.open > .dropdown-toggle#logout {
  background-image: none;
}
span#login_widget > .button.disabled:hover,
#logout.disabled:hover,
span#login_widget > .button[disabled]:hover,
#logout[disabled]:hover,
fieldset[disabled] span#login_widget > .button:hover,
fieldset[disabled] #logout:hover,
span#login_widget > .button.disabled:focus,
#logout.disabled:focus,
span#login_widget > .button[disabled]:focus,
#logout[disabled]:focus,
fieldset[disabled] span#login_widget > .button:focus,
fieldset[disabled] #logout:focus,
span#login_widget > .button.disabled.focus,
#logout.disabled.focus,
span#login_widget > .button[disabled].focus,
#logout[disabled].focus,
fieldset[disabled] span#login_widget > .button.focus,
fieldset[disabled] #logout.focus {
  background-color: #fff;
  border-color: #ccc;
}
span#login_widget > .button .badge,
#logout .badge {
  color: #fff;
  background-color: #333;
}
.nav-header {
  text-transform: none;
}
#header > span {
  margin-top: 10px;
}
.modal_stretch .modal-dialog {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  min-height: 80vh;
}
.modal_stretch .modal-dialog .modal-body {
  max-height: calc(100vh - 200px);
  overflow: auto;
  flex: 1;
}
.modal-header {
  cursor: move;
}
@media (min-width: 768px) {
  .modal .modal-dialog {
    width: 700px;
  }
}
@media (min-width: 768px) {
  select.form-control {
    margin-left: 12px;
    margin-right: 12px;
  }
}
/*!
*
* IPython auth
*
*/
.center-nav {
  display: inline-block;
  margin-bottom: -4px;
}
[dir="rtl"] .center-nav form.pull-left {
  float: right !important;
  float: right;
}
[dir="rtl"] .center-nav .navbar-text {
  float: right;
}
[dir="rtl"] .navbar-inner {
  text-align: right;
}
[dir="rtl"] div.text-left {
  text-align: right;
}
/*!
*
* IPython tree view
*
*/
/* We need an invisible input field on top of the sentense*/
/* "Drag file onto the list ..." */
.alternate_upload {
  background-color: none;
  display: inline;
}
.alternate_upload.form {
  padding: 0;
  margin: 0;
}
.alternate_upload input.fileinput {
  position: absolute;
  display: block;
  width: 100%;
  height: 100%;
  overflow: hidden;
  cursor: pointer;
  opacity: 0;
  z-index: 2;
}
.alternate_upload .btn-xs > input.fileinput {
  margin: -1px -5px;
}
.alternate_upload .btn-upload {
  position: relative;
  height: 22px;
}
::-webkit-file-upload-button {
  cursor: pointer;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
ul#tabs {
  margin-bottom: 4px;
}
ul#tabs a {
  padding-top: 6px;
  padding-bottom: 4px;
}
[dir="rtl"] ul#tabs.nav-tabs > li {
  float: right;
}
[dir="rtl"] ul#tabs.nav.nav-tabs {
  padding-right: 0;
}
ul.breadcrumb a:focus,
ul.breadcrumb a:hover {
  text-decoration: none;
}
ul.breadcrumb i.icon-home {
  font-size: 16px;
  margin-right: 4px;
}
ul.breadcrumb span {
  color: #5e5e5e;
}
.list_toolbar {
  padding: 4px 0 4px 0;
  vertical-align: middle;
}
.list_toolbar .tree-buttons {
  padding-top: 1px;
}
[dir="rtl"] .list_toolbar .tree-buttons .pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .list_toolbar .col-sm-4,
[dir="rtl"] .list_toolbar .col-sm-8 {
  float: right;
}
.dynamic-buttons {
  padding-top: 3px;
  display: inline-block;
}
.list_toolbar [class*="span"] {
  min-height: 24px;
}
.list_header {
  font-weight: bold;
  background-color: #EEE;
}
.list_placeholder {
  font-weight: bold;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
}
.list_container {
  margin-top: 4px;
  margin-bottom: 20px;
  border: 1px solid #ddd;
  border-radius: 2px;
}
.list_container > div {
  border-bottom: 1px solid #ddd;
}
.list_container > div:hover .list-item {
  background-color: red;
}
.list_container > div:last-child {
  border: none;
}
.list_item:hover .list_item {
  background-color: #ddd;
}
.list_item a {
  text-decoration: none;
}
.list_item:hover {
  background-color: #fafafa;
}
.list_header > div,
.list_item > div {
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
  line-height: 22px;
}
.list_header > div input,
.list_item > div input {
  margin-right: 7px;
  margin-left: 14px;
  vertical-align: text-bottom;
  line-height: 22px;
  position: relative;
  top: -1px;
}
.list_header > div .item_link,
.list_item > div .item_link {
  margin-left: -1px;
  vertical-align: baseline;
  line-height: 22px;
}
[dir="rtl"] .list_item > div input {
  margin-right: 0;
}
.new-file input[type=checkbox] {
  visibility: hidden;
}
.item_name {
  line-height: 22px;
  height: 24px;
}
.item_icon {
  font-size: 14px;
  color: #5e5e5e;
  margin-right: 7px;
  margin-left: 7px;
  line-height: 22px;
  vertical-align: baseline;
}
.item_modified {
  margin-right: 7px;
  margin-left: 7px;
}
[dir="rtl"] .item_modified.pull-right {
  float: left !important;
  float: left;
}
.item_buttons {
  line-height: 1em;
  margin-left: -5px;
}
.item_buttons .btn,
.item_buttons .btn-group,
.item_buttons .input-group {
  float: left;
}
.item_buttons > .btn,
.item_buttons > .btn-group,
.item_buttons > .input-group {
  margin-left: 5px;
}
.item_buttons .btn {
  min-width: 13ex;
}
.item_buttons .running-indicator {
  padding-top: 4px;
  color: #5cb85c;
}
.item_buttons .kernel-name {
  padding-top: 4px;
  color: #5bc0de;
  margin-right: 7px;
  float: left;
}
[dir="rtl"] .item_buttons.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .item_buttons .kernel-name {
  margin-left: 7px;
  float: right;
}
.toolbar_info {
  height: 24px;
  line-height: 24px;
}
.list_item input:not([type=checkbox]) {
  padding-top: 3px;
  padding-bottom: 3px;
  height: 22px;
  line-height: 14px;
  margin: 0px;
}
.highlight_text {
  color: blue;
}
#project_name {
  display: inline-block;
  padding-left: 7px;
  margin-left: -2px;
}
#project_name > .breadcrumb {
  padding: 0px;
  margin-bottom: 0px;
  background-color: transparent;
  font-weight: bold;
}
.sort_button {
  display: inline-block;
  padding-left: 7px;
}
[dir="rtl"] .sort_button.pull-right {
  float: left !important;
  float: left;
}
#tree-selector {
  padding-right: 0px;
}
#button-select-all {
  min-width: 50px;
}
[dir="rtl"] #button-select-all.btn {
  float: right ;
}
#select-all {
  margin-left: 7px;
  margin-right: 2px;
  margin-top: 2px;
  height: 16px;
}
[dir="rtl"] #select-all.pull-left {
  float: right !important;
  float: right;
}
.menu_icon {
  margin-right: 2px;
}
.tab-content .row {
  margin-left: 0px;
  margin-right: 0px;
}
.folder_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f114";
}
.folder_icon:before.fa-pull-left {
  margin-right: .3em;
}
.folder_icon:before.fa-pull-right {
  margin-left: .3em;
}
.folder_icon:before.pull-left {
  margin-right: .3em;
}
.folder_icon:before.pull-right {
  margin-left: .3em;
}
.notebook_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f02d";
  position: relative;
  top: -1px;
}
.notebook_icon:before.fa-pull-left {
  margin-right: .3em;
}
.notebook_icon:before.fa-pull-right {
  margin-left: .3em;
}
.notebook_icon:before.pull-left {
  margin-right: .3em;
}
.notebook_icon:before.pull-right {
  margin-left: .3em;
}
.running_notebook_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f02d";
  position: relative;
  top: -1px;
  color: #5cb85c;
}
.running_notebook_icon:before.fa-pull-left {
  margin-right: .3em;
}
.running_notebook_icon:before.fa-pull-right {
  margin-left: .3em;
}
.running_notebook_icon:before.pull-left {
  margin-right: .3em;
}
.running_notebook_icon:before.pull-right {
  margin-left: .3em;
}
.file_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f016";
  position: relative;
  top: -2px;
}
.file_icon:before.fa-pull-left {
  margin-right: .3em;
}
.file_icon:before.fa-pull-right {
  margin-left: .3em;
}
.file_icon:before.pull-left {
  margin-right: .3em;
}
.file_icon:before.pull-right {
  margin-left: .3em;
}
#notebook_toolbar .pull-right {
  padding-top: 0px;
  margin-right: -1px;
}
ul#new-menu {
  left: auto;
  right: 0;
}
#new-menu .dropdown-header {
  font-size: 10px;
  border-bottom: 1px solid #e5e5e5;
  padding: 0 0 3px;
  margin: -3px 20px 0;
}
.kernel-menu-icon {
  padding-right: 12px;
  width: 24px;
  content: "\f096";
}
.kernel-menu-icon:before {
  content: "\f096";
}
.kernel-menu-icon-current:before {
  content: "\f00c";
}
#tab_content {
  padding-top: 20px;
}
#running .panel-group .panel {
  margin-top: 3px;
  margin-bottom: 1em;
}
#running .panel-group .panel .panel-heading {
  background-color: #EEE;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 7px;
  padding-right: 7px;
  line-height: 22px;
}
#running .panel-group .panel .panel-heading a:focus,
#running .panel-group .panel .panel-heading a:hover {
  text-decoration: none;
}
#running .panel-group .panel .panel-body {
  padding: 0px;
}
#running .panel-group .panel .panel-body .list_container {
  margin-top: 0px;
  margin-bottom: 0px;
  border: 0px;
  border-radius: 0px;
}
#running .panel-group .panel .panel-body .list_container .list_item {
  border-bottom: 1px solid #ddd;
}
#running .panel-group .panel .panel-body .list_container .list_item:last-child {
  border-bottom: 0px;
}
.delete-button {
  display: none;
}
.duplicate-button {
  display: none;
}
.rename-button {
  display: none;
}
.move-button {
  display: none;
}
.download-button {
  display: none;
}
.shutdown-button {
  display: none;
}
.dynamic-instructions {
  display: inline-block;
  padding-top: 4px;
}
/*!
*
* IPython text editor webapp
*
*/
.selected-keymap i.fa {
  padding: 0px 5px;
}
.selected-keymap i.fa:before {
  content: "\f00c";
}
#mode-menu {
  overflow: auto;
  max-height: 20em;
}
.edit_app #header {
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
.edit_app #menubar .navbar {
  /* Use a negative 1 bottom margin, so the border overlaps the border of the
    header */
  margin-bottom: -1px;
}
.dirty-indicator {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator.pull-left {
  margin-right: .3em;
}
.dirty-indicator.pull-right {
  margin-left: .3em;
}
.dirty-indicator-dirty {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator-dirty.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-dirty.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-dirty.pull-left {
  margin-right: .3em;
}
.dirty-indicator-dirty.pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  width: 20px;
}
.dirty-indicator-clean.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean.pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean.pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f00c";
}
.dirty-indicator-clean:before.fa-pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean:before.fa-pull-right {
  margin-left: .3em;
}
.dirty-indicator-clean:before.pull-left {
  margin-right: .3em;
}
.dirty-indicator-clean:before.pull-right {
  margin-left: .3em;
}
#filename {
  font-size: 16pt;
  display: table;
  padding: 0px 5px;
}
#current-mode {
  padding-left: 5px;
  padding-right: 5px;
}
#texteditor-backdrop {
  padding-top: 20px;
  padding-bottom: 20px;
}
@media not print {
  #texteditor-backdrop {
    background-color: #EEE;
  }
}
@media print {
  #texteditor-backdrop #texteditor-container .CodeMirror-gutter,
  #texteditor-backdrop #texteditor-container .CodeMirror-gutters {
    background-color: #fff;
  }
}
@media not print {
  #texteditor-backdrop #texteditor-container .CodeMirror-gutter,
  #texteditor-backdrop #texteditor-container .CodeMirror-gutters {
    background-color: #fff;
  }
}
@media not print {
  #texteditor-backdrop #texteditor-container {
    padding: 0px;
    background-color: #fff;
    -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
    box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  }
}
.CodeMirror-dialog {
  background-color: #fff;
}
/*!
*
* IPython notebook
*
*/
/* CSS font colors for translated ANSI escape sequences */
/* The color values are a mix of
   http://www.xcolors.net/dl/baskerville-ivorylight and
   http://www.xcolors.net/dl/euphrasia */
.ansi-black-fg {
  color: #3E424D;
}
.ansi-black-bg {
  background-color: #3E424D;
}
.ansi-black-intense-fg {
  color: #282C36;
}
.ansi-black-intense-bg {
  background-color: #282C36;
}
.ansi-red-fg {
  color: #E75C58;
}
.ansi-red-bg {
  background-color: #E75C58;
}
.ansi-red-intense-fg {
  color: #B22B31;
}
.ansi-red-intense-bg {
  background-color: #B22B31;
}
.ansi-green-fg {
  color: #00A250;
}
.ansi-green-bg {
  background-color: #00A250;
}
.ansi-green-intense-fg {
  color: #007427;
}
.ansi-green-intense-bg {
  background-color: #007427;
}
.ansi-yellow-fg {
  color: #DDB62B;
}
.ansi-yellow-bg {
  background-color: #DDB62B;
}
.ansi-yellow-intense-fg {
  color: #B27D12;
}
.ansi-yellow-intense-bg {
  background-color: #B27D12;
}
.ansi-blue-fg {
  color: #208FFB;
}
.ansi-blue-bg {
  background-color: #208FFB;
}
.ansi-blue-intense-fg {
  color: #0065CA;
}
.ansi-blue-intense-bg {
  background-color: #0065CA;
}
.ansi-magenta-fg {
  color: #D160C4;
}
.ansi-magenta-bg {
  background-color: #D160C4;
}
.ansi-magenta-intense-fg {
  color: #A03196;
}
.ansi-magenta-intense-bg {
  background-color: #A03196;
}
.ansi-cyan-fg {
  color: #60C6C8;
}
.ansi-cyan-bg {
  background-color: #60C6C8;
}
.ansi-cyan-intense-fg {
  color: #258F8F;
}
.ansi-cyan-intense-bg {
  background-color: #258F8F;
}
.ansi-white-fg {
  color: #C5C1B4;
}
.ansi-white-bg {
  background-color: #C5C1B4;
}
.ansi-white-intense-fg {
  color: #A1A6B2;
}
.ansi-white-intense-bg {
  background-color: #A1A6B2;
}
.ansi-default-inverse-fg {
  color: #FFFFFF;
}
.ansi-default-inverse-bg {
  background-color: #000000;
}
.ansi-bold {
  font-weight: bold;
}
.ansi-underline {
  text-decoration: underline;
}
/* The following styles are deprecated an will be removed in a future version */
.ansibold {
  font-weight: bold;
}
.ansi-inverse {
  outline: 0.5px dotted;
}
/* use dark versions for foreground, to improve visibility */
.ansiblack {
  color: black;
}
.ansired {
  color: darkred;
}
.ansigreen {
  color: darkgreen;
}
.ansiyellow {
  color: #c4a000;
}
.ansiblue {
  color: darkblue;
}
.ansipurple {
  color: darkviolet;
}
.ansicyan {
  color: steelblue;
}
.ansigray {
  color: gray;
}
/* and light for background, for the same reason */
.ansibgblack {
  background-color: black;
}
.ansibgred {
  background-color: red;
}
.ansibggreen {
  background-color: green;
}
.ansibgyellow {
  background-color: yellow;
}
.ansibgblue {
  background-color: blue;
}
.ansibgpurple {
  background-color: magenta;
}
.ansibgcyan {
  background-color: cyan;
}
.ansibggray {
  background-color: gray;
}
div.cell {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  border-radius: 2px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  border-width: 1px;
  border-style: solid;
  border-color: transparent;
  width: 100%;
  padding: 5px;
  /* This acts as a spacer between cells, that is outside the border */
  margin: 0px;
  outline: none;
  position: relative;
  overflow: visible;
}
div.cell:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: transparent;
}
div.cell.jupyter-soft-selected {
  border-left-color: #E3F2FD;
  border-left-width: 1px;
  padding-left: 5px;
  border-right-color: #E3F2FD;
  border-right-width: 1px;
  background: #E3F2FD;
}
@media print {
  div.cell.jupyter-soft-selected {
    border-color: transparent;
  }
}
div.cell.selected,
div.cell.selected.jupyter-soft-selected {
  border-color: #ababab;
}
div.cell.selected:before,
div.cell.selected.jupyter-soft-selected:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: #42A5F5;
}
@media print {
  div.cell.selected,
  div.cell.selected.jupyter-soft-selected {
    border-color: transparent;
  }
}
.edit_mode div.cell.selected {
  border-color: #66BB6A;
}
.edit_mode div.cell.selected:before {
  position: absolute;
  display: block;
  top: -1px;
  left: -1px;
  width: 5px;
  height: calc(100% +  2px);
  content: '';
  background: #66BB6A;
}
@media print {
  .edit_mode div.cell.selected {
    border-color: transparent;
  }
}
.prompt {
  /* This needs to be wide enough for 3 digit prompt numbers: In[100]: */
  min-width: 14ex;
  /* This padding is tuned to match the padding on the CodeMirror editor. */
  padding: 0.4em;
  margin: 0px;
  font-family: monospace;
  text-align: right;
  /* This has to match that of the the CodeMirror class line-height below */
  line-height: 1.21429em;
  /* Don't highlight prompt number selection */
  -webkit-touch-callout: none;
  -webkit-user-select: none;
  -khtml-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  /* Use default cursor */
  cursor: default;
}
@media (max-width: 540px) {
  .prompt {
    text-align: left;
  }
}
div.inner_cell {
  min-width: 0;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
/* input_area and input_prompt must match in top border and margin for alignment */
div.input_area {
  border: 1px solid #cfcfcf;
  border-radius: 2px;
  background: #f7f7f7;
  line-height: 1.21429em;
}
/* This is needed so that empty prompt areas can collapse to zero height when there
   is no content in the output_subarea and the prompt. The main purpose of this is
   to make sure that empty JavaScript output_subareas have no height. */
div.prompt:empty {
  padding-top: 0;
  padding-bottom: 0;
}
div.unrecognized_cell {
  padding: 5px 5px 5px 0px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
div.unrecognized_cell .inner_cell {
  border-radius: 2px;
  padding: 5px;
  font-weight: bold;
  color: red;
  border: 1px solid #cfcfcf;
  background: #eaeaea;
}
div.unrecognized_cell .inner_cell a {
  color: inherit;
  text-decoration: none;
}
div.unrecognized_cell .inner_cell a:hover {
  color: inherit;
  text-decoration: none;
}
@media (max-width: 540px) {
  div.unrecognized_cell > div.prompt {
    display: none;
  }
}
div.code_cell {
  /* avoid page breaking on code cells when printing */
}
@media print {
  div.code_cell {
    page-break-inside: avoid;
  }
}
/* any special styling for code cells that are currently running goes here */
div.input {
  page-break-inside: avoid;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.input {
    /* Old browsers */
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-box-align: stretch;
    display: -moz-box;
    -moz-box-orient: vertical;
    -moz-box-align: stretch;
    display: box;
    box-orient: vertical;
    box-align: stretch;
    /* Modern browsers */
    display: flex;
    flex-direction: column;
    align-items: stretch;
  }
}
/* input_area and input_prompt must match in top border and margin for alignment */
div.input_prompt {
  color: #303F9F;
  border-top: 1px solid transparent;
}
div.input_area > div.highlight {
  margin: 0.4em;
  border: none;
  padding: 0px;
  background-color: transparent;
}
div.input_area > div.highlight > pre {
  margin: 0px;
  border: none;
  padding: 0px;
  background-color: transparent;
}
/* The following gets added to the <head> if it is detected that the user has a
 * monospace font with inconsistent normal/bold/italic height.  See
 * notebookmain.js.  Such fonts will have keywords vertically offset with
 * respect to the rest of the text.  The user should select a better font.
 * See: https://github.com/ipython/ipython/issues/1503
 *
 * .CodeMirror span {
 *      vertical-align: bottom;
 * }
 */
.CodeMirror {
  line-height: 1.21429em;
  /* Changed from 1em to our global default */
  font-size: 14px;
  height: auto;
  /* Changed to auto to autogrow */
  background: none;
  /* Changed from white to allow our bg to show through */
}
.CodeMirror-scroll {
  /*  The CodeMirror docs are a bit fuzzy on if overflow-y should be hidden or visible.*/
  /*  We have found that if it is visible, vertical scrollbars appear with font size changes.*/
  overflow-y: hidden;
  overflow-x: auto;
}
.CodeMirror-lines {
  /* In CM2, this used to be 0.4em, but in CM3 it went to 4px. We need the em value because */
  /* we have set a different line-height and want this to scale with that. */
  /* Note that this should set vertical padding only, since CodeMirror assumes
       that horizontal padding will be set on CodeMirror pre */
  padding: 0.4em 0;
}
.CodeMirror-linenumber {
  padding: 0 8px 0 4px;
}
.CodeMirror-gutters {
  border-bottom-left-radius: 2px;
  border-top-left-radius: 2px;
}
.CodeMirror pre {
  /* In CM3 this went to 4px from 0 in CM2. This sets horizontal padding only,
    use .CodeMirror-lines for vertical */
  padding: 0 0.4em;
  border: 0;
  border-radius: 0;
}
.CodeMirror-cursor {
  border-left: 1.4px solid black;
}
@media screen and (min-width: 2138px) and (max-width: 4319px) {
  .CodeMirror-cursor {
    border-left: 2px solid black;
  }
}
@media screen and (min-width: 4320px) {
  .CodeMirror-cursor {
    border-left: 4px solid black;
  }
}
/*

Original style from softwaremaniacs.org (c) Ivan Sagalaev <Maniac@SoftwareManiacs.Org>
Adapted from GitHub theme

*/
.highlight-base {
  color: #000;
}
.highlight-variable {
  color: #000;
}
.highlight-variable-2 {
  color: #1a1a1a;
}
.highlight-variable-3 {
  color: #333333;
}
.highlight-string {
  color: #BA2121;
}
.highlight-comment {
  color: #408080;
  font-style: italic;
}
.highlight-number {
  color: #080;
}
.highlight-atom {
  color: #88F;
}
.highlight-keyword {
  color: #008000;
  font-weight: bold;
}
.highlight-builtin {
  color: #008000;
}
.highlight-error {
  color: #f00;
}
.highlight-operator {
  color: #AA22FF;
  font-weight: bold;
}
.highlight-meta {
  color: #AA22FF;
}
/* previously not defined, copying from default codemirror */
.highlight-def {
  color: #00f;
}
.highlight-string-2 {
  color: #f50;
}
.highlight-qualifier {
  color: #555;
}
.highlight-bracket {
  color: #997;
}
.highlight-tag {
  color: #170;
}
.highlight-attribute {
  color: #00c;
}
.highlight-header {
  color: blue;
}
.highlight-quote {
  color: #090;
}
.highlight-link {
  color: #00c;
}
/* apply the same style to codemirror */
.cm-s-ipython span.cm-keyword {
  color: #008000;
  font-weight: bold;
}
.cm-s-ipython span.cm-atom {
  color: #88F;
}
.cm-s-ipython span.cm-number {
  color: #080;
}
.cm-s-ipython span.cm-def {
  color: #00f;
}
.cm-s-ipython span.cm-variable {
  color: #000;
}
.cm-s-ipython span.cm-operator {
  color: #AA22FF;
  font-weight: bold;
}
.cm-s-ipython span.cm-variable-2 {
  color: #1a1a1a;
}
.cm-s-ipython span.cm-variable-3 {
  color: #333333;
}
.cm-s-ipython span.cm-comment {
  color: #408080;
  font-style: italic;
}
.cm-s-ipython span.cm-string {
  color: #BA2121;
}
.cm-s-ipython span.cm-string-2 {
  color: #f50;
}
.cm-s-ipython span.cm-meta {
  color: #AA22FF;
}
.cm-s-ipython span.cm-qualifier {
  color: #555;
}
.cm-s-ipython span.cm-builtin {
  color: #008000;
}
.cm-s-ipython span.cm-bracket {
  color: #997;
}
.cm-s-ipython span.cm-tag {
  color: #170;
}
.cm-s-ipython span.cm-attribute {
  color: #00c;
}
.cm-s-ipython span.cm-header {
  color: blue;
}
.cm-s-ipython span.cm-quote {
  color: #090;
}
.cm-s-ipython span.cm-link {
  color: #00c;
}
.cm-s-ipython span.cm-error {
  color: #f00;
}
.cm-s-ipython span.cm-tab {
  background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAMCAYAAAAkuj5RAAAAAXNSR0IArs4c6QAAAGFJREFUSMft1LsRQFAQheHPowAKoACx3IgEKtaEHujDjORSgWTH/ZOdnZOcM/sgk/kFFWY0qV8foQwS4MKBCS3qR6ixBJvElOobYAtivseIE120FaowJPN75GMu8j/LfMwNjh4HUpwg4LUAAAAASUVORK5CYII=);
  background-position: right;
  background-repeat: no-repeat;
}
div.output_wrapper {
  /* this position must be relative to enable descendents to be absolute within it */
  position: relative;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
  z-index: 1;
}
/* class for the output area when it should be height-limited */
div.output_scroll {
  /* ideally, this would be max-height, but FF barfs all over that */
  height: 24em;
  /* FF needs this *and the wrapper* to specify full width, or it will shrinkwrap */
  width: 100%;
  overflow: auto;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.8);
  box-shadow: inset 0 2px 8px rgba(0, 0, 0, 0.8);
  display: block;
}
/* output div while it is collapsed */
div.output_collapsed {
  margin: 0px;
  padding: 0px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
div.out_prompt_overlay {
  height: 100%;
  padding: 0px 0.4em;
  position: absolute;
  border-radius: 2px;
}
div.out_prompt_overlay:hover {
  /* use inner shadow to get border that is computed the same on WebKit/FF */
  -webkit-box-shadow: inset 0 0 1px #000;
  box-shadow: inset 0 0 1px #000;
  background: rgba(240, 240, 240, 0.5);
}
div.output_prompt {
  color: #D84315;
}
/* This class is the outer container of all output sections. */
div.output_area {
  padding: 0px;
  page-break-inside: avoid;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
div.output_area .MathJax_Display {
  text-align: left !important;
}
div.output_area .rendered_html table {
  margin-left: 0;
  margin-right: 0;
}
div.output_area .rendered_html img {
  margin-left: 0;
  margin-right: 0;
}
div.output_area img,
div.output_area svg {
  max-width: 100%;
  height: auto;
}
div.output_area img.unconfined,
div.output_area svg.unconfined {
  max-width: none;
}
div.output_area .mglyph > img {
  max-width: none;
}
/* This is needed to protect the pre formating from global settings such
   as that of bootstrap */
.output {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: vertical;
  -moz-box-align: stretch;
  display: box;
  box-orient: vertical;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: column;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.output_area {
    /* Old browsers */
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-box-align: stretch;
    display: -moz-box;
    -moz-box-orient: vertical;
    -moz-box-align: stretch;
    display: box;
    box-orient: vertical;
    box-align: stretch;
    /* Modern browsers */
    display: flex;
    flex-direction: column;
    align-items: stretch;
  }
}
div.output_area pre {
  margin: 0;
  padding: 1px 0 1px 0;
  border: 0;
  vertical-align: baseline;
  color: black;
  background-color: transparent;
  border-radius: 0;
}
/* This class is for the output subarea inside the output_area and after
   the prompt div. */
div.output_subarea {
  overflow-x: auto;
  padding: 0.4em;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
  max-width: calc(100% - 14ex);
}
div.output_scroll div.output_subarea {
  overflow-x: visible;
}
/* The rest of the output_* classes are for special styling of the different
   output types */
/* all text output has this class: */
div.output_text {
  text-align: left;
  color: #000;
  /* This has to match that of the the CodeMirror class line-height below */
  line-height: 1.21429em;
}
/* stdout/stderr are 'text' as well as 'stream', but execute_result/error are *not* streams */
div.output_stderr {
  background: #fdd;
  /* very light red background for stderr */
}
div.output_latex {
  text-align: left;
}
/* Empty output_javascript divs should have no height */
div.output_javascript:empty {
  padding: 0;
}
.js-error {
  color: darkred;
}
/* raw_input styles */
div.raw_input_container {
  line-height: 1.21429em;
  padding-top: 5px;
}
pre.raw_input_prompt {
  /* nothing needed here. */
}
input.raw_input {
  font-family: monospace;
  font-size: inherit;
  color: inherit;
  width: auto;
  /* make sure input baseline aligns with prompt */
  vertical-align: baseline;
  /* padding + margin = 0.5em between prompt and cursor */
  padding: 0em 0.25em;
  margin: 0em 0.25em;
}
input.raw_input:focus {
  box-shadow: none;
}
p.p-space {
  margin-bottom: 10px;
}
div.output_unrecognized {
  padding: 5px;
  font-weight: bold;
  color: red;
}
div.output_unrecognized a {
  color: inherit;
  text-decoration: none;
}
div.output_unrecognized a:hover {
  color: inherit;
  text-decoration: none;
}
.rendered_html {
  color: #000;
  /* any extras will just be numbers: */
}
.rendered_html em {
  font-style: italic;
}
.rendered_html strong {
  font-weight: bold;
}
.rendered_html u {
  text-decoration: underline;
}
.rendered_html :link {
  text-decoration: underline;
}
.rendered_html :visited {
  text-decoration: underline;
}
.rendered_html h1 {
  font-size: 185.7%;
  margin: 1.08em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h2 {
  font-size: 157.1%;
  margin: 1.27em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h3 {
  font-size: 128.6%;
  margin: 1.55em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h4 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
}
.rendered_html h5 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
  font-style: italic;
}
.rendered_html h6 {
  font-size: 100%;
  margin: 2em 0 0 0;
  font-weight: bold;
  line-height: 1.0;
  font-style: italic;
}
.rendered_html h1:first-child {
  margin-top: 0.538em;
}
.rendered_html h2:first-child {
  margin-top: 0.636em;
}
.rendered_html h3:first-child {
  margin-top: 0.777em;
}
.rendered_html h4:first-child {
  margin-top: 1em;
}
.rendered_html h5:first-child {
  margin-top: 1em;
}
.rendered_html h6:first-child {
  margin-top: 1em;
}
.rendered_html ul:not(.list-inline),
.rendered_html ol:not(.list-inline) {
  padding-left: 2em;
}
.rendered_html ul {
  list-style: disc;
}
.rendered_html ul ul {
  list-style: square;
  margin-top: 0;
}
.rendered_html ul ul ul {
  list-style: circle;
}
.rendered_html ol {
  list-style: decimal;
}
.rendered_html ol ol {
  list-style: upper-alpha;
  margin-top: 0;
}
.rendered_html ol ol ol {
  list-style: lower-alpha;
}
.rendered_html ol ol ol ol {
  list-style: lower-roman;
}
.rendered_html ol ol ol ol ol {
  list-style: decimal;
}
.rendered_html * + ul {
  margin-top: 1em;
}
.rendered_html * + ol {
  margin-top: 1em;
}
.rendered_html hr {
  color: black;
  background-color: black;
}
.rendered_html pre {
  margin: 1em 2em;
  padding: 0px;
  background-color: #fff;
}
.rendered_html code {
  background-color: #eff0f1;
}
.rendered_html p code {
  padding: 1px 5px;
}
.rendered_html pre code {
  background-color: #fff;
}
.rendered_html pre,
.rendered_html code {
  border: 0;
  color: #000;
  font-size: 100%;
}
.rendered_html blockquote {
  margin: 1em 2em;
}
.rendered_html table {
  margin-left: auto;
  margin-right: auto;
  border: none;
  border-collapse: collapse;
  border-spacing: 0;
  color: black;
  font-size: 12px;
  table-layout: fixed;
}
.rendered_html thead {
  border-bottom: 1px solid black;
  vertical-align: bottom;
}
.rendered_html tr,
.rendered_html th,
.rendered_html td {
  text-align: right;
  vertical-align: middle;
  padding: 0.5em 0.5em;
  line-height: normal;
  white-space: normal;
  max-width: none;
  border: none;
}
.rendered_html th {
  font-weight: bold;
}
.rendered_html tbody tr:nth-child(odd) {
  background: #f5f5f5;
}
.rendered_html tbody tr:hover {
  background: rgba(66, 165, 245, 0.2);
}
.rendered_html * + table {
  margin-top: 1em;
}
.rendered_html p {
  text-align: left;
}
.rendered_html * + p {
  margin-top: 1em;
}
.rendered_html img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}
.rendered_html * + img {
  margin-top: 1em;
}
.rendered_html img,
.rendered_html svg {
  max-width: 100%;
  height: auto;
}
.rendered_html img.unconfined,
.rendered_html svg.unconfined {
  max-width: none;
}
.rendered_html .alert {
  margin-bottom: initial;
}
.rendered_html * + .alert {
  margin-top: 1em;
}
[dir="rtl"] .rendered_html p {
  text-align: right;
}
div.text_cell {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
}
@media (max-width: 540px) {
  div.text_cell > div.prompt {
    display: none;
  }
}
div.text_cell_render {
  /*font-family: "Helvetica Neue", Arial, Helvetica, Geneva, sans-serif;*/
  outline: none;
  resize: none;
  width: inherit;
  border-style: none;
  padding: 0.5em 0.5em 0.5em 0.4em;
  color: #000;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
a.anchor-link:link {
  text-decoration: none;
  padding: 0px 20px;
  visibility: hidden;
}
h1:hover .anchor-link,
h2:hover .anchor-link,
h3:hover .anchor-link,
h4:hover .anchor-link,
h5:hover .anchor-link,
h6:hover .anchor-link {
  visibility: visible;
}
.text_cell.rendered .input_area {
  display: none;
}
.text_cell.rendered .rendered_html {
  overflow-x: auto;
  overflow-y: hidden;
}
.text_cell.rendered .rendered_html tr,
.text_cell.rendered .rendered_html th,
.text_cell.rendered .rendered_html td {
  max-width: none;
}
.text_cell.unrendered .text_cell_render {
  display: none;
}
.text_cell .dropzone .input_area {
  border: 2px dashed #bababa;
  margin: -1px;
}
.cm-header-1,
.cm-header-2,
.cm-header-3,
.cm-header-4,
.cm-header-5,
.cm-header-6 {
  font-weight: bold;
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
.cm-header-1 {
  font-size: 185.7%;
}
.cm-header-2 {
  font-size: 157.1%;
}
.cm-header-3 {
  font-size: 128.6%;
}
.cm-header-4 {
  font-size: 110%;
}
.cm-header-5 {
  font-size: 100%;
  font-style: italic;
}
.cm-header-6 {
  font-size: 100%;
  font-style: italic;
}
/*!
*
* IPython notebook webapp
*
*/
@media (max-width: 767px) {
  .notebook_app {
    padding-left: 0px;
    padding-right: 0px;
  }
}
#ipython-main-app {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  height: 100%;
}
div#notebook_panel {
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  height: 100%;
}
div#notebook {
  font-size: 14px;
  line-height: 20px;
  overflow-y: hidden;
  overflow-x: auto;
  width: 100%;
  /* This spaces the page away from the edge of the notebook area */
  padding-top: 20px;
  margin: 0px;
  outline: none;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  min-height: 100%;
}
@media not print {
  #notebook-container {
    padding: 15px;
    background-color: #fff;
    min-height: 0;
    -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
    box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  }
}
@media print {
  #notebook-container {
    width: 100%;
  }
}
div.ui-widget-content {
  border: 1px solid #ababab;
  outline: none;
}
pre.dialog {
  background-color: #f7f7f7;
  border: 1px solid #ddd;
  border-radius: 2px;
  padding: 0.4em;
  padding-left: 2em;
}
p.dialog {
  padding: 0.2em;
}
/* Word-wrap output correctly.  This is the CSS3 spelling, though Firefox seems
   to not honor it correctly.  Webkit browsers (Chrome, rekonq, Safari) do.
 */
pre,
code,
kbd,
samp {
  white-space: pre-wrap;
}
#fonttest {
  font-family: monospace;
}
p {
  margin-bottom: 0;
}
.end_space {
  min-height: 100px;
  transition: height .2s ease;
}
.notebook_app > #header {
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
@media not print {
  .notebook_app {
    background-color: #EEE;
  }
}
kbd {
  border-style: solid;
  border-width: 1px;
  box-shadow: none;
  margin: 2px;
  padding-left: 2px;
  padding-right: 2px;
  padding-top: 1px;
  padding-bottom: 1px;
}
.jupyter-keybindings {
  padding: 1px;
  line-height: 24px;
  border-bottom: 1px solid gray;
}
.jupyter-keybindings input {
  margin: 0;
  padding: 0;
  border: none;
}
.jupyter-keybindings i {
  padding: 6px;
}
.well code {
  background-color: #ffffff;
  border-color: #ababab;
  border-width: 1px;
  border-style: solid;
  padding: 2px;
  padding-top: 1px;
  padding-bottom: 1px;
}
/* CSS for the cell toolbar */
.celltoolbar {
  border: thin solid #CFCFCF;
  border-bottom: none;
  background: #EEE;
  border-radius: 2px 2px 0px 0px;
  width: 100%;
  height: 29px;
  padding-right: 4px;
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
  /* Old browsers */
  -webkit-box-pack: end;
  -moz-box-pack: end;
  box-pack: end;
  /* Modern browsers */
  justify-content: flex-end;
  display: -webkit-flex;
}
@media print {
  .celltoolbar {
    display: none;
  }
}
.ctb_hideshow {
  display: none;
  vertical-align: bottom;
}
/* ctb_show is added to the ctb_hideshow div to show the cell toolbar.
   Cell toolbars are only shown when the ctb_global_show class is also set.
*/
.ctb_global_show .ctb_show.ctb_hideshow {
  display: block;
}
.ctb_global_show .ctb_show + .input_area,
.ctb_global_show .ctb_show + div.text_cell_input,
.ctb_global_show .ctb_show ~ div.text_cell_render {
  border-top-right-radius: 0px;
  border-top-left-radius: 0px;
}
.ctb_global_show .ctb_show ~ div.text_cell_render {
  border: 1px solid #cfcfcf;
}
.celltoolbar {
  font-size: 87%;
  padding-top: 3px;
}
.celltoolbar select {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
  width: inherit;
  font-size: inherit;
  height: 22px;
  padding: 0px;
  display: inline-block;
}
.celltoolbar select:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.celltoolbar select::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.celltoolbar select:-ms-input-placeholder {
  color: #999;
}
.celltoolbar select::-webkit-input-placeholder {
  color: #999;
}
.celltoolbar select::-ms-expand {
  border: 0;
  background-color: transparent;
}
.celltoolbar select[disabled],
.celltoolbar select[readonly],
fieldset[disabled] .celltoolbar select {
  background-color: #eeeeee;
  opacity: 1;
}
.celltoolbar select[disabled],
fieldset[disabled] .celltoolbar select {
  cursor: not-allowed;
}
textarea.celltoolbar select {
  height: auto;
}
select.celltoolbar select {
  height: 30px;
  line-height: 30px;
}
textarea.celltoolbar select,
select[multiple].celltoolbar select {
  height: auto;
}
.celltoolbar label {
  margin-left: 5px;
  margin-right: 5px;
}
.tags_button_container {
  width: 100%;
  display: flex;
}
.tag-container {
  display: flex;
  flex-direction: row;
  flex-grow: 1;
  overflow: hidden;
  position: relative;
}
.tag-container > * {
  margin: 0 4px;
}
.remove-tag-btn {
  margin-left: 4px;
}
.tags-input {
  display: flex;
}
.cell-tag:last-child:after {
  content: "";
  position: absolute;
  right: 0;
  width: 40px;
  height: 100%;
  /* Fade to background color of cell toolbar */
  background: linear-gradient(to right, rgba(0, 0, 0, 0), #EEE);
}
.tags-input > * {
  margin-left: 4px;
}
.cell-tag,
.tags-input input,
.tags-input button {
  display: block;
  width: 100%;
  height: 32px;
  padding: 6px 12px;
  font-size: 13px;
  line-height: 1.42857143;
  color: #555555;
  background-color: #fff;
  background-image: none;
  border: 1px solid #ccc;
  border-radius: 2px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
  -webkit-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
  height: 30px;
  padding: 5px 10px;
  font-size: 12px;
  line-height: 1.5;
  border-radius: 1px;
  box-shadow: none;
  width: inherit;
  font-size: inherit;
  height: 22px;
  line-height: 22px;
  padding: 0px 4px;
  display: inline-block;
}
.cell-tag:focus,
.tags-input input:focus,
.tags-input button:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
  box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);
}
.cell-tag::-moz-placeholder,
.tags-input input::-moz-placeholder,
.tags-input button::-moz-placeholder {
  color: #999;
  opacity: 1;
}
.cell-tag:-ms-input-placeholder,
.tags-input input:-ms-input-placeholder,
.tags-input button:-ms-input-placeholder {
  color: #999;
}
.cell-tag::-webkit-input-placeholder,
.tags-input input::-webkit-input-placeholder,
.tags-input button::-webkit-input-placeholder {
  color: #999;
}
.cell-tag::-ms-expand,
.tags-input input::-ms-expand,
.tags-input button::-ms-expand {
  border: 0;
  background-color: transparent;
}
.cell-tag[disabled],
.tags-input input[disabled],
.tags-input button[disabled],
.cell-tag[readonly],
.tags-input input[readonly],
.tags-input button[readonly],
fieldset[disabled] .cell-tag,
fieldset[disabled] .tags-input input,
fieldset[disabled] .tags-input button {
  background-color: #eeeeee;
  opacity: 1;
}
.cell-tag[disabled],
.tags-input input[disabled],
.tags-input button[disabled],
fieldset[disabled] .cell-tag,
fieldset[disabled] .tags-input input,
fieldset[disabled] .tags-input button {
  cursor: not-allowed;
}
textarea.cell-tag,
textarea.tags-input input,
textarea.tags-input button {
  height: auto;
}
select.cell-tag,
select.tags-input input,
select.tags-input button {
  height: 30px;
  line-height: 30px;
}
textarea.cell-tag,
textarea.tags-input input,
textarea.tags-input button,
select[multiple].cell-tag,
select[multiple].tags-input input,
select[multiple].tags-input button {
  height: auto;
}
.cell-tag,
.tags-input button {
  padding: 0px 4px;
}
.cell-tag {
  background-color: #fff;
  white-space: nowrap;
}
.tags-input input[type=text]:focus {
  outline: none;
  box-shadow: none;
  border-color: #ccc;
}
.completions {
  position: absolute;
  z-index: 110;
  overflow: hidden;
  border: 1px solid #ababab;
  border-radius: 2px;
  -webkit-box-shadow: 0px 6px 10px -1px #adadad;
  box-shadow: 0px 6px 10px -1px #adadad;
  line-height: 1;
}
.completions select {
  background: white;
  outline: none;
  border: none;
  padding: 0px;
  margin: 0px;
  overflow: auto;
  font-family: monospace;
  font-size: 110%;
  color: #000;
  width: auto;
}
.completions select option.context {
  color: #286090;
}
#kernel_logo_widget .current_kernel_logo {
  display: none;
  margin-top: -1px;
  margin-bottom: -1px;
  width: 32px;
  height: 32px;
}
[dir="rtl"] #kernel_logo_widget {
  float: left !important;
  float: left;
}
.modal .modal-body .move-path {
  display: flex;
  flex-direction: row;
  justify-content: space;
  align-items: center;
}
.modal .modal-body .move-path .server-root {
  padding-right: 20px;
}
.modal .modal-body .move-path .path-input {
  flex: 1;
}
#menubar {
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
  margin-top: 1px;
}
#menubar .navbar {
  border-top: 1px;
  border-radius: 0px 0px 2px 2px;
  margin-bottom: 0px;
}
#menubar .navbar-toggle {
  float: left;
  padding-top: 7px;
  padding-bottom: 7px;
  border: none;
}
#menubar .navbar-collapse {
  clear: left;
}
[dir="rtl"] #menubar .navbar-toggle {
  float: right;
}
[dir="rtl"] #menubar .navbar-collapse {
  clear: right;
}
[dir="rtl"] #menubar .navbar-nav {
  float: right;
}
[dir="rtl"] #menubar .nav {
  padding-right: 0px;
}
[dir="rtl"] #menubar .navbar-nav > li {
  float: right;
}
[dir="rtl"] #menubar .navbar-right {
  float: left !important;
}
[dir="rtl"] ul.dropdown-menu {
  text-align: right;
  left: auto;
}
[dir="rtl"] ul#new-menu.dropdown-menu {
  right: auto;
  left: 0;
}
.nav-wrapper {
  border-bottom: 1px solid #e7e7e7;
}
i.menu-icon {
  padding-top: 4px;
}
[dir="rtl"] i.menu-icon.pull-right {
  float: left !important;
  float: left;
}
ul#help_menu li a {
  overflow: hidden;
  padding-right: 2.2em;
}
ul#help_menu li a i {
  margin-right: -1.2em;
}
[dir="rtl"] ul#help_menu li a {
  padding-left: 2.2em;
}
[dir="rtl"] ul#help_menu li a i {
  margin-right: 0;
  margin-left: -1.2em;
}
[dir="rtl"] ul#help_menu li a i.pull-right {
  float: left !important;
  float: left;
}
.dropdown-submenu {
  position: relative;
}
.dropdown-submenu > .dropdown-menu {
  top: 0;
  left: 100%;
  margin-top: -6px;
  margin-left: -1px;
}
[dir="rtl"] .dropdown-submenu > .dropdown-menu {
  right: 100%;
  margin-right: -1px;
}
.dropdown-submenu:hover > .dropdown-menu {
  display: block;
}
.dropdown-submenu > a:after {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  display: block;
  content: "\f0da";
  float: right;
  color: #333333;
  margin-top: 2px;
  margin-right: -10px;
}
.dropdown-submenu > a:after.fa-pull-left {
  margin-right: .3em;
}
.dropdown-submenu > a:after.fa-pull-right {
  margin-left: .3em;
}
.dropdown-submenu > a:after.pull-left {
  margin-right: .3em;
}
.dropdown-submenu > a:after.pull-right {
  margin-left: .3em;
}
[dir="rtl"] .dropdown-submenu > a:after {
  float: left;
  content: "\f0d9";
  margin-right: 0;
  margin-left: -10px;
}
.dropdown-submenu:hover > a:after {
  color: #262626;
}
.dropdown-submenu.pull-left {
  float: none;
}
.dropdown-submenu.pull-left > .dropdown-menu {
  left: -100%;
  margin-left: 10px;
}
#notification_area {
  float: right !important;
  float: right;
  z-index: 10;
}
[dir="rtl"] #notification_area {
  float: left !important;
  float: left;
}
.indicator_area {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
}
[dir="rtl"] .indicator_area {
  float: left !important;
  float: left;
}
#kernel_indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
  border-left: 1px solid;
}
#kernel_indicator .kernel_indicator_name {
  padding-left: 5px;
  padding-right: 5px;
}
[dir="rtl"] #kernel_indicator {
  float: left !important;
  float: left;
  border-left: 0;
  border-right: 1px solid;
}
#modal_indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
}
[dir="rtl"] #modal_indicator {
  float: left !important;
  float: left;
}
#readonly-indicator {
  float: right !important;
  float: right;
  color: #777;
  margin-left: 5px;
  margin-right: 5px;
  width: 11px;
  z-index: 10;
  text-align: center;
  width: auto;
  margin-top: 2px;
  margin-bottom: 0px;
  margin-left: 0px;
  margin-right: 0px;
  display: none;
}
.modal_indicator:before {
  width: 1.28571429em;
  text-align: center;
}
.edit_mode .modal_indicator:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f040";
}
.edit_mode .modal_indicator:before.fa-pull-left {
  margin-right: .3em;
}
.edit_mode .modal_indicator:before.fa-pull-right {
  margin-left: .3em;
}
.edit_mode .modal_indicator:before.pull-left {
  margin-right: .3em;
}
.edit_mode .modal_indicator:before.pull-right {
  margin-left: .3em;
}
.command_mode .modal_indicator:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: ' ';
}
.command_mode .modal_indicator:before.fa-pull-left {
  margin-right: .3em;
}
.command_mode .modal_indicator:before.fa-pull-right {
  margin-left: .3em;
}
.command_mode .modal_indicator:before.pull-left {
  margin-right: .3em;
}
.command_mode .modal_indicator:before.pull-right {
  margin-left: .3em;
}
.kernel_idle_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f10c";
}
.kernel_idle_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_idle_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_idle_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_idle_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_busy_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f111";
}
.kernel_busy_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_busy_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_busy_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_busy_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_dead_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f1e2";
}
.kernel_dead_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_dead_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_dead_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_dead_icon:before.pull-right {
  margin-left: .3em;
}
.kernel_disconnected_icon:before {
  display: inline-block;
  font: normal normal normal 14px/1 FontAwesome;
  font-size: inherit;
  text-rendering: auto;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  content: "\f127";
}
.kernel_disconnected_icon:before.fa-pull-left {
  margin-right: .3em;
}
.kernel_disconnected_icon:before.fa-pull-right {
  margin-left: .3em;
}
.kernel_disconnected_icon:before.pull-left {
  margin-right: .3em;
}
.kernel_disconnected_icon:before.pull-right {
  margin-left: .3em;
}
.notification_widget {
  color: #777;
  z-index: 10;
  background: rgba(240, 240, 240, 0.5);
  margin-right: 4px;
  color: #333;
  background-color: #fff;
  border-color: #ccc;
}
.notification_widget:focus,
.notification_widget.focus {
  color: #333;
  background-color: #e6e6e6;
  border-color: #8c8c8c;
}
.notification_widget:hover {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.notification_widget:active,
.notification_widget.active,
.open > .dropdown-toggle.notification_widget {
  color: #333;
  background-color: #e6e6e6;
  border-color: #adadad;
}
.notification_widget:active:hover,
.notification_widget.active:hover,
.open > .dropdown-toggle.notification_widget:hover,
.notification_widget:active:focus,
.notification_widget.active:focus,
.open > .dropdown-toggle.notification_widget:focus,
.notification_widget:active.focus,
.notification_widget.active.focus,
.open > .dropdown-toggle.notification_widget.focus {
  color: #333;
  background-color: #d4d4d4;
  border-color: #8c8c8c;
}
.notification_widget:active,
.notification_widget.active,
.open > .dropdown-toggle.notification_widget {
  background-image: none;
}
.notification_widget.disabled:hover,
.notification_widget[disabled]:hover,
fieldset[disabled] .notification_widget:hover,
.notification_widget.disabled:focus,
.notification_widget[disabled]:focus,
fieldset[disabled] .notification_widget:focus,
.notification_widget.disabled.focus,
.notification_widget[disabled].focus,
fieldset[disabled] .notification_widget.focus {
  background-color: #fff;
  border-color: #ccc;
}
.notification_widget .badge {
  color: #fff;
  background-color: #333;
}
.notification_widget.warning {
  color: #fff;
  background-color: #f0ad4e;
  border-color: #eea236;
}
.notification_widget.warning:focus,
.notification_widget.warning.focus {
  color: #fff;
  background-color: #ec971f;
  border-color: #985f0d;
}
.notification_widget.warning:hover {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.notification_widget.warning:active,
.notification_widget.warning.active,
.open > .dropdown-toggle.notification_widget.warning {
  color: #fff;
  background-color: #ec971f;
  border-color: #d58512;
}
.notification_widget.warning:active:hover,
.notification_widget.warning.active:hover,
.open > .dropdown-toggle.notification_widget.warning:hover,
.notification_widget.warning:active:focus,
.notification_widget.warning.active:focus,
.open > .dropdown-toggle.notification_widget.warning:focus,
.notification_widget.warning:active.focus,
.notification_widget.warning.active.focus,
.open > .dropdown-toggle.notification_widget.warning.focus {
  color: #fff;
  background-color: #d58512;
  border-color: #985f0d;
}
.notification_widget.warning:active,
.notification_widget.warning.active,
.open > .dropdown-toggle.notification_widget.warning {
  background-image: none;
}
.notification_widget.warning.disabled:hover,
.notification_widget.warning[disabled]:hover,
fieldset[disabled] .notification_widget.warning:hover,
.notification_widget.warning.disabled:focus,
.notification_widget.warning[disabled]:focus,
fieldset[disabled] .notification_widget.warning:focus,
.notification_widget.warning.disabled.focus,
.notification_widget.warning[disabled].focus,
fieldset[disabled] .notification_widget.warning.focus {
  background-color: #f0ad4e;
  border-color: #eea236;
}
.notification_widget.warning .badge {
  color: #f0ad4e;
  background-color: #fff;
}
.notification_widget.success {
  color: #fff;
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.notification_widget.success:focus,
.notification_widget.success.focus {
  color: #fff;
  background-color: #449d44;
  border-color: #255625;
}
.notification_widget.success:hover {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.notification_widget.success:active,
.notification_widget.success.active,
.open > .dropdown-toggle.notification_widget.success {
  color: #fff;
  background-color: #449d44;
  border-color: #398439;
}
.notification_widget.success:active:hover,
.notification_widget.success.active:hover,
.open > .dropdown-toggle.notification_widget.success:hover,
.notification_widget.success:active:focus,
.notification_widget.success.active:focus,
.open > .dropdown-toggle.notification_widget.success:focus,
.notification_widget.success:active.focus,
.notification_widget.success.active.focus,
.open > .dropdown-toggle.notification_widget.success.focus {
  color: #fff;
  background-color: #398439;
  border-color: #255625;
}
.notification_widget.success:active,
.notification_widget.success.active,
.open > .dropdown-toggle.notification_widget.success {
  background-image: none;
}
.notification_widget.success.disabled:hover,
.notification_widget.success[disabled]:hover,
fieldset[disabled] .notification_widget.success:hover,
.notification_widget.success.disabled:focus,
.notification_widget.success[disabled]:focus,
fieldset[disabled] .notification_widget.success:focus,
.notification_widget.success.disabled.focus,
.notification_widget.success[disabled].focus,
fieldset[disabled] .notification_widget.success.focus {
  background-color: #5cb85c;
  border-color: #4cae4c;
}
.notification_widget.success .badge {
  color: #5cb85c;
  background-color: #fff;
}
.notification_widget.info {
  color: #fff;
  background-color: #5bc0de;
  border-color: #46b8da;
}
.notification_widget.info:focus,
.notification_widget.info.focus {
  color: #fff;
  background-color: #31b0d5;
  border-color: #1b6d85;
}
.notification_widget.info:hover {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.notification_widget.info:active,
.notification_widget.info.active,
.open > .dropdown-toggle.notification_widget.info {
  color: #fff;
  background-color: #31b0d5;
  border-color: #269abc;
}
.notification_widget.info:active:hover,
.notification_widget.info.active:hover,
.open > .dropdown-toggle.notification_widget.info:hover,
.notification_widget.info:active:focus,
.notification_widget.info.active:focus,
.open > .dropdown-toggle.notification_widget.info:focus,
.notification_widget.info:active.focus,
.notification_widget.info.active.focus,
.open > .dropdown-toggle.notification_widget.info.focus {
  color: #fff;
  background-color: #269abc;
  border-color: #1b6d85;
}
.notification_widget.info:active,
.notification_widget.info.active,
.open > .dropdown-toggle.notification_widget.info {
  background-image: none;
}
.notification_widget.info.disabled:hover,
.notification_widget.info[disabled]:hover,
fieldset[disabled] .notification_widget.info:hover,
.notification_widget.info.disabled:focus,
.notification_widget.info[disabled]:focus,
fieldset[disabled] .notification_widget.info:focus,
.notification_widget.info.disabled.focus,
.notification_widget.info[disabled].focus,
fieldset[disabled] .notification_widget.info.focus {
  background-color: #5bc0de;
  border-color: #46b8da;
}
.notification_widget.info .badge {
  color: #5bc0de;
  background-color: #fff;
}
.notification_widget.danger {
  color: #fff;
  background-color: #d9534f;
  border-color: #d43f3a;
}
.notification_widget.danger:focus,
.notification_widget.danger.focus {
  color: #fff;
  background-color: #c9302c;
  border-color: #761c19;
}
.notification_widget.danger:hover {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.notification_widget.danger:active,
.notification_widget.danger.active,
.open > .dropdown-toggle.notification_widget.danger {
  color: #fff;
  background-color: #c9302c;
  border-color: #ac2925;
}
.notification_widget.danger:active:hover,
.notification_widget.danger.active:hover,
.open > .dropdown-toggle.notification_widget.danger:hover,
.notification_widget.danger:active:focus,
.notification_widget.danger.active:focus,
.open > .dropdown-toggle.notification_widget.danger:focus,
.notification_widget.danger:active.focus,
.notification_widget.danger.active.focus,
.open > .dropdown-toggle.notification_widget.danger.focus {
  color: #fff;
  background-color: #ac2925;
  border-color: #761c19;
}
.notification_widget.danger:active,
.notification_widget.danger.active,
.open > .dropdown-toggle.notification_widget.danger {
  background-image: none;
}
.notification_widget.danger.disabled:hover,
.notification_widget.danger[disabled]:hover,
fieldset[disabled] .notification_widget.danger:hover,
.notification_widget.danger.disabled:focus,
.notification_widget.danger[disabled]:focus,
fieldset[disabled] .notification_widget.danger:focus,
.notification_widget.danger.disabled.focus,
.notification_widget.danger[disabled].focus,
fieldset[disabled] .notification_widget.danger.focus {
  background-color: #d9534f;
  border-color: #d43f3a;
}
.notification_widget.danger .badge {
  color: #d9534f;
  background-color: #fff;
}
div#pager {
  background-color: #fff;
  font-size: 14px;
  line-height: 20px;
  overflow: hidden;
  display: none;
  position: fixed;
  bottom: 0px;
  width: 100%;
  max-height: 50%;
  padding-top: 8px;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  /* Display over codemirror */
  z-index: 100;
  /* Hack which prevents jquery ui resizable from changing top. */
  top: auto !important;
}
div#pager pre {
  line-height: 1.21429em;
  color: #000;
  background-color: #f7f7f7;
  padding: 0.4em;
}
div#pager #pager-button-area {
  position: absolute;
  top: 8px;
  right: 20px;
}
div#pager #pager-contents {
  position: relative;
  overflow: auto;
  width: 100%;
  height: 100%;
}
div#pager #pager-contents #pager-container {
  position: relative;
  padding: 15px 0px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
div#pager .ui-resizable-handle {
  top: 0px;
  height: 8px;
  background: #f7f7f7;
  border-top: 1px solid #cfcfcf;
  border-bottom: 1px solid #cfcfcf;
  /* This injects handle bars (a short, wide = symbol) for 
        the resize handle. */
}
div#pager .ui-resizable-handle::after {
  content: '';
  top: 2px;
  left: 50%;
  height: 3px;
  width: 30px;
  margin-left: -15px;
  position: absolute;
  border-top: 1px solid #cfcfcf;
}
.quickhelp {
  /* Old browsers */
  display: -webkit-box;
  -webkit-box-orient: horizontal;
  -webkit-box-align: stretch;
  display: -moz-box;
  -moz-box-orient: horizontal;
  -moz-box-align: stretch;
  display: box;
  box-orient: horizontal;
  box-align: stretch;
  /* Modern browsers */
  display: flex;
  flex-direction: row;
  align-items: stretch;
  line-height: 1.8em;
}
.shortcut_key {
  display: inline-block;
  width: 21ex;
  text-align: right;
  font-family: monospace;
}
.shortcut_descr {
  display: inline-block;
  /* Old browsers */
  -webkit-box-flex: 1;
  -moz-box-flex: 1;
  box-flex: 1;
  /* Modern browsers */
  flex: 1;
}
span.save_widget {
  height: 30px;
  margin-top: 4px;
  display: flex;
  justify-content: flex-start;
  align-items: baseline;
  width: 50%;
  flex: 1;
}
span.save_widget span.filename {
  height: 100%;
  line-height: 1em;
  margin-left: 16px;
  border: none;
  font-size: 146.5%;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  border-radius: 2px;
}
span.save_widget span.filename:hover {
  background-color: #e6e6e6;
}
[dir="rtl"] span.save_widget.pull-left {
  float: right !important;
  float: right;
}
[dir="rtl"] span.save_widget span.filename {
  margin-left: 0;
  margin-right: 16px;
}
span.checkpoint_status,
span.autosave_status {
  font-size: small;
  white-space: nowrap;
  padding: 0 5px;
}
@media (max-width: 767px) {
  span.save_widget {
    font-size: small;
    padding: 0 0 0 5px;
  }
  span.checkpoint_status,
  span.autosave_status {
    display: none;
  }
}
@media (min-width: 768px) and (max-width: 991px) {
  span.checkpoint_status {
    display: none;
  }
  span.autosave_status {
    font-size: x-small;
  }
}
.toolbar {
  padding: 0px;
  margin-left: -5px;
  margin-top: 2px;
  margin-bottom: 5px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-box-sizing: border-box;
}
.toolbar select,
.toolbar label {
  width: auto;
  vertical-align: middle;
  margin-right: 2px;
  margin-bottom: 0px;
  display: inline;
  font-size: 92%;
  margin-left: 0.3em;
  margin-right: 0.3em;
  padding: 0px;
  padding-top: 3px;
}
.toolbar .btn {
  padding: 2px 8px;
}
.toolbar .btn-group {
  margin-top: 0px;
  margin-left: 5px;
}
.toolbar-btn-label {
  margin-left: 6px;
}
#maintoolbar {
  margin-bottom: -3px;
  margin-top: -8px;
  border: 0px;
  min-height: 27px;
  margin-left: 0px;
  padding-top: 11px;
  padding-bottom: 3px;
}
#maintoolbar .navbar-text {
  float: none;
  vertical-align: middle;
  text-align: right;
  margin-left: 5px;
  margin-right: 0px;
  margin-top: 0px;
}
.select-xs {
  height: 24px;
}
[dir="rtl"] .btn-group > .btn,
.btn-group-vertical > .btn {
  float: right;
}
.pulse,
.dropdown-menu > li > a.pulse,
li.pulse > a.dropdown-toggle,
li.pulse.open > a.dropdown-toggle {
  background-color: #F37626;
  color: white;
}
/**
 * Primary styles
 *
 * Author: Jupyter Development Team
 */
/** WARNING IF YOU ARE EDITTING THIS FILE, if this is a .css file, It has a lot
 * of chance of beeing generated from the ../less/[samename].less file, you can
 * try to get back the less file by reverting somme commit in history
 **/
/*
 * We'll try to get something pretty, so we
 * have some strange css to have the scroll bar on
 * the left with fix button on the top right of the tooltip
 */
@-moz-keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-webkit-keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}
@-moz-keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@-webkit-keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
/*properties of tooltip after "expand"*/
.bigtooltip {
  overflow: auto;
  height: 200px;
  -webkit-transition-property: height;
  -webkit-transition-duration: 500ms;
  -moz-transition-property: height;
  -moz-transition-duration: 500ms;
  transition-property: height;
  transition-duration: 500ms;
}
/*properties of tooltip before "expand"*/
.smalltooltip {
  -webkit-transition-property: height;
  -webkit-transition-duration: 500ms;
  -moz-transition-property: height;
  -moz-transition-duration: 500ms;
  transition-property: height;
  transition-duration: 500ms;
  text-overflow: ellipsis;
  overflow: hidden;
  height: 80px;
}
.tooltipbuttons {
  position: absolute;
  padding-right: 15px;
  top: 0px;
  right: 0px;
}
.tooltiptext {
  /*avoid the button to overlap on some docstring*/
  padding-right: 30px;
}
.ipython_tooltip {
  max-width: 700px;
  /*fade-in animation when inserted*/
  -webkit-animation: fadeOut 400ms;
  -moz-animation: fadeOut 400ms;
  animation: fadeOut 400ms;
  -webkit-animation: fadeIn 400ms;
  -moz-animation: fadeIn 400ms;
  animation: fadeIn 400ms;
  vertical-align: middle;
  background-color: #f7f7f7;
  overflow: visible;
  border: #ababab 1px solid;
  outline: none;
  padding: 3px;
  margin: 0px;
  padding-left: 7px;
  font-family: monospace;
  min-height: 50px;
  -moz-box-shadow: 0px 6px 10px -1px #adadad;
  -webkit-box-shadow: 0px 6px 10px -1px #adadad;
  box-shadow: 0px 6px 10px -1px #adadad;
  border-radius: 2px;
  position: absolute;
  z-index: 1000;
}
.ipython_tooltip a {
  float: right;
}
.ipython_tooltip .tooltiptext pre {
  border: 0;
  border-radius: 0;
  font-size: 100%;
  background-color: #f7f7f7;
}
.pretooltiparrow {
  left: 0px;
  margin: 0px;
  top: -16px;
  width: 40px;
  height: 16px;
  overflow: hidden;
  position: absolute;
}
.pretooltiparrow:before {
  background-color: #f7f7f7;
  border: 1px #ababab solid;
  z-index: 11;
  content: "";
  position: absolute;
  left: 15px;
  top: 10px;
  width: 25px;
  height: 25px;
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  -o-transform: rotate(45deg);
}
ul.typeahead-list i {
  margin-left: -10px;
  width: 18px;
}
[dir="rtl"] ul.typeahead-list i {
  margin-left: 0;
  margin-right: -10px;
}
ul.typeahead-list {
  max-height: 80vh;
  overflow: auto;
}
ul.typeahead-list > li > a {
  /** Firefox bug **/
  /* see https://github.com/jupyter/notebook/issues/559 */
  white-space: normal;
}
ul.typeahead-list  > li > a.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .typeahead-list {
  text-align: right;
}
.cmd-palette .modal-body {
  padding: 7px;
}
.cmd-palette form {
  background: white;
}
.cmd-palette input {
  outline: none;
}
.no-shortcut {
  min-width: 20px;
  color: transparent;
}
[dir="rtl"] .no-shortcut.pull-right {
  float: left !important;
  float: left;
}
[dir="rtl"] .command-shortcut.pull-right {
  float: left !important;
  float: left;
}
.command-shortcut:before {
  content: "(command mode)";
  padding-right: 3px;
  color: #777777;
}
.edit-shortcut:before {
  content: "(edit)";
  padding-right: 3px;
  color: #777777;
}
[dir="rtl"] .edit-shortcut.pull-right {
  float: left !important;
  float: left;
}
#find-and-replace #replace-preview .match,
#find-and-replace #replace-preview .insert {
  background-color: #BBDEFB;
  border-color: #90CAF9;
  border-style: solid;
  border-width: 1px;
  border-radius: 0px;
}
[dir="ltr"] #find-and-replace .input-group-btn + .form-control {
  border-left: none;
}
[dir="rtl"] #find-and-replace .input-group-btn + .form-control {
  border-right: none;
}
#find-and-replace #replace-preview .replace .match {
  background-color: #FFCDD2;
  border-color: #EF9A9A;
  border-radius: 0px;
}
#find-and-replace #replace-preview .replace .insert {
  background-color: #C8E6C9;
  border-color: #A5D6A7;
  border-radius: 0px;
}
#find-and-replace #replace-preview {
  max-height: 60vh;
  overflow: auto;
}
#find-and-replace #replace-preview pre {
  padding: 5px 10px;
}
.terminal-app {
  background: #EEE;
}
.terminal-app #header {
  background: #fff;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.2);
}
.terminal-app .terminal {
  width: 100%;
  float: left;
  font-family: monospace;
  color: white;
  background: black;
  padding: 0.4em;
  border-radius: 2px;
  -webkit-box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.4);
  box-shadow: 0px 0px 12px 1px rgba(87, 87, 87, 0.4);
}
.terminal-app .terminal,
.terminal-app .terminal dummy-screen {
  line-height: 1em;
  font-size: 14px;
}
.terminal-app .terminal .xterm-rows {
  padding: 10px;
}
.terminal-app .terminal-cursor {
  color: black;
  background: white;
}
.terminal-app #terminado-container {
  margin-top: 20px;
}
/*# sourceMappingURL=style.min.css.map */
    </style>
<style type="text/css">
    .highlight .hll { background-color: #ffffcc }
.highlight  { background: #f8f8f8; }
.highlight .c { color: #408080; font-style: italic } /* Comment */
.highlight .err { border: 1px solid #FF0000 } /* Error */
.highlight .k { color: #008000; font-weight: bold } /* Keyword */
.highlight .o { color: #666666 } /* Operator */
.highlight .ch { color: #408080; font-style: italic } /* Comment.Hashbang */
.highlight .cm { color: #408080; font-style: italic } /* Comment.Multiline */
.highlight .cp { color: #BC7A00 } /* Comment.Preproc */
.highlight .cpf { color: #408080; font-style: italic } /* Comment.PreprocFile */
.highlight .c1 { color: #408080; font-style: italic } /* Comment.Single */
.highlight .cs { color: #408080; font-style: italic } /* Comment.Special */
.highlight .gd { color: #A00000 } /* Generic.Deleted */
.highlight .ge { font-style: italic } /* Generic.Emph */
.highlight .gr { color: #FF0000 } /* Generic.Error */
.highlight .gh { color: #000080; font-weight: bold } /* Generic.Heading */
.highlight .gi { color: #00A000 } /* Generic.Inserted */
.highlight .go { color: #888888 } /* Generic.Output */
.highlight .gp { color: #000080; font-weight: bold } /* Generic.Prompt */
.highlight .gs { font-weight: bold } /* Generic.Strong */
.highlight .gu { color: #800080; font-weight: bold } /* Generic.Subheading */
.highlight .gt { color: #0044DD } /* Generic.Traceback */
.highlight .kc { color: #008000; font-weight: bold } /* Keyword.Constant */
.highlight .kd { color: #008000; font-weight: bold } /* Keyword.Declaration */
.highlight .kn { color: #008000; font-weight: bold } /* Keyword.Namespace */
.highlight .kp { color: #008000 } /* Keyword.Pseudo */
.highlight .kr { color: #008000; font-weight: bold } /* Keyword.Reserved */
.highlight .kt { color: #B00040 } /* Keyword.Type */
.highlight .m { color: #666666 } /* Literal.Number */
.highlight .s { color: #BA2121 } /* Literal.String */
.highlight .na { color: #7D9029 } /* Name.Attribute */
.highlight .nb { color: #008000 } /* Name.Builtin */
.highlight .nc { color: #0000FF; font-weight: bold } /* Name.Class */
.highlight .no { color: #880000 } /* Name.Constant */
.highlight .nd { color: #AA22FF } /* Name.Decorator */
.highlight .ni { color: #999999; font-weight: bold } /* Name.Entity */
.highlight .ne { color: #D2413A; font-weight: bold } /* Name.Exception */
.highlight .nf { color: #0000FF } /* Name.Function */
.highlight .nl { color: #A0A000 } /* Name.Label */
.highlight .nn { color: #0000FF; font-weight: bold } /* Name.Namespace */
.highlight .nt { color: #008000; font-weight: bold } /* Name.Tag */
.highlight .nv { color: #19177C } /* Name.Variable */
.highlight .ow { color: #AA22FF; font-weight: bold } /* Operator.Word */
.highlight .w { color: #bbbbbb } /* Text.Whitespace */
.highlight .mb { color: #666666 } /* Literal.Number.Bin */
.highlight .mf { color: #666666 } /* Literal.Number.Float */
.highlight .mh { color: #666666 } /* Literal.Number.Hex */
.highlight .mi { color: #666666 } /* Literal.Number.Integer */
.highlight .mo { color: #666666 } /* Literal.Number.Oct */
.highlight .sa { color: #BA2121 } /* Literal.String.Affix */
.highlight .sb { color: #BA2121 } /* Literal.String.Backtick */
.highlight .sc { color: #BA2121 } /* Literal.String.Char */
.highlight .dl { color: #BA2121 } /* Literal.String.Delimiter */
.highlight .sd { color: #BA2121; font-style: italic } /* Literal.String.Doc */
.highlight .s2 { color: #BA2121 } /* Literal.String.Double */
.highlight .se { color: #BB6622; font-weight: bold } /* Literal.String.Escape */
.highlight .sh { color: #BA2121 } /* Literal.String.Heredoc */
.highlight .si { color: #BB6688; font-weight: bold } /* Literal.String.Interpol */
.highlight .sx { color: #008000 } /* Literal.String.Other */
.highlight .sr { color: #BB6688 } /* Literal.String.Regex */
.highlight .s1 { color: #BA2121 } /* Literal.String.Single */
.highlight .ss { color: #19177C } /* Literal.String.Symbol */
.highlight .bp { color: #008000 } /* Name.Builtin.Pseudo */
.highlight .fm { color: #0000FF } /* Name.Function.Magic */
.highlight .vc { color: #19177C } /* Name.Variable.Class */
.highlight .vg { color: #19177C } /* Name.Variable.Global */
.highlight .vi { color: #19177C } /* Name.Variable.Instance */
.highlight .vm { color: #19177C } /* Name.Variable.Magic */
.highlight .il { color: #666666 } /* Literal.Number.Integer.Long */
    </style>


<style type="text/css">
/* Overrides of notebook CSS for static HTML export */
body {
  overflow: visible;
  padding: 8px;
}

div#notebook {
  overflow: visible;
  border-top: none;
}@media print {
  div.cell {
    display: block;
    page-break-inside: avoid;
  } 
  div.output_wrapper { 
    display: block;
    page-break-inside: avoid; 
  }
  div.output { 
    display: block;
    page-break-inside: avoid; 
  }
}
</style>

<!-- Custom stylesheet, it must be in the same directory as the html file -->
<link rel="stylesheet" href="custom.css">

<!-- Loading mathjax macro -->
<!-- Load mathjax -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/latest.js?config=TeX-AMS_HTML"></script>
    <!-- MathJax configuration -->
    <script type="text/x-mathjax-config">
    MathJax.Hub.Config({
        tex2jax: {
            inlineMath: [ ['$','$'], ["\\(","\\)"] ],
            displayMath: [ ['$$','$$'], ["\\[","\\]"] ],
            processEscapes: true,
            processEnvironments: true
        },
        // Center justify equations in code and markdown cells. Elsewhere
        // we use CSS to left justify single line equations in code cells.
        displayAlign: 'center',
        "HTML-CSS": {
            styles: {'.MathJax_Display': {"margin": 0}},
            linebreaks: { automatic: true }
        }
    });
    </script>
    <!-- End of mathjax configuration --></head>
<body>
  <div tabindex="-1" id="notebook" class="border-box-sizing">
    <div class="container" id="notebook-container">

<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<h1 id="Why-overdue-tasks-take-still-a-long-time-to-finish?">Why overdue tasks take still a long time to finish?<a class="anchor-link" href="#Why-overdue-tasks-take-still-a-long-time-to-finish?">&#182;</a></h1><p>The prototypical situation that is puzzling me for a while is the following:</p>
<ul>
<li>We estimated 3 days for a task</li>
<li>Bob is working on the task for 3 days already</li>
<li>On the daily scrum, he says that it's just a couple more things and it is finished</li>
<li>The task is not finished the next day</li>
</ul>
<p>Sometimes these stories are not finished even after five days of work. Since they are typically "more research-less development" tasks, many people suggest accepting this kind of uncertainty as inherent to research. While I agree to a point, I don't want to give up predictability so easily. A year ago, Erik Bernhardsson sought a <a href="https://erikbern.com/2019/04/15/why-software-projects-take-longer-than-you-think-a-statistical-model.html">fascinating account for time estimations</a>, concluding that the reason why development tasks take longer than expected is that the blow-up factor (actual time/expected time) follows a lognormal distribution and our estimates are accurate for the median but not so much for the mean task completion time. I really liked his post and re-read it several times last year because it finally helped me to understand why is it so challengingchallenging to play scrum poker. I'm taking his model as the basis for my work here, to see if we need to finetune our estimate for task completion?</p>
<h2 id="Estimates-are-smaller-than-expected-finishing-times">Estimates are smaller than expected finishing times<a class="anchor-link" href="#Estimates-are-smaller-than-expected-finishing-times">&#182;</a></h2><p>When in the above example, Bob was 3 days into the task it is intuitive to believe that he is really about to finish it, after all, we estimated 3 days for the task. However, statistically speaking our 3 days estimate was an estimate for the median of the underlying distribution. The median of the distribution does not say too much about the scale of the values, it just says plain and simple that in 50% of the time the task is going to take shorter and 50% of the time it's going to take longer than this. A problem with the median is that it is <strong>not</strong> sensitive to the uncertainty in the task. However, when you want to calculate the development time of a feature, you do want to take into account the uncertainty. Therefore, it is better to calculate the expected value for the task completion time for which I believe we have pretty much all the information we need. Let's see:</p>
<p>The expected value for the lognormal distribution is:</p>
$$ \operatorname{E} = \exp(\mu + \frac{\sigma^2}{2}) $$<p>For this, we need to know two parameters $\mu$ and $\sigma$. Luckily, we have an unbiased estimate for the median, and since that is:</p>
$$ Median = \exp(\mu) $$<p>We have $\mu$ already. For $\sigma$, the case is a bit more tricky but not hopeless. Erik's idea was to use the gut feeling of risk. My proposal, in addition, is to use the spread of the scrum poker estimates as an uncalibrated estimate for $\sigma$. It is uncalibrated though because while it is correlated with the uncertainty (a priori), we don't know the scaling factor. Probably, this is team and environment-dependent also so best is to estimate it based on the data that you may collect from the sprints. Basically, you need the individual estimates and the actual time to be able to fit a simple model and get $\sigma$ for your team. One addition: likely, the uncertainty around a task can be better estimated with a model that also factors the assignee in. Some people are better at streamlining, while others are much more prone to the detailing.</p>
<h2 id="The-Bermuda-triangle-of-the-&quot;Doing&quot;-column">The Bermuda triangle of the "Doing" column<a class="anchor-link" href="#The-Bermuda-triangle-of-the-&quot;Doing&quot;-column">&#182;</a></h2><p>So let's get back to the daily scrum where Bob told that he is about to finish the task that we estimated 3 story points (just as a remark Bob is a fictive colleague of any team). The question is whether we should just accept that the mean completion time is anyway longer than our estimate (median) and move forward or there is more to the story.</p>
<p>Let's say when we did the scrum poker we voted the following: Me: 2; John: 2, Bob: 3, Sarah: 3, Linda: 5, Mary: 5. Based on this we made the estimate of 3 days. Now the three days passed, shall we still accept the same estimate? Actually, it turned out that both John and Me were wrong with this task, so one can see intuitively already that the median has grown in the subset of the still valid estimates (it is 4 now). In a more general account, when we made our estimate before the task was started, we took into account all kinds of outcomes, amongst them the case when the task is completed in a few minutes (Bob realizes that the feature with a different name is already available somewhere) to the absurd case of very long (when it seems the feature is much more complicated than we assessed). Statistically, we calculate the expected value by integrating over the entire distribution. Now for any time point $t &gt; 0$ it is evident that we can't take times between 0 and $t$ in the integration and have to calculate the expected value by:</p>
$$ \operatorname{E}[X] = \int_{t}^{\infty} x f(x)\, dx. $$<p>Where $f(x)$ is the conditional probability of $x$ given that we are considering only point from $t$ to  $\infty$. So we are not considering the cases which did not happen anymore and took the task as one that has taken at least time $t$ to complete already.</p>
<p>So although beyond the peak of the distribution points right after $t$ have a relatively higher probability than points farther away, there are much more points farther away and the curvature is also changing moving away from the peak, so the expected value is actually blowing up. Let's show it with an example. Let's take three cases to illustrate, (1) where the task is in to do and we have not started it yet, (2) where the task is in process for already the estimated time (blowup factor of 1), and (3) where the task is in process for double the estimated time (blowup factor of 2).</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[364]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span><span class="o">%</span><span class="k">pylab</span> inline
<span class="kn">from</span> <span class="nn">scipy.stats</span> <span class="kn">import</span> <span class="n">lognorm</span>
<span class="n">matplotlib</span><span class="o">.</span><span class="n">style</span><span class="o">.</span><span class="n">use</span><span class="p">(</span><span class="s1">&#39;ggplot&#39;</span><span class="p">)</span>

<span class="c1"># parameters of the distribution of the blowup factor</span>

<span class="n">mu</span> <span class="o">=</span> <span class="mi">0</span>  <span class="c1"># given that the median is an unbiased estimate of the actual time</span>
<span class="n">sigma</span> <span class="o">=</span> <span class="mi">1</span>  <span class="c1"># the uncertainty</span>

<span class="c1"># statistics of the distribution</span>

<span class="n">theoretic_median</span> <span class="o">=</span> <span class="n">exp</span><span class="p">(</span><span class="n">mu</span><span class="p">)</span>
<span class="n">theoretic_exp_val</span> <span class="o">=</span> <span class="n">exp</span><span class="p">(</span><span class="n">mu</span> <span class="o">+</span> <span class="n">sigma</span> <span class="o">**</span> <span class="mi">2</span> <span class="o">/</span> <span class="mi">2</span><span class="p">)</span>

<span class="c1"># samples from the distribution</span>

<span class="n">x</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">linspace</span><span class="p">(</span><span class="mi">0</span><span class="p">,</span> <span class="mi">12</span><span class="p">,</span> <span class="mi">1000</span><span class="p">)</span>
<span class="n">y</span> <span class="o">=</span> <span class="n">lognorm</span><span class="o">.</span><span class="n">pdf</span><span class="p">(</span><span class="n">x</span><span class="p">,</span> <span class="n">s</span><span class="o">=</span><span class="n">sigma</span><span class="p">,</span> <span class="n">scale</span><span class="o">=</span><span class="n">exp</span><span class="p">(</span><span class="n">mu</span><span class="p">))</span>

<span class="c1"># testing</span>

<span class="n">integrated_exp_val</span> <span class="o">=</span> <span class="n">rv_continuous</span><span class="o">.</span><span class="n">expect</span><span class="p">(</span><span class="n">lognorm</span><span class="p">,</span> <span class="n">args</span><span class="o">=</span><span class="p">(</span><span class="n">sigma</span><span class="p">,</span> <span class="p">),</span>
        <span class="n">lb</span><span class="o">=</span><span class="mi">0</span><span class="p">,</span> <span class="n">ub</span><span class="o">=</span><span class="n">inf</span><span class="p">,</span> <span class="n">conditional</span><span class="o">=</span><span class="kc">True</span><span class="p">)</span>
<span class="n">np</span><span class="o">.</span><span class="n">testing</span><span class="o">.</span><span class="n">assert_approx_equal</span><span class="p">(</span><span class="n">integrated_exp_val</span><span class="p">,</span> <span class="n">theoretic_exp_val</span><span class="p">)</span>
<span class="n">already_started_task_exp_val</span> <span class="o">=</span> <span class="n">rv_continuous</span><span class="o">.</span><span class="n">expect</span><span class="p">(</span><span class="n">lognorm</span><span class="p">,</span>
        <span class="n">args</span><span class="o">=</span><span class="p">(</span><span class="n">sigma</span><span class="p">,</span> <span class="p">),</span> <span class="n">lb</span><span class="o">=</span><span class="mf">0.001</span><span class="p">,</span> <span class="n">ub</span><span class="o">=</span><span class="n">inf</span><span class="p">,</span> <span class="n">conditional</span><span class="o">=</span><span class="kc">True</span><span class="p">)</span>
<span class="k">assert</span> <span class="n">already_started_task_exp_val</span> <span class="o">&gt;</span> <span class="n">integrated_exp_val</span><span class="p">,</span> \
    <span class="s1">&#39;we expect that the E for a task in process is higher than when it was in to do&#39;</span>

<span class="c1"># ploting</span>

<span class="p">(</span><span class="n">fig</span><span class="p">,</span> <span class="n">axs</span><span class="p">)</span> <span class="o">=</span> <span class="n">plt</span><span class="o">.</span><span class="n">subplots</span><span class="p">(</span><span class="mi">3</span><span class="p">,</span> <span class="n">sharex</span><span class="o">=</span><span class="kc">True</span><span class="p">,</span> <span class="n">sharey</span><span class="o">=</span><span class="kc">True</span><span class="p">,</span>
                          <span class="n">gridspec_kw</span><span class="o">=</span><span class="p">{</span><span class="s1">&#39;hspace&#39;</span><span class="p">:</span> <span class="mf">0.3</span><span class="p">},</span> <span class="n">figsize</span><span class="o">=</span><span class="p">(</span><span class="mi">15</span><span class="p">,</span> <span class="mi">10</span><span class="p">))</span>

<span class="k">for</span> <span class="p">(</span><span class="n">i</span><span class="p">,</span> <span class="n">time_spent</span><span class="p">)</span> <span class="ow">in</span> <span class="nb">enumerate</span><span class="p">([</span><span class="mi">0</span><span class="p">,</span> <span class="mi">1</span><span class="p">,</span> <span class="mf">1.5</span><span class="p">]):</span>
    <span class="n">x_fill</span> <span class="o">=</span> <span class="n">np</span><span class="o">.</span><span class="n">linspace</span><span class="p">(</span><span class="n">time_spent</span><span class="p">,</span> <span class="mi">12</span><span class="p">,</span> <span class="mi">1000</span><span class="p">)</span>
    <span class="n">y_fill</span> <span class="o">=</span> <span class="n">lognorm</span><span class="o">.</span><span class="n">pdf</span><span class="p">(</span><span class="n">x_fill</span><span class="p">,</span> <span class="n">s</span><span class="o">=</span><span class="n">sigma</span><span class="p">,</span> <span class="n">scale</span><span class="o">=</span><span class="n">exp</span><span class="p">(</span><span class="n">mu</span><span class="p">))</span>
    <span class="n">exp_val</span> <span class="o">=</span> <span class="n">rv_continuous</span><span class="o">.</span><span class="n">expect</span><span class="p">(</span><span class="n">lognorm</span><span class="p">,</span> <span class="n">args</span><span class="o">=</span><span class="p">(</span><span class="n">sigma</span><span class="p">,</span> <span class="p">),</span>
                                   <span class="n">lb</span><span class="o">=</span><span class="n">time_spent</span><span class="p">,</span> <span class="n">ub</span><span class="o">=</span><span class="n">inf</span><span class="p">,</span>
                                   <span class="n">conditional</span><span class="o">=</span><span class="kc">True</span><span class="p">)</span>

    <span class="n">axs</span><span class="p">[</span><span class="n">i</span><span class="p">]</span><span class="o">.</span><span class="n">scatter</span><span class="p">(</span><span class="n">time_spent</span><span class="p">,</span> <span class="mi">0</span><span class="p">,</span> <span class="n">s</span><span class="o">=</span><span class="mi">200</span><span class="p">,</span>
                   <span class="n">label</span><span class="o">=</span><span class="s1">&#39;Current time factor: </span><span class="si">%.2f</span><span class="s1">&#39;</span> <span class="o">%</span> <span class="mi">0</span><span class="p">)</span>
    <span class="n">axs</span><span class="p">[</span><span class="n">i</span><span class="p">]</span><span class="o">.</span><span class="n">plot</span><span class="p">(</span><span class="n">x</span><span class="p">,</span> <span class="n">y</span><span class="p">,</span> <span class="s1">&#39;k-&#39;</span><span class="p">,</span> <span class="n">lw</span><span class="o">=</span><span class="mi">5</span><span class="p">,</span> <span class="n">alpha</span><span class="o">=</span><span class="mf">0.6</span><span class="p">)</span>
    <span class="n">axs</span><span class="p">[</span><span class="n">i</span><span class="p">]</span><span class="o">.</span><span class="n">fill_between</span><span class="p">(</span>
        <span class="n">x_fill</span><span class="p">,</span>
        <span class="n">y_fill</span> <span class="o">*</span> <span class="mi">0</span><span class="p">,</span>
        <span class="n">y_fill</span><span class="p">,</span>
        <span class="n">color</span><span class="o">=</span><span class="s1">&#39;C0&#39;</span><span class="p">,</span>
        <span class="n">alpha</span><span class="o">=</span><span class="mf">0.3</span><span class="p">,</span>
        <span class="n">label</span><span class="o">=</span><span class="s1">&#39;Possible outcomes from current time&#39;</span><span class="p">,</span>
        <span class="p">)</span>
    <span class="n">axs</span><span class="p">[</span><span class="n">i</span><span class="p">]</span><span class="o">.</span><span class="n">axvline</span><span class="p">(</span><span class="n">x</span><span class="o">=</span><span class="n">theoretic_median</span><span class="p">,</span> <span class="n">color</span><span class="o">=</span><span class="s1">&#39;C1&#39;</span><span class="p">,</span> <span class="n">lw</span><span class="o">=</span><span class="mi">3</span><span class="p">,</span>
                   <span class="n">label</span><span class="o">=</span><span class="s1">&#39;Original estimate : </span><span class="si">%.2f</span><span class="s1">&#39;</span> <span class="o">%</span> <span class="n">theoretic_median</span><span class="p">)</span>
    <span class="n">axs</span><span class="p">[</span><span class="n">i</span><span class="p">]</span><span class="o">.</span><span class="n">axvline</span><span class="p">(</span><span class="n">x</span><span class="o">=</span><span class="n">exp_val</span><span class="p">,</span> <span class="n">color</span><span class="o">=</span><span class="s1">&#39;C2&#39;</span><span class="p">,</span> <span class="n">lw</span><span class="o">=</span><span class="mi">3</span><span class="p">,</span>
                   <span class="n">label</span><span class="o">=</span><span class="s1">&#39;Expected value : </span><span class="si">%.2f</span><span class="s1">&#39;</span> <span class="o">%</span> <span class="n">exp_val</span><span class="p">)</span>
    <span class="n">axs</span><span class="p">[</span><span class="n">i</span><span class="p">]</span><span class="o">.</span><span class="n">legend</span><span class="p">()</span>
    <span class="n">axs</span><span class="p">[</span><span class="n">i</span><span class="p">]</span><span class="o">.</span><span class="n">set_title</span><span class="p">(</span><span class="s1">&#39;When current factor is </span><span class="si">{0}</span><span class="s1">, the expected remaining time is</span><span class="se">\n</span><span class="si">{1:0.2f}</span><span class="s1"> times the original estimate&#39;</span><span class="o">.</span><span class="n">format</span><span class="p">(</span><span class="n">time_spent</span><span class="p">,</span>
                     <span class="n">exp_val</span> <span class="o">-</span> <span class="n">time_spent</span><span class="p">))</span>

<span class="c1"># aesthetics</span>

<span class="n">axs</span><span class="p">[</span><span class="mi">2</span><span class="p">]</span><span class="o">.</span><span class="n">set_xlabel</span><span class="p">(</span><span class="s1">&#39;Blowup factor (actual/estimated)&#39;</span><span class="p">)</span>
<span class="n">axs</span><span class="p">[</span><span class="mi">1</span><span class="p">]</span><span class="o">.</span><span class="n">set_ylabel</span><span class="p">(</span><span class="s1">&#39;Probability distribution&#39;</span><span class="p">)</span>
</pre></div>

    </div>
</div>
</div>

<div class="output_wrapper">
<div class="output">


<div class="output_area">

    <div class="prompt"></div>


<div class="output_subarea output_stream output_stdout output_text">
<pre>Populating the interactive namespace from numpy and matplotlib
</pre>
</div>
</div>

<div class="output_area">

    <div class="prompt output_prompt">Out[364]:</div>




<div class="output_text output_subarea output_execute_result">
<pre>Text(0, 0.5, &#39;Probability distribution&#39;)</pre>
</div>

</div>

<div class="output_area">

    <div class="prompt"></div>




<div class="output_png output_subarea ">
<img src="data:image/png;base64,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YnOf48ePl5WNGjWKPfjgg4wxxoqLi5lGo2E///yzrM4XX3zBvLy87B5v/vz5LCYmRlYmCAILCwtjCQkJUtmpU6eYm5sbe+mll5iHh4eUjFvGN2jQIFnZyy+/zIKCghhjjKWnpzOO49jp06dldd544w3Ws2dPxhhjO3fuZABYYmKizVivXLnCALDdu3fLymNjY9ncuXNlZZcuXWIA2NGjRxljjAUFBbF58+bJ6kyaNKlWyV59PluW5/DPP/9kANj7778vlZkT2BMnTtiNYenSpeyOO+6Qlm0lewBYUlKSVHbo0CEGgJ05c0YWT9Vkr7rP/o4dOxgAdu7cOalOdnY202g0dpM9xhjbv38/A8AuXLggK7eV7PE8z27duiWVTZ8+nSkUCtm/r88//zzr27evtBwSEsL+85//yPa9d+9eBoDl5OTYjashP+OEkIbT/IbJIoQ0quHDhwMAdu3ahcGDByM9PR2xsbHw8vLCnXfeKZWfO3cO7733nmzb9u3bo02bNtJyUFAQGGPIzMxEx44dkZiYiLS0NGi1Wtl2er0e586dq/V+qkpJSYFer8fIkSPr/fr79u0LhcK6h3v//v1ly4mJiSgvL5e6epqVl5cjIiJCVtarVy/puVKpREBAAG7evFnvWAHg1q1bmD9/Pn777TfcuHEDRqMRer1e6hr7119/AUCdz01KSor0XjCLjY0FYwynTp1CSEgIAKBr165W17MmI0aMQOnw298AACAASURBVFhYGEJDQzFixAgMHz4c9913n1PvNwLk1wkQ33cXLlwAIJ6P0tJSTJo0SdbV1WQyQa/X49atW7L3rFliYiKSkpKszlFpaansPd+1a1e8//77mD59OsaMGYOZM2da7evuu++WLQ8cOBCLFy9GQUEBjhw5AsYYoqOjZXWMRiN4ngcgdqH28fGxqlOTxMREHD58GB9++KHVunPnziEsLAzXrl3DgAEDZOsGDRqEzZs317j/+ny2evbsKT0338t55513WpVlZmZKZatWrcJnn32Gixcvori4GEajUdYd1haO42THMsd28+ZNREZG2t2uus/+qVOn4O/vL+t66evrW+3+6iooKEj2uQoMDERgYKDsvRoYGCidn1u3buHSpUuYPXs2/vWvf0l1WMW9uGlpaejXr1+Nx22qn3FCWiNK9gghMv7+/ujZsyd27dqF8vJy9OnTB15e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
"
>
</div>

</div>

</div>
</div>

</div>
<div class="cell border-box-sizing text_cell rendered"><div class="prompt input_prompt">
</div><div class="inner_cell">
<div class="text_cell_render border-box-sizing rendered_html">
<p>Now you see a paradoxical thing: the remaining time, operationalized by $\operatorname{E}_t - t$, is not shrinking as we proceed but it is growing. This, of course, does not mean that we cannot finish tasks; it just helps to make increasingly better estimates for the remaining work by factoring in the elapsed time. We can use this knowledge to multiple things. It helps the team to make the decision when to cut or restructure a task and in general to understand when it is likely to be finished (i.e. as a rule of thumb reject the notion of finishing in the next hour when the blowup factor is already 2).</p>
<p>This knowledge is also critical to recognize tasks that are becoming impossible to finish in time. We have seen several tasks, which seemed tractable at first sight and then became the boogieman for the project. It is essential to detect these as early as possible and rethink deliverables, handle expectations, and/or come up with alternative solutions.</p>
<p>Also, the assumption in this exercise is that during the task execution, there is no feedback effect of the inspection. In reality, the feedback of the team during the daily scrum or of the stakeholders during a review may change the approach (with the distribution) and hence the expected time to finish too. In fact, if you look at the distribution of blowup factors in the SiP dataset (which Erik also looked at) the right tail is not as heavy as one would expect from a standard lognormal distribution, my hypothesis is that the main reason behind this is exactly feedback, control and restructuring mechanisms when the blowup factor becomes large. So as a bottom line, pay close attention in the daily scrum and help to avoid story completion time blowup.</p>

</div>
</div>
</div>
<div class="cell border-box-sizing code_cell rendered">
<div class="input">
<div class="prompt input_prompt">In&nbsp;[&nbsp;]:</div>
<div class="inner_cell">
    <div class="input_area">
<div class=" highlight hl-ipython3"><pre><span></span> 
</pre></div>

    </div>
</div>
</div>

</div>
    </div>
  </div>
</body>

 


</html>
