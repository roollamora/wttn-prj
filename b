<!DOCTYPE html>
<html>
<head>
  <title>Global Lantern News - Israel-Palestine Conflict</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      background-image: url('https://www.onlygfx.com/wp-content/uploads/2021/04/grey-triangle-pattern-seamless-background-1.jpg');
      background-repeat: repeat;
      background-size: contain;
      margin: 0;
      padding: 0;
    }
   .container {
      width: 70%;
    }
    .header {
      background-color: #1976d2;
      margin-left: 45px;

      padding: 10px 20px;
      color: #fff;
      display: flex;
      align-items: center;
    }
    .header h1 {
      font-size: 24px;

      margin: 0;
    }
    .main-title {
      text-align: left;
      font-size: 32px;
      margin-top: 20px;
      margin-left: 50px;
      padding-left: 20px;
      color: #1976d2;
    }
    .news-container {
      width: 80%;
    margin-left: auto;
    margin-right: auto;
      display: flex;
      justify-content: space-between;
    }
    .news {
      width: 33.33%;
      margin-bottom: 0px;
      border: none;
      background-color: transparent;
      padding: 20px;
      transition: width 0.3s ease;
      cursor: pointer;
      box-sizing: border-box;
    }
    .news.expanded {
      width: 66.66%;
    }
    .thumbnail {
      width: 100%;
      max-width: 100%;
      border-radius: 5px;
    }
    .headline {
      font-size: 24px;
      font-weight: bold;
      margin-top: 10px;
      color: #333;
    }
    .expand {
      display: none;
      padding-top: 0px;
    }
    .expanded .expand {
      display: block;
    }
    .article-content {
      align-items: center;

      color: #666;
      line-height: 1.6;
      display: none;
      background-color: #fff;
      padding: 20px;
    }
    .article-content.active {

      display: block;
    }
    .article-bullet-points {
      margin-top: 0px;
      display: none;
      column-count: 2;
      column-gap: 18px;
    }
    .article-bullet-points.active {
      display: block;
    }
    .selected-article-box {
      width: 75%;
    margin-left: auto;
    margin-right: auto;


      align-items: center;

      margin-top: 0px;
      padding: 20px;
      background-color: #fff;
      border: 1px solid #ddd;
    }
    .selected-article-title {
      font-size: 24px;
      font-weight: bold;
      margin-bottom: 0px;
      color: #333;
    }
    .selected-article-content {
      color: #666;
      line-height: 1.6;
      margin-bottom: 20px;
    }
    .selected-article-bullet-points {
            font-size: 18px;

    }
    .selected-article-bullet-column {
      width: 50%;
    }
    .selected-article-bullet-points .bullet-point {
      align-items: center;
      margin-bottom: 10px;
      color: #333;
    }
    .selected-article-bullet-points .bullet-point::before {
      content: "\2022";
      font-size: 18px;
      margin-right: 5px;
      color: #333;
    }
    .selected-article-bullet-points .bullet-point strong {
      font-weight: bold;
            font-size: 20px;

    }
    .arrows {
      position: fixed;
      top: 50%;
      transform: translateY(-50%);
      width: 50px;
      height: 100%;
      background-color: #1976d2;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: center;
      cursor: pointer;
      z-index: 999;
    }
    .arrow-left {
      left: 0;
    }
    .arrow-right {
      right: 0;
    }
  </style>
  <script>
    window.addEventListener('DOMContentLoaded', function() {
      var articles = document.querySelectorAll('.news');
      var selectedArticleBox = document.getElementById('selected-article-box');
      var selectedArticleTitle = document.getElementById('selected-article-title');
      var selectedArticleContent = document.getElementById('selected-article-content');
      var selectedArticleBulletPoints = document.getElementById('selected-article-bullet-points');
      var arrowLeft = document.getElementById('arrow-left');
      var arrowRight = document.getElementById('arrow-right');
      var currentIndex = 0;
      
      function showArticle(index) {
        var selectedArticle = articles[index];
        var expandedArticle = document.querySelector('.news.expanded');
        
        if (expandedArticle) {
          expandedArticle.classList.remove('expanded');
        }
        
        selectedArticle.classList.add('expanded');
        
        articles.forEach(function(article) {
          if (article !== selectedArticle) {
            article.style.width = '16.66%';
          }
        });
        
        selectedArticle.style.width = '66.66%';
        
        var articleContent = selectedArticle.querySelector('.article-content');
        var bulletPoints = selectedArticle.querySelector('.article-bullet-points');
        
        selectedArticleContent.innerHTML = articleContent.innerHTML;
        selectedArticleBulletPoints.innerHTML = bulletPoints.innerHTML;
        
        selectedArticleBox.style.display = 'block';
        var selectedArticleOffset = selectedArticleBox.offsetTop - window.innerHeight + 350;
        window.scrollTo(0, selectedArticleOffset);
      }
      
      arrowLeft.addEventListener('click', function() {
        currentIndex = (currentIndex - 1 + articles.length) % articles.length;
        showArticle(currentIndex);
      });
      
      arrowRight.addEventListener('click', function() {
        currentIndex = (currentIndex + 1) % articles.length;
        showArticle(currentIndex);
      });
      
      articles.forEach(function(article, index) {
        article.addEventListener('click', function() {
          currentIndex = index;
          showArticle(currentIndex);
        });
      });
    });
  </script>
