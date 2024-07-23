<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body id="b1">
<form action="register" align="center">
<div class="form">
      <div class="title">Welcome</div>
      <div class="subtitle">Insert data below!</div>

      <div class="input-container ic1">
        <input placeholder="" type="text" class="input" id="firstname" name="rno">
        <div class="cut"></div>
        <label class="iLabel" for="firstname">Roll Number</label>
      </div>

      <div class="input-container ic2">
        <input placeholder="" type="text" class="input" id="lastname" name="uname">
        <div class="cut"></div>
        <label class="iLabel" for="lastname">Name</label>
      </div>
      <div class="input-container ic2">
        <input placeholder="" type="text" class="input" id="email" name="marks">
        <div class="cut cut-short"></div>
        <label class="iLabel" for="email">Marks</label>
      </div>
         <div class="input-container ic2">
        <input placeholder="" type="text" class="input" id="email" name="mono">
        <div class="cut cut-short"></div>
        <label class="iLabel" for="email">Mobile</label>
      </div>
         <div class="input-container ic2">
        <input placeholder="" type="text" class="input" id="email" name="address">
        <div class="cut cut-short"></div>
        <label class="iLabel" for="email">Address</label>
      </div>
      <button class="submit" type="text">submit</button>
    </div>
    </form>
</body>
<style>
#b1
{
 background-color: #15172b;
}
.form {
position:relative;
left:630px;
  background-color: #15172b;
  border-radius: 20px;
  box-sizing: border-box;
  height: 700px;
  padding: 20px;
  width: 320px;
}

.title {
  color: #eee;
  font-family: sans-serif;
  font-size: 36px;
  font-weight: 600;
  margin-top: 30px;
}

.subtitle {
  color: #eee;
  font-family: sans-serif;
  font-size: 16px;
  font-weight: 600;
  margin-top: 10px;
}

.input-container {
  height: 50px;
  position: relative;
  width: 100%;
}

.ic1 {
  margin-top: 40px;
}

.ic2 {
  margin-top: 30px;
}

.input {
  background-color: #303245;
  border-radius: 12px;
  border: 0;
  box-sizing: border-box;
  color: #eee;
  font-size: 18px;
  height: 100%;
  outline: 0;
  padding: 4px 20px 0;
  width: 100%;
}

.cut {
  background-color: #15172b;
  border-radius: 10px;
  height: 20px;
  left: 20px;
  position: absolute;
  top: -20px;
  transform: translateY(0);
  transition: transform 200ms;
  width: 76px;
}

.cut-short {
  width: 50px;
}

.iLabel {
  color: #65657b;
  font-family: sans-serif;
  left: 20px;
  line-height: 14px;
  pointer-events: none;
  position: absolute;
  transform-origin: 0 50%;
  transition: transform 200ms, color 200ms;
  top: 20px;
}

.input:focus ~ .cut {
  transform: translateY(8px);
}

.input:focus ~ .iLabel {
  transform: translateY(-30px) translateX(10px) scale(0.75);
}

.input:not(:focus) ~ .iLabel {
  color: #808097;
}

.input:focus ~ .iLabel {
  color: #dc2f55;
}

.submit {
  background-color: #08d;
  border-radius: 12px;
  border: 0;
  box-sizing: border-box;
  color: #eee;
  cursor: pointer;
  font-size: 18px;
  height: 50px;
  margin-top: 38px;
  text-align: center;
  width: 100%;
}
.submit:active {
  background-color: #06b;
}
</style>
</html>
