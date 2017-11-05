# TableViewStory
Simple TableViewStory App that shows a list of favorite singers

## 기간
2015.11.15

## 구분
개인 프로젝트

## 구현 목적
테이블 뷰와 네비게이션을 기반으로 하여 좋아하는 가수들을 소개하는 앱을 개발하였습니다.

## 기술 설명
- 좋아하는 가수의 행을 선택하면, 선택된 가수에 대한 상세 정보를 제공합니다.
- 상세 정보 페이지는 웹뷰를 이용하여 위키백과 정보 웹페이지를 표시하도록 설정했습니다.

## 구현 기술
- 스토리보드를 이용한 테이블 뷰 내비게이션 구현을 했습니다.
- 선택된 테이블 뷰의 행을 기준으로 컴포넌트 segue를 이용하여 상세 페이지를 표시했습니다.
- segue를 사용할 때 데이터 전송을 위한 메커니즘인 prepareForSegue 메서드를 이용했습니다.

## 스크린샷
![ScreenShot](https://user-images.githubusercontent.com/28954046/32414584-b7e194cc-c26d-11e7-8b1f-6067febeb03b.png)
