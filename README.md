# photofolio-feedback
피드백적는란 추가

1901115 박지성 WebProgramming(2) 설계도

 -. 자기 홈 페이지 분석,  설계(UML 기반), 한글 파일로 작성하여 파일로 올리기

포토폴리오 웹사이트에는 메인화면인 Index.html, 내 폰번호, 이메일을 포함한 정보가 들어가 있는 myInfo.html, 내가 그동한 것을 간단히 요약시켜놓은 포토폴리오들이 들어간 whatido.html, 내가 공부한 것을 중간중간 github에 올려놓은 것을 볼 수 있는 My github, 방문한 사람들이 들어와 후기를 남길 수 있는 feedback으로 이루어져있다.

Index.html 검은 화면에 이름과 메뉴을 띄우도록 제작했고 심심해 보이는 화면을 보완하기 위해서 CSS의 애니메이션을 기능을 사용했다.







index.jsp의 메뉴를 상속해서 가져가고, 위치를 상단으로 변경 시켜 주었다. 
메뉴의 세부내용은 아래와 같다

1) myInfo.html
나에 대한 정보가 들어가 있는 페이지이다. 기본적으로 사진, 지금까지 다녀온 학교, 생년월일, 이메일, 주소등을 집어 넣고 후에 필요할시 나의 MBTI나 내 성격의 특징같은 것을 집어 넣을 계획이다.

2) whatido.html
현재까지 스스로 진행한 공부나, 작은 프로젝트같은 것 결과를 바로 볼 수 있는 페이지 이다. 이 페이지는 오픈소스인 fullpage.js를 사용해서 powerpoint같이 화면을 볼 수 있게 만들 예정이다. 이 페이지 안에는 이후에 자세히 설명하겠지만, github에 내가 공부한 프로젝트들을 업로드할때마다, 그중 마음에 드는 것이 있으면 이 페이지에 실시간으로 업로드를 할 계획이다.

3) feedback.jsp
사용자가 방문하여 사용후기를 남길 수 있는 feedback.jsp이다 db구성은 다음과 같다.


id = 정렬을 위해서 auto_increment로 숫자가 자동으로 정렬되게 해놓았다.
title = 제목 입력하는 칸이다
description = 내용을 입력하는 칸이다
created = 등록 버튼을 누른 시간을 저장해놓은 datetime 필드이다.
author_id = 작성자가 입력한 id를 저장하는 칸이다.

4) My github
내 깃허브 링크를 바로 연결시켜 준다. 링크에 접속하면 그동안 내가 공부하며 중간중간 깃허브에 올린 것들이 있다

DB와 서버, 프론트엔드구현은 JSP를 사용했다. node.js가 아닌 JSP를 사용한 이유는 다음과 같다.
JSP는 세밀하게 조정이 가능하며, 성능이 좋게 동적인 content를 구현 할 수가 있다.
또한 많은 공기업 및 사기업등이 JSP를 사용해 서버와 DB를 연동해 구현하므로 추후에 도움이 될것이라 생각했다.
마지막으로 javascript가 아닌 java의 개발실력을 늘리고 싶어서 JSP를 사용해 구현했다.

구현 웹사이트 

