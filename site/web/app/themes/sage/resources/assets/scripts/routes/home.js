export default {
  init() {
    // JavaScript to be fired on the home page
    const scrollBtn = $('#btn-scroll');

    scrollBtn.on('click', function() {
      const section = document.getElementById(scrollBtn.attr('data-section'));
      section.scrollIntoView({
        behavior: 'smooth',
        block: 'center',
      });
    })
    
  },
  finalize() {
    // JavaScript to be fired on the home page, after the init JS
  },
};
