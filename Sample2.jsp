<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>画像の水平スクロール</title>
    <link rel="stylesheet" href="Sample2.css">
</head>
<body>
タイトル
    <div class="image-container">
        <img src="img/small_1.jpeg" alt="Image 1" data-info="small_1.jpeg">
        <img src="img/small_2.jpeg" alt="Image 2" data-info="small_2.jpeg">
        <img src="img/small_3.jpeg" alt="Image 3" data-info="small_3.jpeg">
        <img src="img/onion (1).png" alt="Image 4" data-info="onion_1.png">
        <img src="img/egg.png" alt="Image 5" data-info="egg.png">
    </div>
    
     <!-- フォームを追加 -->
    <form id="selectionForm" action="ImageSelectionServlet" method="POST">
        <input type="hidden" id="selectedImages" name="selectedImages" value="">
        <button type="submit">送信</button>
    </form>
    
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const images = document.querySelectorAll('.image-container img');
            let selectedCount = 0;
            const maxSelection = 2;
            const selectedImagesInput = document.getElementById('selectedImages');

            images.forEach(img => {
                img.addEventListener('click', function () {
                    if (this.classList.contains('selected')) {
                        this.classList.remove('selected');
                        selectedCount--;
                    } else {
                    	 if (selectedCount < maxSelection) {
                             this.classList.add('selected');
                             selectedCount++;
                         }
                     }
                     updateSelectedImages();
                 });
             });

             function updateSelectedImages() {
                 const selectedInfos = Array.from(document.querySelectorAll('.image-container img.selected'))
                                           .map(img => img.getAttribute('data-info'))
                                           .join(',');
                 selectedImagesInput.value = selectedInfos;
             }
         });
     </script>
</body>
</html>