</head>
<body>
  <div class="header">
    <img src="https://i.postimg.cc/tC1cY5dp/Lantern.png" alt="Global Lantern News Logo" style="width: 40px; height: 40px; margin-right: 10px;">
    <h1>Global Lantern News</h1>
  </div>

  <h2 class="main-title" style="padding-left: 20px; color: #1976d2;">Israel-Palestine Conflict</h2>

  <div class="news-container">
    <div class="news">
      <img class="thumbnail" src="https://www.reuters.com/resizer/hw1Po5kbuDX2J3SBlEzZbceANqA=/800x0/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/VQUNJTSONFJEHBVVLC3XCXTB74.jpg" alt="Thumbnail 1">
      <h2 class="headline">A. Settlement Construction</h2>
      <div class="expand">
        <div class="article-content">
          In recent years, settlements have been expanding in the West Bank, with a focus on bolstering security and providing Jewish communities a place to call home.<br><br>
          These settlements play a crucial role in ensuring the security and defense of Israeli citizens. They act as a buffer zone, providing early warning against potential threats and preventing infiltration of terrorists into our cities. It's a matter of safeguarding our people and preserving peace.<br><br>
          Another aspect is the historical and religious connection that Jewish communities have with the West Bank. These lands hold deep meaning for many Israelis, with biblical references and a rich heritage dating back centuries. For them, settlements represent a natural extension of the Jewish homeland.<br><br>
          The construction and development of settlements bring numerous economic benefits to both Israelis and Palestinians alike. They create jobs, stimulate local businesses, and contribute to the overall prosperity of the region. It's about fostering economic growth and improving the lives of all residents.<br><br>
          It's important to note that settlements are built in accordance with Israeli law. The Israeli government carefully approves the construction and expansion of settlements, taking into account security considerations, historical ties, and economic opportunities. The process involves thorough assessments and adheres to legal frameworks.
        </div>
        <div class="article-bullet-points">
          <div class="bullet-point">Israel is expanding its settlements in the West Bank to bolster its security while also providing housing for Jewish communities.</div>
          <div class="bullet-point">The West Bank holds historical and religious significance to the Jewish communities.</div>
          <div class="bullet-point">Both Israelis and Palestinians economically benefit from settlement constructions.</div>
          <div class="bullet-point">Settlement constructions are in accordance with Israeli laws.</div>
        </div>
      </div>
    </div>

    <div class="news">
      <img class="thumbnail" src="https://icg-prod.s3.amazonaws.com/IsrPalReport-3Aug2021-1.jpg" alt="Thumbnail 2">
      <h2 class="headline">B. Civilian Atrocities</h2>
      <div class="expand">
        <div class="article-content">
          The Israeli-Palestinian conflict has sadly witnessed civilian casualties on both sides.<br><br>
          It is deeply saddening to witness civilian casualties in this conflict. Israel takes great care to avoid harm to non-combatants, implementing strict protocols and conducting thorough investigations into any incidents involving civilian casualties. Israel’s goal is always to minimize harm while defending citizens.<br><br>
          It is crucial to understand the threats faced by Israel, such as rocket attacks, suicide bombings, and other forms of terrorism. These threats necessitate measures to protect Israeli civilians and maintain the safety and security of the nation.<br><br>
          It is important to note the efforts made by Israel to protect civilians, including the implementation of advanced defense systems, early warning sirens, and bomb shelters to mitigate the impact of attacks. These measures aim to safeguard the lives of both Israelis and Palestinians.<br><br>
          Civilian atrocities in the Israeli-Palestinian conflict are a heartbreaking reality. It is crucial to understand the complexities of the situation and the efforts made by various stakeholders to minimize harm and protect innocent lives.
        </div>
        <div class="article-bullet-points">
          <div class="bullet-point">Israel takes great care not to harm civilian casualties, implementing strict protocols and conducting thorough investigations.</div>
          <div class="bullet-point">Israel is faced with different forms of security threats which make security a priority for the nation.</div>
        </div>
      </div>
    </div>

    <div class="news">
      <img class="thumbnail" src="https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:eco,dpr_2.0/rockcms/2022-06/220630-israel-parliament-mb-0934-fb8c3a.jpg" alt="Thumbnail 3">
      <h2 class="headline">C. Unequal Political Representation</h2>
      <div class="expand">
        <div class="article-content">
          Israel is a democratic nation that upholds the principles of equality and representation for all its citizens. Arab citizens of Israel have the right to vote, participate in political parties, and even hold seats in the Israeli Knesset. This demonstrates our commitment to inclusivity and fair representation within the political system.<br><br>
          It is important to acknowledge the presence of Arab political parties in the Israeli Knesset. These parties represent the interests of Arab citizens and contribute to the democratic process by voicing their concerns and advocating for their communities' rights. Their participation demonstrates the inclusive nature of Israeli democracy.<br><br>
          While there are ongoing challenges in achieving perfect political representation, Israel has made significant progress in recent years. Initiatives are being implemented to bridge gaps and address concerns raised by minority communities. This includes allocating resources for social and economic development in Arab-majority towns and promoting dialogue between different communities.<br><br>
          It is worth noting that despite the ongoing conflict, there have been instances of cooperation and engagement between Israeli and Palestinian officials. These interactions aim to build trust, foster dialogue, and explore possibilities for a peaceful resolution. Such efforts contribute to the broader goal of fair political representation for all parties involved.
        </div>
        <div class="article-bullet-points">
          <div class="bullet-point">Israel is a democratic nation. .</div>
          <div class="bullet-point">All Israelis have the right to vote and political participation, including Israelis who are ethnic minorities.</div>
          <div class="bullet-point">Arab political parties in the Israeli parliament provide political representation for Arab-Israeli citizens.</div>
          <div class="bullet-point">The Israeli government is actively working on addressing difficulties faced by minority communities, including Arabs.</div>
        </div>
      </div>
    </div>
  </div>
  
  <div class="selected-article-box" id="selected-article-box">
    <div class="arrows arrow-left" id="arrow-left">&lt;</div>
    <div class="selected-article-title" id="selected-article-title"></div>
    <div class="selected-article-content" id="selected-article-content"></div>
    <div class="selected-article-bullet-points" id="selected-article-bullet-points"></div>
    <div class="arrows arrow-right" id="arrow-right">&gt;</div>
  </div>

  <div class="full-width-section">
    <div class="selected-article-title" id="selected-article-title"></div>
    <div class="selected-article-content" id="selected-article-content"></div>
    <div class="selected-article-bullet-points" id="selected-article-bullet-points"></div>
  </div>

</body>
</html>
