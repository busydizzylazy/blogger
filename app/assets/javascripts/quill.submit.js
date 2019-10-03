// JavaScript to fill in post content on from submission

var form = document.querySelector('#some-form');
var quill = new Quill('#editor', {
  theme: 'snow'
});

form.onsubmit = function() {
  var postContentInput = document.querySelector('#post-content');
  postContentInput.value = quill.root.innerHTML;
};

// Add fonts to whitelist
var Font = Quill.import('formats/font');
// We do not add Sans Serif since it is the default
Font.whitelist = ['inconsolata', 'roboto', 'mirza', 'arial'];
Quill.register(Font, true);