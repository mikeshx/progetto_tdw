$(function () {

    $('#easyPaginate').easyPaginate({
        paginateElement: 'div.prodotto',
        elementsPerPage: 9,
        effect: 'climb',
        firstButton: false,
        lastButton: false,
        prevButtonText: '&laquo;',
        nextButtonText: '&raquo;'
    });

});