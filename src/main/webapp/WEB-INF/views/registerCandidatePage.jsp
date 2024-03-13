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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
    <div class="container  text-center">
        <form action="registerAsCandidate" method="post" enctype="multipart/form-data" class="p-5 mb-0">
            <label class="mb-4 fw-bold fs-2">Provide Candidate information</label>

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

            <div class="row g-2">
                <div class="col form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Enter FirstName" name="firstName">
                    <label for="floatingInput">FirstName</label>
                </div>

                <div class="col form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Enter LastName" name="lastName">
                    <label for="floatingInput">LastName</label>
                </div>
            </div>

            <div class="row g-2">
                <div class="col form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Enter Address" name="address">
                    <label for="floatingInput">Address</label>
                </div>
            </div>

            <div class="row g-2 d-flex align-items-stretch">
                <div class="col form-floating mb-3 d-flex align-items-stretch">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Enter Phone" name="phone">
                    <label for="floatingInput">Phone</label>
                </div>

                <div class="col d-flex align-items-stretch nput-group date mb-3">
                    <input type="text" class="form-control datepicker" placeholder="Your Birthdate" name="dob">
                    <div class="input-group-addon">
                        <span class="glyphicon glyphicon-th"></span>
                    </div>
                </div>
            </div>

            <div class="row g-2">
                <div class="col form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Enter Country" name="country">
                    <label for="floatingInput">Country</label>
                </div>

                <div class="col form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Enter Zipcode" name="zipcode">
                    <label for="floatingInput">Zipcode</label>
                </div>
            </div>

            <div class="row g-2">
                <div class="col form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Enter City" name="city">
                    <label for="floatingInput">City</label>
                </div>

                <div class="col form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Enter State" name="state">
                    <label for="floatingInput">State</label>
                </div>
            </div>

            <div class="row g-2">
                <div class="col form-floating mb-3">
                    <input type="email" class="form-control" id="floatingInput" placeholder="Enter Email" name="email">
                    <label for="floatingInput">Email</label>
                </div>

                <div class="col form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Enter InterviewStatus" name="interviewStatus">
                    <label for="floatingInput">InterviewStatus</label>
                </div>
            </div>

            <div class="row g-2 d-flex align-items-stretch">
                <div class="col form-floating mb-3 d-flex align-items-stretch">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Enter CreateBy" name="createBy">
                    <label for="floatingInput">CreateBy</label>
                </div>

                <div class="col d-flex align-items-stretch nput-group date mb-3">
                    <input type="text" class="form-control datepicker" placeholder="Create On" name="createOn">
                    <div class="input-group-addon">
                        <span class="glyphicon glyphicon-th"></span>
                    </div>
                </div>
            </div>

            <div class="row g-2 d-flex align-items-stretch">
                <div class="col form-floating mb-3 d-flex align-items-stretch">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Last Update By" name="lastUpdateBy">
                    <label for="floatingInput">Last Update By</label>
                </div>

                <div class="col d-flex align-items-stretch nput-group date mb-3">
                    <input type="text" class="form-control datepicker" placeholder="Last Update On" name="lastUpdateOn">
                    <div class="input-group-addon">
                        <span class="glyphicon glyphicon-th"></span>
                    </div>
                </div>
            </div>

            <div class="row g-2 d-flex align-items-stretch">
                <div class="col form-floating mb-3 d-flex align-items-stretch">
                    <input type="text" class="form-control" id="floatingInput" placeholder="Interview By" name="interviewBy">
                    <label for="floatingInput">Interview By</label>
                </div>

                <div class="col d-flex align-items-stretch nput-group date mb-3">
                    <input type="text" class="form-control datepicker" placeholder="Interview On" name="interviewOn">
                    <div class="input-group-addon">
                        <span class="glyphicon glyphicon-th"></span>
                    </div>
                </div>
            </div>

            <div class="row g-2 d-flex align-items-stretch">
                <div class="col mb-3 d-flex align-items-stretch" style="height: 58px">
                    <select class="form-select w-100" aria-label="select example" name="status">
                        <option selected disabled>Select status</option>
                        <option value="onboarding">onboarding</option>
                        <option value="pending">pending</option>
                        <option value="rejected">rejected</option>
                        <option value="selected">selected</option>
                    </select>
                </div>

                <div class="col mb-3 d-flex align-items-stretch">
                    <select class="form-select w-100" aria-label="select example" name="progress">
                        <option selected disabled>Select progress</option>
                        <option value="training">training</option>
                        <option value="marketing">marketing</option>
                    </select>
                </div>
            </div>

            <div class="row g-2 d-flex align-items-stretch">
                <div class="col mb-3 d-flex align-items-stretch" style="height: 58px">
                    <select class="form-select w-100" aria-label="select example" name="role">
                        <option selected disabled>Select role</option>
                        <option value="Candidate">Candidate</option>
                    </select>
                </div>

                <div class="col mb-3 d-flex align-items-stretch">
                    <select class="form-select w-100" aria-label="select example" name="batch">
                        <option selected disabled>Select batch</option>
                        <option value="Java">Java</option>
                        <option value="FrontEnd">FrontEnd</option>
                        <option value="BackEnd">BackEnd</option>
                    </select>
                </div>
            </div>

            <div class="row g-2 d-flex align-items-stretch">
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
                    <input type="file" class="form-control" id="inputGroupFile01" name="updatePhoto">
                </div>

                <div class="col input-group mb-4">
                    <label class="input-group-text" for="inputGroupFile01">Upload resume</label>
                    <input type="file" class="form-control" id="inputGroupFile01" name="updateResume">
                </div>
            </div>

            <div class="form-floating mb-4">
                <textarea class="form-control" placeholder="feedback" id="floatingTextarea2"  name="feedback" style="height: 100px"></textarea>
                <label for="floatingTextarea2">feedback</label>
            </div>

            <div class="col align-self-center">
                <button type="submit" class="btn btn-primary">
                    Register
                </button>
            </div>
        </form>
        <a href="/">Back to Home Page <<</a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
    <script>
      $(document).ready(function(){
        $('.datepicker').datepicker({
          format: 'dd-mm-yyyy',
          autoclose: true
        });
      });
    </script>
</body>
</html>
