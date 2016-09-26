이 과정은 Servlet/JSP로 사용자 관리 시스템을 구현하면서 자바 웹 애플리케이션 개발자가 반드시 알아야할 빌드 도구, logging 라이브러리, validation, 리팩토링 등에 대해 다룬다.

> 이 저장소 코드를 구현하는 전체 과정은 https://goo.gl/86ai5a 에서 볼 수 있다.
> 이 저장소의 소스 코드를 활용하는 방법은 https://youtu.be/IgT_Zq16Mfg 동영상에서 참고할 수 있다.

# 개발 환경 세팅 및 Servlet 기본
### [자바 웹 개발 환경 세팅](https://youtu.be/DNGp6Q9vLwk) 동영상
* JDK 설치
* Eclipse JEE Developers 버전 설치

### [Embedded Tomcat 버전 설치 및 설정](https://youtu.be/jWVlAclnIXo) 동영상
* 웹 애플리케이션을 개발한 후 배포하려면 서버가 필요하다. 이 서버 중의 하나가 tomcat이다. tomcat은 오픈 소스이고, 무료이기 때문에 자바 기반으로 웹 애플리케이션을 개발할 때 많이 사용한다.
* eclipse에서 tomcat 서버를 세팅하고 실행하는 과정을 다룬다.

### [Servlet으로 Hello World 출력하기](https://youtu.be/xCXw8xmmWC4) 동영상
* Servlet은 동적인 웹 페이지를 구현하기 위한 기술 중의 하나이다. 사용자 요청에 "Hello World!"를 응답으로 보내주는 Servlet을 추가하고 실행하는 과정을 다룬다.

### [eclipse relaunch 플러그인 설치](https://youtu.be/OdCR6Y4_HAQ) 동영상
* eclipse에서 tomcat 서버로 개발할 때 java 소스 코드가 변경되면 서버를 재시작해야 한다. 그런데 서버를 재시작하는 것이 은근히 불편한 과정이다. 이 불편한 과정을 해소하는 방법 중 하나가 relaunch 플러그인을 활용하는 방법이다.

### [Client to Server, Server to Client로 데이터 전달](https://youtu.be/RmOD3UZ3VkM) 동영상
* Client와 Server 사이에 데이터를 전달할 필요가 있다. Client에서 HTTP Get 방식으로 데이터를 전달하고, Client에서 전달한 데이터를 Server에서 받아 처리한 후 이 데이터를 활용해 Client에 응답으로 보낼 메시지를 생성하는 과정을 다룬다.

### [Servlet Container와 Servlet 관계](https://youtu.be/aP4Lw3SfffQ) 동영상
* Servlet은 자바 진영에서 동적인 웹 페이지를 개발하기 위한 기술 중의 하나이다. Servlet Container는 Servlet 인스턴스를 생성하고, Servlet을 실행하는 역할을 한다. 오픈 소스 이면서 가장 많이 사용하는 Servlet Container 중의 하나가 Tomcat이다.

# 회원가입 페이지 분석 및 JSP
최신 개발 환경으로 실습할 수 있도록 지원하기 위해 개발 환경 세팅과 소스 코드가 지금까지 진행한 코드 다르다. 이후의 동영상은 찍은 시점이 다르다. 따라서 동영상에 약간의 차이가 있을 수 있다. 하지만 기본적인 사용방법은 같다. 특히 소스 코드가 상당히 많은 분량이 추가될 수 있고, 디렉토리 구조가 다를 수 있다. 이 부분은 https://youtu.be/IgT_Zq16Mfg 동영상을 참고해 세팅한다.

### [회원가입 페이지 요구사항 분석](https://youtu.be/d6k-WJpS2d4) 동영상
* jsp & servlet 학습을 위해 앞으로 개발할 애플리케이션 요구사항 분석
* 메인 페이지와 회원 가입 페이지 jsp 공유
* web.xml의 welcome-file-list 설명

### [Servlet에서 JSP로 전환](https://youtu.be/JE2hNFniPJU) 동영상
* Servlet의 문제점 인식 및 JSP 등장 이유 
* JSP와 Servlet의 관계 
* JSP에서 자바 코드 사용

### [JSP include, get/post](https://youtu.be/KGl70HWfw6w) 동영상
* JSP 중복을 include 구문을 활용해 제거 
* get/post method 차이점 설명 
* 클라이언트에서 서버로 데이터 전달 및 데이터 추출

### [데이터 저장](https://youtu.be/7Zyp79is_jY) 동영상
* 회원가입 데이터 저장을 위한 Database 객체 생성 
* 사용자 데이터 저장을 위한 User 객체 생성 
* sendRedirect를 활용한 페이지 이동

# 회원가입 기능 구현 및 JSP2
### [단위 테스트 기반 개발](https://youtu.be/P3cYfVMdFHY) 동영상 
* 단위 테스트를 활용하지 않을 때의 개발/테스트 과정 설명 
* test source folder 추가 
* Database와 User 객체에 대한 단위 테스트 코드 추가 
* 로그인 기능에 대한 단위 테스트 추가 

### [세션(session)을 활용한 로그인 기능 구현](https://youtu.be/hQulJST8C2c) 동영상
* 정상적인 로그인 기능 구현 
* 로그인 성공 후 session에 정보 저장 
* 로그 아웃 기능 구현

### [예외 처리 및 forward](https://youtu.be/ANhfLsFAmas) 동영상
* jsp에 예외 처리하는 흐름 이해 
* RequestDispatcher.forward()를 활용한 jsp 이동

### [JSP 문제점 및 MVC 기본](https://youtu.be/EfsVt7-ol_I) 동영상 
* JSP만으로 구현했을 때의 이슈 공유 
* 이 문제를 해결하기 위한 역할 분리로 MVC 등장 
* JSP와 Servlet을 병행해서 구현

### [redirect와 forward의 차이](https://youtu.be/PxvrcpZJwGs) 동영상 
* redirect와 foward 방식의 차이 
* 개발할 때 고려할 사항

### [JSTL와 EL(expression language)](https://youtu.be/Sk9-mfKpvtQ) 동영상
* jstl 라이브러리 다운로드 및 프로젝트에 추가 
* jstl 활용해 if/else 구현 
* expression language 활용해 스크립틀릿 코드 제거

# 데이터베이스 연동
### [JDBC 설치 및 학습](https://youtu.be/uI97GlQKcg0) 동영상 
* 데이터베이스가 하는 역할
* 데이터베이스에 데이터베이스와 테이블 생성
* JDBC 드라이버 설치
* 사용자 데이터 추가(insert) 
* Junit 단위 테스트를 통한 JDBC 학습

### [DB에서 데이터 조회](https://youtu.be/ljoePTUVFJU) 동영상 
* 데이터 조회 기능 추가(select) 
* Database를 사용하던 코드가 UserDAO를 사용하도록 구현함.

### [DB 테스트](https://youtu.be/aDUdROOSznE) 동영상 
* 사용하지 않는 Database 클래스 제거 
* 반복 테스트가 가능하도록 사용자 제거 기능 추가 
* DB 반복 테스트가 가능하도록 구현함

