$(function () {

    $('#easyPaginate').easyPaginate({
        paginateElement: 'div.prodotto',
        elementsPerPage: 6,
        effect: 'climb',
        firstButton: false,
        lastButton: false,
        prevButtonText: '&laquo;',
        nextButtonText: '&raquo;'
    });

});