---
title: "My First Post"
date: 2020-01-26T23:11:13Z
featured_image: post-sm_1.jpg

category: games
tags: ["web", "linux"]

featured: true
pinned: true

draft: false
---


Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras fermentum odio. A erat nam at lectus urna duis. Sed velit dignissim sodales ut eu sem. Lectus urna duis convallis convallis tellus. Diam sit amet nisl suscipit adipiscing bibendum est. Sed felis eget velit aliquet sagittis id consectetur. Vulputate dignissim suspendisse in est ante in nibh mauris cursus. Morbi quis commodo odio aenean. Mollis nunc sed id semper risus in hendrerit gravida rutrum. 



{{< img 
    src="/images/gallery/post-xl_3.jpg" 
    title="Sample Image" 
    caption="Image with title, caption, alt, ..." alt="image alt" 
    class="post-img"  
>}}


<br />

##### Otherwise you wrap your where clause in another one to exclude the current post:

```md
This is mutiline code
{{ range first 3 (shuffle (where (where .Site.RegularPages "Section" "blog") "Title" "!=" .Title ))}}
```



Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Pellentesque eu tincidunt tortor aliquam nulla facilisi cras fermentum odio. A erat nam at lectus urna duis. Sed velit dignissim sodales ut eu sem. Lectus urna duis convallis convallis tellus. Diam sit amet nisl suscipit adipiscing bibendum est. Sed felis eget velit aliquet sagittis id consectetur. Vulputate dignissim suspendisse in est ante in nibh mauris cursus. Morbi quis commodo odio aenean. Mollis nunc sed id semper risus in hendrerit gravida rutrum. 

{{< img 
    src="/images/gallery/post-xl_4.jpg" 
    title="Sample Image" 
    caption="Image with title, caption, alt, ..." alt="image alt" 
    class="post-img"  
    width="960px"
>}}

Ac ut consequat semper viverra nam. Hac habitasse platea dictumst vestibulum rhoncus. Amet porttitor eget dolor morbi non. Justo eget magna fermentum iaculis eu non. Id eu nisl nunc mi ipsum faucibus vitae aliquet nec. Aliquam id diam maecenas ultricies. Non sodales neque sodales ut etiam. Amet massa vitae tortor condimentum lacinia quis. Erat imperdiet sed euismod nisi porta. 

Nisl suscipit adipiscing bibendum est ultricies integer quis auctor. Viverra suspendisse potenti nullam ac. Tincidunt id aliquet risus feugiat in.  quam quisque id diam vel. Egestas erat imperdiet sed euismod nisi. Scelerisque felis imperdiet proin ermentum leo vel orci porta non. Ut faucibus pulvinar elementum integer. Fermentum odio eu feugiat pretium nibh ipsum consequat nisl.