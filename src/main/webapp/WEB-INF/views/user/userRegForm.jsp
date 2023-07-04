<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>회원가입 화면</title>
    <link rel="stylesheet" href="/css/table.css"/>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script type="text/javascript" src="/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">



        // 카카오 우편번호 조회 API 호출
        function kakaoPost(f) {
            new daum.Postcode({
                oncomplete: function (data) {

                    // Kakao에서 제공하는 data는 JSON구조로 주소 조회 결과값을 전달함
                    // 주요 결과값
                    // 주소 : data.address
                    // 우편번호 : data.zonecode
                    let address = data.address; // 주소
                    let zonecode = data.zonecode; // 우편번호
                    f.addr1.value = "(" + zonecode + ")" + address
                }
            }).open();
        }

        //회원가입 정보의 유효성 체크하기
        function doSubmit(f) {

            if (f.userId.value === "") {
                alert("아이디를 입력하세요.");
                f.userId.focus();
                return;
            }

            if (userIdCheck !== "N") {
                alert("아이디 중복 체크 및 중복되지 않은 아이디로 가입 바랍니다.");
                f.userId.focus();
                return;
            }

            if (f.userName.value === "") {
                alert("이름을 입력하세요.");
                f.userName.focus();
                return;
            }

            if (f.password.value === "") {
                alert("비밀번호를 입력하세요.");
                f.password.focus();
                return;
            }

            if (f.password2.value === "") {
                alert("비밀번호확인을 입력하세요.");
                f.password2.focus();
                return;
            }

            if (f.password.value !== f.password2.value) {
                alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
                f.password.focus();
                return;
            }

            if (f.email.value === "") {
                alert("이메일을 입력하세요.");
                f.email.focus();
                return;
            }

            if (f.authNumber.value === "") {
                alert("이메일 인증번호를 입력하세요.");
                f.authNumber.focus();
                return;
            }

            if (f.authNumber.value != emailAuthNumber) {
                alert("이메일 인증번호가 일치하지 않습니다.");
                f.authNumber.focus();
                return;
            }

            if (f.addr1.value === "") {
                alert("주소를 입력하세요.");
                f.addr1.focus();
                return;
            }

            if (f.addr2.value === "") {
                alert("상세주소를 입력하세요.");
                f.addr2.focus();
                return;
            }

        }

    </script>
</head>
<body>
<h2>회원 가입하기</h2>
<hr/>
<br/>
<form action="/user/userRegProc" method="post" id="f" onsubmit="doSubmit(f)">
    <div class="divTable minimalistBlack">
        <div class="divTableBody">
            <div class="divTableRow">
                <div class="divTableCell">* 아이디
                </div>
                <div class="divTableCell">
                    <input type="text" name="userId" style="width:80%" placeholder="아이디"/>
                </div>
            </div>
            <div class="divTableRow">
                <div class="divTableCell">* 이름
                </div>
                <div class="divTableCell">
                    <input type="text" name="userName" style="width:95%" placeholder="이름"/>
                </div>
            </div>
            <div class="divTableRow">
                <div class="divTableCell">* 비밀번호
                </div>
                <div class="divTableCell">
                    <input type="password" name="password" style="width:95%" placeholder="비밀번호"/>
                </div>
            </div>
            <div class="divTableRow">
                <div class="divTableCell">* 비밀번호확인
                </div>
                <div class="divTableCell">
                    <input type="password" name="password2" style="width:95%" placeholder="비밀번호 확인"/>
                </div>
            </div>
            <div class="divTableRow">
                <div class="divTableCell">* 이메일
                </div>
                <div class="divTableCell">
                    <input type="email" name="email" style="width:40%" placeholder="이메일주소"/>
                </div>
            </div>
            <div class="divTableRow">
                <div class="divTableCell">* 주소
                </div>
                <div class="divTableCell">
                    <input type="text" name="addr1" style="width:85%" placeholder="주소"/>
                    <button id="btnAddr" type="button">우편번호</button>
                </div>
            </div>
            <div class="divTableRow">
                <div class="divTableCell">* 상세 주소
                </div>
                <div class="divTableCell">
                    <input type="text" name="addr2" style="width:95%" placeholder="상세주소"/>
                </div>
            </div>
        </div>
    </div>
    <div>
        <button id="btnSend" type="submit">회원가입</button>
    </div>
</form>
</body>
</html>