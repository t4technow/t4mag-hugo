---
title: "{{ replace .Name "-" " " | title }}"

date: {{ .Date }}
url: /{{ .Name }}/

featured_image: {{ .Name }}.jpg

category: downloads
tags:
    - crack
    - android
    - windows

draft: false
featured: false
pinned: false
---

{{< img 
    src="/images/gallery/{{ .Name }}.jpg" 
    title="Sample Image" 
    caption="Image with title, caption, alt, ..." 
    alt="image alt" 
    class="post-img"  
>}}



















{{< youtube 00000000000 >}}