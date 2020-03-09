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

        const filters = $('#post_tag-filter');

        filters.on('click', function() {
			const modal = $(this).find('.modal');

			if(!$(this).hasClass('open'))  {
				modal.removeClass('modal--hide');
			}
			$(this).toggleClass('open');
		});
		
		$('.filter-option').on('click', function() {
			$('[data-selected="selected"]').attr('data-selected', '');
			$(this).attr('data-selected', 'selected');

			location.href = $(this).data('value');
		});

		$('.modal').on('click', function(e) {
			const modal = $('#post_tag-filter .modal');
			if($(e.target).hasClass('modal') && !modal.hasClass('modal--hide')) {
				filters.removeClass('open');
				modal.addClass('modal--hide')
			}
		});

		const videoEmbed = $('.featured-video');
		$('.featured-video').remove();

		$('.js-modal-open').on('click', function() {
			const modal = $(this).next();
			$('.modal-inner').append(videoEmbed);

			modal.removeClass('modal--hide');
		})

		$('.preview-card').on('click', function(e) {
			if ($(e.target).hasClass('js-modal-close')) return;
			const btn = $(this).find('.js-modal-open');
			const modal = btn.next();

			modal.removeClass('modal--hide');
		})

		function closeModal (modal) {
			$('.featured-video').remove();

			if (filters) {
				filters.removeClass('open');
			}
			
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
