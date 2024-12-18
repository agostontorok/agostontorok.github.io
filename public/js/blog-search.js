function searchPosts() {
    const searchInput = document.getElementById('blog-search');
    const searchTerm = searchInput.value.toLowerCase();
    const posts = document.querySelectorAll('.related-posts li');

    posts.forEach(post => {
        const title = post.querySelector('h2 a span')?.textContent.toLowerCase() || '';
        const content = post.textContent.toLowerCase();
        const isVisible = title.includes(searchTerm) || content.includes(searchTerm);
        post.style.display = isVisible ? '' : 'none';
    });

    // Handle empty lists
    document.querySelectorAll('.related-posts').forEach(list => {
        const hasVisiblePosts = Array.from(list.querySelectorAll('li')).some(li => li.style.display !== 'none');
        list.style.display = hasVisiblePosts ? '' : 'none';
    });
}

// Debounce function to limit how often the search runs
function debounce(func, wait) {
    let timeout;
    return function executedFunction(...args) {
        const later = () => {
            clearTimeout(timeout);
            func(...args);
        };
        clearTimeout(timeout);
        timeout = setTimeout(later, wait);
    };
}

document.addEventListener('DOMContentLoaded', function() {
    const searchInput = document.getElementById('blog-search');
    if (searchInput) {
        // Use debounced search for better performance
        const debouncedSearch = debounce(searchPosts, 300);
        searchInput.addEventListener('input', debouncedSearch);
    }
});
