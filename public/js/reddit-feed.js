async function fetchRedditPosts() {
    const username = 'the_data_department';
    const container = document.getElementById('reddit-posts');
    if (!container) return;

    try {
        const response = await fetch(`https://www.reddit.com/user/${username}/submitted.json?sort=top&limit=5`);
        const data = await response.json();
        
        const posts = data.data.children.map(post => {
            const postData = post.data;
            // Get the best available image
            let imageUrl = null;
            if (postData.preview && postData.preview.images && postData.preview.images[0]) {
                // Get the highest resolution preview image
                const image = postData.preview.images[0];
                if (image.source) {
                    imageUrl = image.source.url.replace(/&amp;/g, '&');
                } else if (image.resolutions && image.resolutions.length > 0) {
                    // Get the highest resolution available
                    imageUrl = image.resolutions[image.resolutions.length - 1].url.replace(/&amp;/g, '&');
                }
            }
            // Fallback to thumbnail if it's available and valid
            if (!imageUrl && postData.thumbnail && postData.thumbnail !== 'self' && postData.thumbnail !== 'default') {
                imageUrl = postData.thumbnail;
            }
            // If it's a direct image link, use that
            if (!imageUrl && (postData.url.endsWith('.jpg') || postData.url.endsWith('.png') || postData.url.endsWith('.gif'))) {
                imageUrl = postData.url;
            }

            return {
                title: postData.title,
                url: `https://reddit.com${postData.permalink}`,
                score: postData.score,
                image: imageUrl,
                created: new Date(postData.created_utc * 1000).toLocaleDateString(),
                subreddit: postData.subreddit_name_prefixed,
                text: postData.selftext || ''
            };
        });

        let html = '<ul class="reddit-posts">';
        posts.forEach(post => {
            html += `
                <li class="reddit-post">
                    <h3><a href="${post.url}" target="_blank">${post.title}</a></h3>
                    ${post.image ? `
                        <div class="reddit-image-container">
                            <a href="${post.url}" target="_blank">
                                <img src="${post.image}" alt="${post.title}" class="reddit-image"/>
                            </a>
                        </div>
                    ` : ''}
                    ${post.text ? `<div class="reddit-text">${post.text.slice(0, 200)}${post.text.length > 200 ? '...' : ''}</div>` : ''}
                    <small class="reddit-meta">
                        Posted in ${post.subreddit} on ${post.created} • ${post.score} points
                    </small>
                </li>
            `;
        });
        html += '</ul>';
        
        container.innerHTML = html;
    } catch (error) {
        console.error('Error fetching Reddit posts:', error);
        container.innerHTML = '<p>Failed to load Reddit posts</p>';
    }
}

document.addEventListener('DOMContentLoaded', fetchRedditPosts);
