<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %><!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Cal</title>
</head>

<body>
<h1>계산기</h1>
<script type="text/javascript">
    var num = prompt("숫자를 입력하세요 : ", "");
    var cross = prompt("연산자를 입력하세요 : ", "");
    var num2 = prompt("숫자를 입력하세요 : ", "");

    switch (cross) {
        case "+":
            document.write(parseInt(num) + parseInt(num2));
            break;
        case "-":
            document.write(parseInt(num) - parseInt(num2));
            break;
        case "*":
            document.write(parseInt(num) * parseInt(num2));
            break;
        case "/":
            document.write(parseFloat(num) / parseInt(num2));
            break;
        case "%":
            document.write(parseInt(num) % parseInt(num2));
            break;
        default:
            document.write("잘못 입력했습니다.");
    }
</script>
</body></html>
