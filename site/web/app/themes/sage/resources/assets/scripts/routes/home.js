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
    });

    const banner = $('.banner');
    const d = $(document);

    d.on('scroll', function() {
      if (d.scrollTop() > banner.position().top + banner.height()) {
        banner.addClass('banner--alt');
      } else {
        banner.removeClass('banner--alt');
      }
    });
    
  },
  finalize() {
    // JavaScript to be fired on the home page, after the init JS
  },
};
