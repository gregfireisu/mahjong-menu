$(document).ready(function() {
    loadCategories(0, $('#categories'));

    $(document).on('click', '.category', function() {
        var categoryId = $(this).data('id');
        var subcategoriesContainer = $(this).siblings('.subcategories');

        if (subcategoriesContainer.children().length > 0) {
            subcategoriesContainer.slideToggle();
        } else {
            loadCategories(categoryId, subcategoriesContainer);
        }
    });
});

function loadCategories(categoryId, container) {
    $.ajax({
        url: 'get_categories.php',
        type: 'POST',
        dataType: 'json',
        data: {
            parent: categoryId
        },
        success: function(response) {
            if (response.length > 0) {
                var list = $('<ul></ul>');

                $.each(response, function(index, category) {
                    var listItem = $('<li></li>');

                    if (category.has_children) {
                        listItem.html('<span class="category-name category" data-id="' + category.id + '">' + category.name + '</span>');

                        var subcategoriesContainer = $('<div class="subcategories"></div>');
                        listItem.append(subcategoriesContainer);
                    } else {
                        listItem.html(category.name);
                    }

                    list.append(listItem);
                });

                container.append(list);
            }
        }
    });
}