jQuery ->
$('#forums-masonry').imagesLoaded ->
    $('#forums-masonry').masonry itemSelector: ".forums-masonry" # Thats my Masonry

if $('.pagination').length # Thats for the Endless Scrolling
    $(window).scroll ->
        url = $('.pagination .next_page a').attr('href')
        if url && $(window).scrollTop() > $(document).height() - $(window).height() - 50
            # What to do at the bottom of the page
            $('.pagination').text("Fetching more Forums...")
            $.getScript(url)
        $(window).scroll()
