## 2주차 과제 - ScrollView와 StackView, AutoLayout 사용하기😄


오토레이아웃 잡기가 번거로운 뷰지만 스택뷰를 통해 좀 더 편하게 오토레이아웃을 잡을 수 있었다!


### ScrollView에 대한 AutoLayout

스크롤이 네비게이션바를 제외하고 되기 때문에 Scrollview와 Superview에 대한 Top constraint을 Safearea 기준이라면 44, Superview 기준이라면 88로 잡아줬다.

### 스크롤에 따라 위로가기 버튼이 나타나게 하기

우선 ScrollView Delegate를 이용하기 위해 scrollView를 IBOutlet으로 선언해주고, **대리자 위임**과

<img width="503" alt="image" src="https://user-images.githubusercontent.com/42545818/97613501-1bc2d980-1a5c-11eb-9514-15cd443dd335.png">

**채택**을 해주었다.

<img width="526" alt="image" src="https://user-images.githubusercontent.com/42545818/97613654-4ad94b00-1a5c-11eb-8b7b-c9d726b10e28.png">

스크롤할 때 불리는 함수로 scrollViewDidScroll이 있기 때문에 이 함수를 사용해서 스크롤 위치를 나타내는 contentOffset 프로퍼티에 접근해 스크롤에 따라 버튼의 alpha값을 다르게 줘서 사라졌다가 나타났다가 하게 했당.

<img width="397" alt="image" src="https://user-images.githubusercontent.com/42545818/97617477-2c298300-1a61-11eb-9c11-7dd6a33523c5.png">

맨 위로 가는 액션은 아까와 마찬가지로 contentOffset.y에 접근해서 0을 할당해줬다!

<img width="402" alt="image" src="https://user-images.githubusercontent.com/42545818/97614150-ed91c980-1a5c-11eb-8ff5-5856b9c1a05a.png">

---



<img width="300" alt="image" src="https://user-images.githubusercontent.com/42545818/97619876-1ff2f500-1a64-11eb-8485-2f8ccf9e6ad1.gif">


2주차 과제 끄읏
