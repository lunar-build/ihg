export default {
    init() {
      // JavaScript to be fired on the latest news page

      const filter = $('#post_tag-filter');

      filter.on('change', function(e) {
        location.href = e.target.value;
      })
    },
  };
  