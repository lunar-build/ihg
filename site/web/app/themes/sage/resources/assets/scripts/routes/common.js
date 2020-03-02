export default {
	init() {
		
		// Get/create icons with classes for FA
		const closeIcon = $('<i />');
		closeIcon.addClass('fas fa-times');
		const hamburger = $('.fa-bars');
		const nav = $('.nav-primary');

		// JavaScript to be fired on all pages
		$('#nav-toggle').on('click', () => {
			const isOpen = nav.attr('data-toggle') === 'open';
			const menuBtn = $('#nav-toggle');
			nav.attr('data-toggle', isOpen ? 'close' : 'open');


			menuBtn.children().remove(); // Remove child SVG

			// Append FA <i />, which jQuery will then use to render SVG
			if (isOpen) {
				menuBtn.append(hamburger);
			} else {
				menuBtn.append(closeIcon);
			}
			
		});
	},
	finalize() {
		// JavaScript to be fired on all pages, after page specific JS is fired
	},
};
