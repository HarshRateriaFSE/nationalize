<html>
  <head>
    <title>Gender Guess</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <style>
      body {
        height: 100%;
      }

      .container {
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
      }
    </style>
  </head>

  <body class="container">
    <form method="post">
      <div class="mb-3">
        <h1 style="color: red">Predict Gender using Name!!!</h1>
        <br />
      </div>
      <div>
        <div class="mb-3">
          <label for="formGroupExampleInput" class="form-label"
            >Enter your Name</label
          >
          <input
            type="text"
            class="form-control"
            id="formGroupExampleInput"
            name="name"
            placeholder="Enter your Name"
          />
        </div>
        <div class="mb-3">
          <input type="submit" class="btn btn-primary" />
        </div>
      </div>
      <div class="mb-3">
        <small>made by harsh rateria...</small>
      </div>
    </form>
    <br />
    <br />
  </body>
</html>
