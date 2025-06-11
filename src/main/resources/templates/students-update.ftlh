<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
  <title>Student List</title>

  <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>

<body>

  <!-- Begin Nav Bar -->
  <nav class="navbar navbar-expand-lg  navbar-dark" style="background-color: #799351;">
    <a class="navbar-brand" href="/students" style="margin: 10px;">
      <img src="/logo.jpg" alt="" width="80" height="60">
    </a>
    <ul class="nav justify-content-end">
      <li class="nav-item">
        <a class="nav-link active" aria-current="page" href="/students">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Second</a>
      </li>
      <li class="nav-item">
        <#if Session.SPRING_SECURITY_CONTEXT??>
          <a class="nav-link" href="/logout">(${Session.SPRING_SECURITY_CONTEXT.authentication.name}) Sign Out</a>
        </#if>
    </ul>
    </ul>
  </nav>

  <div class="container" style="margin-top: 15px;">
    <h1>${title}</h1>
    <img src="/profile-pictures/${(student.profilePicturePath)!'avatar.png'}" class="card-img-top"
      style="height: 100px; width: 100px;" alt="profile picture">
    <form id="new-student" action="/students/update/${student.studentId?c}" method="post" enctype="multipart/form-data">
      <input type="text" id="studentId" name="studentId" value="${student.studentId?c}" readonly />
      <input type="text" id="name" name="name" value="${student.name}" />
      <input type="email" id="email" name="email" value="${student.email}" />
      <label for="password">Password</label><input type="password" name="password" id="password"
        value="${student.password}">
      <br>
      <input type="text" id="major" name="major" value="${student.major}" />
      <input type="number" id="gpa" name="gpa" step="0.01" value="${student.gpa}" /><br>
      <label for="role"> Role:
      </label>
      <select name="role" id="role">
        <#if student.role??>
          <option selected value="${student.role}">${student.role}</option>
        </#if>
        <option value="USER">Standard</option>
        <option value="MOD">Mod</option>
        <option value="ADMIN">Admin</option>
      </select>

      <label for="profilePicturePath" class="form-label">Current Picture</label>
      <input type="text" id="profilePicturePath" name="profilePicturePath" value="${(student.profilePicturePath)}"
        readonly />
      <input type="file" id="picture" name="picture" />
      <button type="submit" class="btn btn-primary">Save</button>
      <a href="/students/${student.studentId?c}" class="btn btn-outline-danger">Cancel</a>
    </form>

  </div>
</body>

</html>