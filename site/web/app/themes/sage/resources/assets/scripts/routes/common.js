export default {
	init() {
		// JavaScript to be fired on all pages
		$('#nav-toggle').on('click', (e) => {
			const nav = $('.nav-primary');
			const isOpen = nav.attr('data-toggle') === 'open';

			$(e.target).text(isOpen ? 'Menu' : 'X');
			nav.attr('data-toggle', isOpen ? 'close' : 'open');
		});
	},
	finalize() {
		// JavaScript to be fired on all pages, after page specific JS is fired
	},
};
