## 2주차 과제 - ScrollView와 StackView, AutoLayout 사용하기😄


오토레이아웃 잡기가 번거로운 뷰지만 스택뷰를 통해 좀 더 편하게 오토레이아웃을 잡을 수 있었다!


### ScrollView에 대한 AutoLayout

스크롤뷰에 대해 오토레이아웃을 잡을 때 화면에 꽉 차게 하고 싶기 때문에 Safe Area가 아닌 SuperView에 대해서 상하좌우를 모두 0으로 잡아줬다. 그렇게 했을 때 예상과 달리 위에 여백이 생겨서 아래와 같이 Content Insets을 Never로 설정해줬당.

<img width="263" alt="스크린샷 2020-10-30 오전 2 55 10" src="https://user-images.githubusercontent.com/42545818/97612988-73147a00-1a5b-11eb-9a37-3bf2a1b41b49.png">

### 스크롤에 따라 위로가기 버튼이 나타나게 하기

우선 ScrollView Delegate를 이용하기 위해 scrollView를 IBOutlet으로 선언해주고, **대리자 위임**과

<img width="503" alt="image" src="https://user-images.githubusercontent.com/42545818/97613501-1bc2d980-1a5c-11eb-9514-15cd443dd335.png">

**채택**을 해주었다.

<img width="526" alt="image" src="https://user-images.githubusercontent.com/42545818/97613654-4ad94b00-1a5c-11eb-8b7b-c9d726b10e28.png">

스크롤할 때 불리는 함수로 scrollViewDidScroll이 있기 때문에 이 함수를 사용해서 스크롤 위치를 나타내는 contentOffset 프로퍼티에 접근해 스크롤에 따라 버튼의 alpha값을 다르게 줘서 사라졌다가 나타났다가 하게 했당.

<img width="535" alt="image" src="https://user-images.githubusercontent.com/42545818/97613887-97bd2180-1a5c-11eb-8332-cd0fd478a4b5.png">

맨 위로 가는 액션은 아까와 마찬가지로 contentOffset.y에 접근해서 0을 할당해줬다!

<img width="402" alt="image" src="https://user-images.githubusercontent.com/42545818/97614150-ed91c980-1a5c-11eb-8ff5-5856b9c1a05a.png">

2주차 과제 끄읏
