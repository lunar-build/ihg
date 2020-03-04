export default {
	init() {
		
		// Get/create icons with classes for FA
		const closeIcon = $('#close-icon');
		const hamburger = $('#hamburger');
		const nav = $('.nav-primary');

		closeIcon.hide();

		// JavaScript to be fired on all pages
		$('#nav-toggle').on('click', () => {
			const isOpen = nav.attr('data-toggle') === 'open';
			nav.attr('data-toggle', isOpen ? 'close' : 'open');

			if (isOpen) {
				hamburger.show();
				closeIcon.hide();
			} else {
				closeIcon.show();
				hamburger.hide();
			}
			
		});

		const filter = $('#post_tag-filter');

		filter.on('change', function(e) {
			location.href = e.target.value;
		})

		const videoEmbed = $('.featured-video');
		$('.featured-video').remove();

		$('.js-modal-open').on('click', function() {
			const modal = $(this).next();
			$('.modal-inner').append(videoEmbed);

			modal.removeClass('modal--hide');
		})


		function closeModal (modal) {
			$('.featured-video').remove();
			
			return modal.addClass('modal--hide');
		}

		$('body').on('keydown', function(e){
			if(e.key === 'Escape') {
				const modal = $('.modal');
				closeModal(modal);
			}
		});

		$('.js-modal-close').on('click', function() {
			const modal = $(this).parent().parent();
			closeModal(modal);
		})
	},
	finalize() {
		// JavaScript to be fired on all pages, after page specific JS is fired
	},
};
