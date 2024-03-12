<%--
  Created by IntelliJ IDEA.
  User: Jiangwei
  Date: 2024/3/11
  Time: 18:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>register page</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous">
</head>
<body>
    <div class="container  text-center">
        <form action="registerAsCandidate" method="post" enctype="multipart/form-data" class="p-5 mb-0">
            <label class="mb-4 fw-bold fs-2">Provide your Personal information</label>

            <div class="row g-2">
                <div class="col form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Enter Username" name="username">
                    <label for="floatingInput">Username</label>
                </div>

                <div class="col form-floating mb-3">
                    <input type="password" class="form-control" id="floatingInput" placeholder="Enter Password" name="password">
                    <label for="floatingInput">Password</label>
                </div>
            </div>

            <div class="row g-2 d-flex align-items-stretch mb-3">
                <div class="col form-floating mb-3 d-flex align-items-stretch">
                    <input type="text" class="form-control" id="floatingInput" placeholder="nationality" name="nationality">
                    <label for="floatingInput">nationality</label>
                </div>

                <div class="col mb-3 d-flex align-items-stretch">
                    <select class="form-select w-100" aria-label="select example" name="visaStatus">
                        <option selected disabled>Select your visa status</option>
                        <option value="OPT initial">OPT initial</option>
                        <option value="OPT extend">OPT extend</option>
                        <option value="H1B">H1B</option>
                        <option value="Green Card">Green Card</option>
                    </select>
                </div>
            </div>

            <div class="row row-cols-1">
                <div class="col input-group mb-4">
                    <label class="input-group-text" for="inputGroupFile01">upload photo</label>
                    <input type="file" class="form-control" id="inputGroupFile01" name="photo">
                </div>

                <div class="col input-group mb-4">
                    <label class="input-group-text" for="inputGroupFile01">Upload resume</label>
                    <input type="file" class="form-control" id="inputGroupFile01" name="resume">
                </div>
            </div>

            <div class="col align-self-center">
                <button type="submit" class="btn btn-primary">
                    Register
                </button>
            </div>
        </form>
        <a href="/">Back to Home Page <<</a>
    </div>
</body>
</html>
